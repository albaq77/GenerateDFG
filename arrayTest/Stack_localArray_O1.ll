; ModuleID = 'Stack_LocalArray.c'
source_filename = "Stack_LocalArray.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"\E6\A0\B8\E5\BF\83\E5\8F\98\E9\87\8F\EF\BC\9A\0Aa=%d\0Ab=%d\0Ac=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\E4\B8\AD\E9\97\B4\E5\8F\98\E9\87\8F\EF\BC\9Ax=%d y=%d z=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\E5\85\B6\E4\BB\96\E5\8F\98\E9\87\8F\EF\BC\9Avar4=%d var5=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"array: localArray[%d]=%d\0A\00", align 1
@main.hot_data.0 = internal unnamed_addr global i32 0, align 4
@main.hot_data.2 = internal unnamed_addr global i32 0, align 4
@main.hot_data.4 = internal unnamed_addr global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @main() local_unnamed_addr #0 {
entry:
  %localArray = alloca [10 x i32], align 16
  %call = tail call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  tail call void @srand(i32 %conv) #3
  %call1 = tail call i32 @rand() #3
  %rem = srem i32 %call1, 100
  store i32 %rem, i32* @main.hot_data.0, align 4, !tbaa !2
  %call2 = tail call i32 @rand() #3
  %rem3 = srem i32 %call2, 100
  store i32 %rem3, i32* @main.hot_data.2, align 4, !tbaa !7
  %call4 = tail call i32 @rand() #3
  %rem5 = srem i32 %call4, 100
  store i32 %rem5, i32* @main.hot_data.4, align 4, !tbaa !8
  %call6 = tail call i32 @rand() #3
  %call8 = tail call i32 @rand() #3
  %call10 = tail call i32 @rand() #3
  %call12 = tail call i32 @rand() #3
  %call14 = tail call i32 @rand() #3
  %call16 = tail call i32 @rand() #3
  %call18 = tail call i32 @rand() #3
  %0 = bitcast [10 x i32]* %localArray to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #3
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %rem7 = srem i32 %call6, 100
  %rem9 = srem i32 %call8, 100
  %rem11 = srem i32 %call10, 100
  %rem13 = srem i32 %call12, 100
  %rem15 = srem i32 %call14, 100
  %rem17 = srem i32 %call16, 100
  %rem19 = srem i32 %call18, 100
  %rem68 = srem i32 %rem9, 10
  br label %for.body28

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv142 = phi i64 [ 0, %entry ], [ %indvars.iv.next143, %for.body ]
  %call21 = tail call i32 @rand() #3
  %rem22 = srem i32 %call21, 100
  %add = add nsw i32 %rem22, 1
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %localArray, i64 0, i64 %indvars.iv142
  store i32 %add, i32* %arrayidx, align 4, !tbaa !9
  %indvars.iv.next143 = add nuw nsw i64 %indvars.iv142, 1
  %exitcond144 = icmp eq i64 %indvars.iv.next143, 10
  br i1 %exitcond144, label %for.cond.cleanup, label %for.body

for.cond.cleanup27:                               ; preds = %for.inc73
  %1 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %2 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %3 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  %call76 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %1, i32 %2, i32 %3)
  %call80 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %mid_vars.sroa.0.1, i32 %rem9, i32 %mid_vars.sroa.10128.1)
  %call81 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %var4.1, i32 %var5.1)
  br label %for.body87

for.body28:                                       ; preds = %for.inc73, %for.cond.cleanup
  %i23.0139 = phi i32 [ 0, %for.cond.cleanup ], [ %inc74, %for.inc73 ]
  %local2.0138 = phi i32 [ %rem19, %for.cond.cleanup ], [ %local2.1, %for.inc73 ]
  %mid_vars.sroa.10128.0137 = phi i32 [ undef, %for.cond.cleanup ], [ %mid_vars.sroa.10128.1, %for.inc73 ]
  %mid_vars.sroa.0.0136 = phi i32 [ %rem7, %for.cond.cleanup ], [ %mid_vars.sroa.0.1, %for.inc73 ]
  %var1.0135 = phi i32 [ %rem11, %for.cond.cleanup ], [ %var1.1, %for.inc73 ]
  %var5.0134 = phi i32 [ undef, %for.cond.cleanup ], [ %var5.1, %for.inc73 ]
  %var4.0133 = phi i32 [ undef, %for.cond.cleanup ], [ %var4.1, %for.inc73 ]
  %4 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %mul = mul nsw i32 %4, 3
  %5 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  %div = sdiv i32 %5, 2
  %sub = sub nsw i32 %mul, %div
  store i32 %sub, i32* @main.hot_data.0, align 4, !tbaa !2
  %add29 = add nsw i32 %sub, %4
  %rem30 = srem i32 %add29, 100
  store i32 %rem30, i32* @main.hot_data.4, align 4, !tbaa !8
  %or = or i32 %rem30, 1
  %add31 = add nsw i32 %or, %rem17
  store i32 %add31, i32* @main.hot_data.2, align 4, !tbaa !7
  %rem34 = urem i32 %i23.0139, 10
  %6 = zext i32 %rem34 to i64
  %arrayidx36 = getelementptr inbounds [10 x i32], [10 x i32]* %localArray, i64 0, i64 %6
  %7 = load i32, i32* %arrayidx36, align 4, !tbaa !9
  %add37 = add nsw i32 %add31, %7
  store i32 %add37, i32* %arrayidx36, align 4, !tbaa !9
  %rem38 = urem i32 %i23.0139, 100
  %cmp39 = icmp eq i32 %rem38, 0
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %for.body28
  %add43 = add nsw i32 %mid_vars.sroa.0.0136, %rem9
  %mul44 = mul nsw i32 %local2.0138, %add43
  %shr = ashr i32 %mul44, 1
  %add46 = add nsw i32 %sub, %shr
  %call48 = tail call i32 @rand() #3
  %rem49 = srem i32 %call48, 5
  %add50 = add nsw i32 %rem49, %rem17
  %rem51 = srem i32 %add50, 100
  %8 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add54 = add i32 %add37, %shr
  %add58 = add i32 %add54, %8
  store i32 %add58, i32* %arrayidx36, align 4, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body28
  %mid_vars.sroa.0.1 = phi i32 [ %add46, %if.then ], [ %mid_vars.sroa.0.0136, %for.body28 ]
  %mid_vars.sroa.10128.1 = phi i32 [ %mul44, %if.then ], [ %mid_vars.sroa.10128.0137, %for.body28 ]
  %local2.1 = phi i32 [ %rem51, %if.then ], [ %local2.0138, %for.body28 ]
  %rem60 = urem i32 %i23.0139, 1000
  %cmp61 = icmp eq i32 %rem60, 0
  br i1 %cmp61, label %if.then63, label %for.inc73

if.then63:                                        ; preds = %if.end
  %add64 = add nsw i32 %var1.0135, %rem13
  %mul65 = mul nsw i32 %add64, %rem15
  %call69 = tail call i32 @rand() #3
  %rem70 = srem i32 %call69, 5
  %add71 = add nsw i32 %rem70, %rem68
  br label %for.inc73

for.inc73:                                        ; preds = %if.end, %if.then63
  %var4.1 = phi i32 [ %mul65, %if.then63 ], [ %var4.0133, %if.end ]
  %var5.1 = phi i32 [ %rem9, %if.then63 ], [ %var5.0134, %if.end ]
  %var1.1 = phi i32 [ %add71, %if.then63 ], [ %var1.0135, %if.end ]
  %inc74 = add nuw nsw i32 %i23.0139, 1
  %exitcond141 = icmp eq i32 %inc74, 40000
  br i1 %exitcond141, label %for.cond.cleanup27, label %for.body28

for.cond.cleanup86:                               ; preds = %for.body87
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #3
  ret i32 0

for.body87:                                       ; preds = %for.body87, %for.cond.cleanup27
  %indvars.iv = phi i64 [ 0, %for.cond.cleanup27 ], [ %indvars.iv.next, %for.body87 ]
  %arrayidx89 = getelementptr inbounds [10 x i32], [10 x i32]* %localArray, i64 0, i64 %indvars.iv
  %9 = load i32, i32* %arrayidx89, align 4, !tbaa !9
  %10 = trunc i64 %indvars.iv to i32
  %call90 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %10, i32 %9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond, label %for.cond.cleanup86, label %for.body87
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare void @srand(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !5, i64 4, !4, i64 68, !5, i64 72, !4, i64 136}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!3, !4, i64 68}
!8 = !{!3, !4, i64 136}
!9 = !{!4, !4, i64 0}
