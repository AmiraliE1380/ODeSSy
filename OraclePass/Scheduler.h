#pragma once
// =====================================================================
// Scheduler -- Level-2 threading MECHANISM (no ODeSSy policy in here).
//
// Two pieces:
//
//  * runJobs(N, K, Fn): run Fn(0..K-1) on up to N workers. Jobs are
//    CLAIMED in strictly increasing index order (single atomic
//    counter); N <= 1 degenerates to a plain serial loop, which is the
//    bit-identical reference behavior.
//
//  * FactGate: a ticket turnstile that forces the heavy tier's LVI /
//    ScalarEvolution queries to happen in discovery order. Those
//    analyses are lazily memoized (queries WRITE to internal caches),
//    so unsynchronized access is a data race; a plain mutex would fix
//    safety but leave query ORDER schedule-dependent, and LVI's
//    precision can depend on query order. The gate gives both:
//    thread-safety and THREADS-independent, serial-identical results.
//
//    Protocol: every job must acquire(Index) then release(Index)
//    EXACTLY once, in that order, even jobs that have nothing to ask
//    (pass-through) -- the gate advances by +1 per ticket.
//
//    No-deadlock argument: tickets are claimed in increasing order, so
//    when a worker holding job i waits at the gate, every job j < i is
//    either finished or held by some other worker; the smallest
//    unfinished-gate job never waits (all smaller tickets already
//    passed) and nothing in encode blocks, so the gate always advances.
//    Corollary: release() must NOT be preceded by any wait on a higher
//    ticket -- keep the acquire/release window minimal (facts only).
// =====================================================================
#include <condition_variable>
#include <cstddef>
#include <functional>
#include <mutex>

namespace odessy {

class FactGate {
    std::mutex M;
    std::condition_variable CV;
    std::size_t Next = 0;

public:
    void acquire(std::size_t Ticket);   // blocks until Next == Ticket
    void release(std::size_t Ticket);   // Next = Ticket + 1, wakes waiters
};

// Fn must be exception-fenced by the caller: an exception escaping a
// worker thread would std::terminate the whole opt process.
void runJobs(std::size_t NumThreads, std::size_t NumJobs,
             const std::function<void(std::size_t)> &Fn);

} // namespace odessy
