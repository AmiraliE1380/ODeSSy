#pragma once
// =====================================================================
// VerdictCache -- per-function verdict cache (HANDOFF §13.5).
//
// An unchanged function reuses its earlier decisions (removed checks,
// guards) instead of being solved again. The key is SHA-256 over a
// canonical serialization of everything a decision can depend on: the
// function itself (names stripped, debug info dropped, metadata and
// attribute groups printed by content), what it sees outside itself
// (callee declarations, referenced globals, data layout, triple), and the
// configuration (knobs, encoder version, LLVM and Z3 versions). The store
// keeps the canonical text next to the payload and compares it on a hit,
// so a hash collision can never apply another function's decisions.
// =====================================================================
#include <string>

namespace llvm { class Function; }

namespace odessy {

// oracle-pass<cache=DIR>: the store; empty = cache off.
inline std::string CacheDir;
// oracle-pass<cache-keys>: print "[cache-key] <function> <key>" per
// function with checks (key tests; no lookup, no store).
inline bool CacheKeysEnabled = false;
// The knob string that can change decisions: sorted, without threads,
// profiling and cache knobs. Set by the pass parser.
inline std::string CacheKnobs;

// The canonical serialization of F and its context (the cache's identity
// notion). Does not modify F: works on a temporary clone.
std::string canonicalForm(llvm::Function &F);

// Lower-case hex SHA-256 of S.
std::string sha256Hex(const std::string &S);

// Directory store, one file per key: "<canonical text>\n\0<payload>".
// lookup() returns false on a miss, an unreadable or corrupt file, or a
// canonical-text mismatch (a hash collision). store() writes atomically
// (temp file + rename), so concurrent compilers sharing DIR are safe.
bool cacheLookup(const std::string &Key, const std::string &Canon, std::string &Payload);
void cacheStore(const std::string &Key, const std::string &Canon, const std::string &Payload);

} // namespace odessy
