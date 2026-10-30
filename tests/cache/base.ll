; Verdict-cache key tests (HANDOFF §13.5): two functions with one check each.
@K = constant i32 7
@G = global i32 3

define i32 @f(ptr %p, i32 %x) {
entry:
  %v = load i32, ptr %p, align 4, !range !0
  %k = load i32, ptr @K, align 4
  %a = add i32 %v, %k
  %s = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %a, i32 5)
  %o = extractvalue { i32, i1 } %s, 1
  br i1 %o, label %trap, label %ok

trap:
  call void @llvm.ubsantrap(i8 0)
  unreachable

ok:
  %r = extractvalue { i32, i1 } %s, 0
  %c = call i32 @g(i32 %r)
  %m = mul nsw i32 %c, 3
  ret i32 %m
}

define i32 @h(i32 %y) {
entry:
  %gv = load i32, ptr @G, align 4
  %s = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %y, i32 %gv)
  %o = extractvalue { i32, i1 } %s, 1
  br i1 %o, label %trap, label %ok

trap:
  call void @llvm.ubsantrap(i8 1)
  unreachable

ok:
  %r = extractvalue { i32, i1 } %s, 0
  ret i32 %r
}

declare i32 @g(i32) nounwind
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32)
declare { i32, i1 } @llvm.smul.with.overflow.i32(i32, i32)
declare void @llvm.ubsantrap(i8 immarg) cold noreturn nounwind

!0 = !{i32 0, i32 100}
