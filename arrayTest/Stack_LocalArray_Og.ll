; ModuleID = 'Stack_LocalArray.c'
source_filename = "Stack_LocalArray.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@localArray = common local_unnamed_addr global [10 x [10 x i32]] zeroinitializer, align 16
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
  %call = tail call i64 @time(i64* null) #2
  %conv = trunc i64 %call to i32
  tail call void @srand(i32 %conv) #2
  %call1 = tail call i32 @rand() #2
  %rem = srem i32 %call1, 100
  store i32 %rem, i32* @main.hot_data.0, align 4, !tbaa !2
  %call2 = tail call i32 @rand() #2
  %rem3 = srem i32 %call2, 100
  store i32 %rem3, i32* @main.hot_data.2, align 4, !tbaa !7
  %call4 = tail call i32 @rand() #2
  %rem5 = srem i32 %call4, 100
  store i32 %rem5, i32* @main.hot_data.4, align 4, !tbaa !8
  %call6 = tail call i32 @rand() #2
  %call8 = tail call i32 @rand() #2
  %call10 = tail call i32 @rand() #2
  %call12 = tail call i32 @rand() #2
  %call14 = tail call i32 @rand() #2
  %call16 = tail call i32 @rand() #2
  %call18 = tail call i32 @rand() #2
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %rem7 = srem i32 %call6, 100
  %rem9 = srem i32 %call8, 100
  %rem11 = srem i32 %call10, 100
  %rem13 = srem i32 %call12, 100
  %rem15 = srem i32 %call14, 100
  %rem17 = srem i32 %call16, 100
  %rem19 = srem i32 %call18, 100
  %rem78 = srem i32 %rem9, 10
  br label %for.body30

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv184 = phi i64 [ 0, %entry ], [ %indvars.iv.next185, %for.body ]
  %call21 = tail call i32 @rand() #2
  %rem22 = srem i32 %call21, 100
  %add = add nsw i32 %rem22, 1
  %arrayidx24 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv184, i64 %indvars.iv184
  store i32 %add, i32* %arrayidx24, align 4, !tbaa !9
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1
  %exitcond186 = icmp eq i64 %indvars.iv.next185, 10
  br i1 %exitcond186, label %for.cond.cleanup, label %for.body

for.cond.cleanup29:                               ; preds = %for.inc100
  %0 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %1 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %2 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  %call103 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %1, i32 %2)
  %call107 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %mid_vars.sroa.0.1, i32 %rem9, i32 %mid_vars.sroa.10166.1)
  %call108 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %var4.1, i32 %var5.1)
  br label %for.body114

for.body30:                                       ; preds = %for.inc100, %for.cond.cleanup
  %i25.0178 = phi i32 [ 0, %for.cond.cleanup ], [ %inc101, %for.inc100 ]
  %local2.0177 = phi i32 [ %rem19, %for.cond.cleanup ], [ %local2.1, %for.inc100 ]
  %mid_vars.sroa.10166.0176 = phi i32 [ undef, %for.cond.cleanup ], [ %mid_vars.sroa.10166.1, %for.inc100 ]
  %mid_vars.sroa.0.0175 = phi i32 [ %rem7, %for.cond.cleanup ], [ %mid_vars.sroa.0.1, %for.inc100 ]
  %var1.0174 = phi i32 [ %rem11, %for.cond.cleanup ], [ %var1.1, %for.inc100 ]
  %var5.0173 = phi i32 [ undef, %for.cond.cleanup ], [ %var5.1, %for.inc100 ]
  %var4.0172 = phi i32 [ undef, %for.cond.cleanup ], [ %var4.1, %for.inc100 ]
  %3 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %mul = mul nsw i32 %3, 3
  %4 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  %div = sdiv i32 %4, 2
  %sub = sub nsw i32 %mul, %div
  store i32 %sub, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31 = add nsw i32 %sub, %3
  %rem32 = srem i32 %add31, 100
  store i32 %rem32, i32* @main.hot_data.4, align 4, !tbaa !8
  %or = or i32 %rem32, 1
  %add33 = add nsw i32 %or, %rem17
  store i32 %add33, i32* @main.hot_data.2, align 4, !tbaa !7
  %rem36 = urem i32 %i25.0178, 10
  %5 = zext i32 %rem36 to i64
  %arrayidx41 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %5, i64 %5
  %6 = load i32, i32* %arrayidx41, align 4, !tbaa !9
  %add42 = add nsw i32 %add33, %6
  store i32 %add42, i32* %arrayidx41, align 4, !tbaa !9
  %rem43 = urem i32 %i25.0178, 100
  %cmp44 = icmp eq i32 %rem43, 0
  br i1 %cmp44, label %if.then, label %if.end

if.then:                                          ; preds = %for.body30
  %add48 = add nsw i32 %mid_vars.sroa.0.0175, %rem9
  %mul49 = mul nsw i32 %local2.0177, %add48
  %shr = ashr i32 %mul49, 1
  %add51 = add nsw i32 %sub, %shr
  %call53 = tail call i32 @rand() #2
  %rem54 = srem i32 %call53, 5
  %add55 = add nsw i32 %rem54, %rem17
  %rem56 = srem i32 %add55, 100
  %7 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add59 = add nsw i32 %7, %shr
  %8 = load i32, i32* %arrayidx41, align 4, !tbaa !9
  %add66 = add nsw i32 %add59, %8
  store i32 %add66, i32* %arrayidx41, align 4, !tbaa !9
  %arrayidx69 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 %5
  %9 = load i32, i32* %arrayidx69, align 4, !tbaa !9
  store i32 %9, i32* @main.hot_data.0, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body30
  %mid_vars.sroa.0.1 = phi i32 [ %add51, %if.then ], [ %mid_vars.sroa.0.0175, %for.body30 ]
  %mid_vars.sroa.10166.1 = phi i32 [ %mul49, %if.then ], [ %mid_vars.sroa.10166.0176, %for.body30 ]
  %local2.1 = phi i32 [ %rem56, %if.then ], [ %local2.0177, %for.body30 ]
  %rem70 = urem i32 %i25.0178, 1000
  %cmp71 = icmp eq i32 %rem70, 0
  br i1 %cmp71, label %if.then73, label %for.inc100

if.then73:                                        ; preds = %if.end
  %add74 = add nsw i32 %var1.0174, %rem13
  %call79 = tail call i32 @rand() #2
  %rem80 = srem i32 %call79, 5
  br label %for.body87

for.body87:                                       ; preds = %for.body87, %if.then73
  %indvars.iv180 = phi i64 [ 0, %if.then73 ], [ %indvars.iv.next181, %for.body87 ]
  %call88 = tail call i32 @rand() #2
  %rem89 = srem i32 %call88, 100
  %10 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90 = add nsw i32 %rem89, %10
  %arrayidx95 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv180, i64 %indvars.iv180
  store i32 %add90, i32* %arrayidx95, align 4, !tbaa !9
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  %exitcond182 = icmp eq i64 %indvars.iv.next181, 10
  br i1 %exitcond182, label %for.inc100.loopexit, label %for.body87

for.inc100.loopexit:                              ; preds = %for.body87
  %mul75 = mul nsw i32 %add74, %rem15
  %add81 = add nsw i32 %rem80, %rem78
  br label %for.inc100

for.inc100:                                       ; preds = %for.inc100.loopexit, %if.end
  %var4.1 = phi i32 [ %var4.0172, %if.end ], [ %mul75, %for.inc100.loopexit ]
  %var5.1 = phi i32 [ %var5.0173, %if.end ], [ %rem9, %for.inc100.loopexit ]
  %var1.1 = phi i32 [ %var1.0174, %if.end ], [ %add81, %for.inc100.loopexit ]
  %inc101 = add nuw nsw i32 %i25.0178, 1
  %exitcond183 = icmp eq i32 %inc101, 40000
  br i1 %exitcond183, label %for.cond.cleanup29, label %for.body30, !llvm.loop !10

for.cond.cleanup113:                              ; preds = %for.body114
  ret i32 0

for.body114:                                      ; preds = %for.body114, %for.cond.cleanup29
  %indvars.iv = phi i64 [ 0, %for.cond.cleanup29 ], [ %indvars.iv.next, %for.body114 ]
  %arrayidx118 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv, i64 %indvars.iv
  %11 = load i32, i32* %arrayidx118, align 4, !tbaa !9
  %12 = trunc i64 %indvars.iv to i32
  %call119 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %12, i32 %11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond, label %for.cond.cleanup113, label %for.body114
}

; Function Attrs: nounwind
declare void @srand(i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.enable"}
