define dso_local i32 @foo(i32 noundef %a, i32 noundef %b) local_unnamed_addr {
entry:
  %cmp = icmp eq i32 %a, 7
  %xor = xor i32 %a, 7
  %0 = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %xor, i1 true)
  %sub = sub nuw nsw i32 32, %0
  %cond = select i1 %cmp, i32 %b, i32 %sub
  ret i32 %cond
}
