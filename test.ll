define dso_local range(i32 -1, 32) i32 @mask(i32 noundef %start, i32 noundef %end) local_unnamed_addr {
entry:
  %sub = sub i32 %end, %start
  %0 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %sub, i32 1)
  %math = extractvalue { i32, i1 } %0, 0
  %ov = extractvalue { i32, i1 } %0, 1
  %1 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %math, i1 true)
  %sub1 = xor i32 %1, 31
  %t.0 = select i1 %ov, i32 %sub, i32 %sub1
  ret i32 %t.0
}
