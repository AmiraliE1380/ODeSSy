#include "Scheduler.h"

#include <atomic>
#include <thread>
#include <vector>

namespace odessy {

void FactGate::acquire(std::size_t Ticket) {
    std::unique_lock<std::mutex> L(M);
    CV.wait(L, [&] { return Next == Ticket; });
}

void FactGate::release(std::size_t Ticket) {
    {
        std::lock_guard<std::mutex> L(M);
        Next = Ticket + 1;   // strict +1: every job passes exactly once
    }
    CV.notify_all();
}

void runJobs(std::size_t NumThreads, std::size_t NumJobs,
             const std::function<void(std::size_t)> &Fn) {
    if (NumJobs == 0)
        return;

    if (NumThreads <= 1) {
        // Serial reference path: identical to the pre-Level-2 pass
        // (same job order, same gate passage order, no threads at all).
        for (std::size_t I = 0; I < NumJobs; ++I)
            Fn(I);
        return;
    }

    std::atomic<std::size_t> NextJob{0};
    auto Worker = [&] {
        for (;;) {
            std::size_t I = NextJob.fetch_add(1, std::memory_order_relaxed);
            if (I >= NumJobs)
                return;
            Fn(I);
        }
    };

    std::size_t N = NumThreads < NumJobs ? NumThreads : NumJobs;
    std::vector<std::thread> Pool;
    Pool.reserve(N);
    for (std::size_t T = 0; T < N; ++T)
        Pool.emplace_back(Worker);
    for (std::thread &T : Pool)
        T.join();
}

} // namespace odessy
