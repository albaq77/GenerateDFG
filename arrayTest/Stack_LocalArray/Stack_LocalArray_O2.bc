; ModuleID = '../Stack_LocalArray.c'
source_filename = "../Stack_LocalArray.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@localArray = common local_unnamed_addr global [10 x [10 x i64]] zeroinitializer, align 16
@main.index = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"\E6\A0\B8\E5\BF\83\E5\8F\98\E9\87\8F\EF\BC\9A\0Aa=%d\0Ab=%d\0Ac=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\E4\B8\AD\E9\97\B4\E5\8F\98\E9\87\8F\EF\BC\9Ax=%d y=%d z=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\E5\85\B6\E4\BB\96\E5\8F\98\E9\87\8F\EF\BC\9Avar4=%d var5=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"array: localArray[%d]=%ld\0A\00", align 1
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
  %call21 = tail call i32 @rand() #2
  %rem22 = srem i32 %call21, 100
  %add = add nsw i32 %rem22, 1
  %conv23 = sext i32 %add to i64
  store i64 %conv23, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call21.1 = tail call i32 @rand() #2
  %rem22.1 = srem i32 %call21.1, 100
  %add.1 = add nsw i32 %rem22.1, 1
  %conv23.1 = sext i32 %add.1 to i64
  store i64 %conv23.1, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 1, i64 1), align 8, !tbaa !9
  %call21.2 = tail call i32 @rand() #2
  %rem22.2 = srem i32 %call21.2, 100
  %add.2 = add nsw i32 %rem22.2, 1
  %conv23.2 = sext i32 %add.2 to i64
  store i64 %conv23.2, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 2, i64 2), align 16, !tbaa !9
  %call21.3 = tail call i32 @rand() #2
  %rem22.3 = srem i32 %call21.3, 100
  %add.3 = add nsw i32 %rem22.3, 1
  %conv23.3 = sext i32 %add.3 to i64
  store i64 %conv23.3, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 3, i64 3), align 8, !tbaa !9
  %call21.4 = tail call i32 @rand() #2
  %rem22.4 = srem i32 %call21.4, 100
  %add.4 = add nsw i32 %rem22.4, 1
  %conv23.4 = sext i32 %add.4 to i64
  store i64 %conv23.4, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call21.5 = tail call i32 @rand() #2
  %rem22.5 = srem i32 %call21.5, 100
  %add.5 = add nsw i32 %rem22.5, 1
  %conv23.5 = sext i32 %add.5 to i64
  store i64 %conv23.5, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 5, i64 5), align 8, !tbaa !9
  %call21.6 = tail call i32 @rand() #2
  %rem22.6 = srem i32 %call21.6, 100
  %add.6 = add nsw i32 %rem22.6, 1
  %conv23.6 = sext i32 %add.6 to i64
  store i64 %conv23.6, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 6, i64 6), align 16, !tbaa !9
  %call21.7 = tail call i32 @rand() #2
  %rem22.7 = srem i32 %call21.7, 100
  %add.7 = add nsw i32 %rem22.7, 1
  %conv23.7 = sext i32 %add.7 to i64
  store i64 %conv23.7, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 7, i64 7), align 8, !tbaa !9
  %call21.8 = tail call i32 @rand() #2
  %rem22.8 = srem i32 %call21.8, 100
  %add.8 = add nsw i32 %rem22.8, 1
  %conv23.8 = sext i32 %add.8 to i64
  store i64 %conv23.8, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call21.9 = tail call i32 @rand() #2
  %rem22.9 = srem i32 %call21.9, 100
  %add.9 = add nsw i32 %rem22.9, 1
  %conv23.9 = sext i32 %add.9 to i64
  store i64 %conv23.9, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 9, i64 9), align 8, !tbaa !9
  %rem7 = srem i32 %call6, 100
  %rem9 = srem i32 %call8, 100
  %rem11 = srem i32 %call10, 100
  %rem13 = srem i32 %call12, 100
  %rem15 = srem i32 %call14, 100
  %rem17 = srem i32 %call16, 100
  %rem19 = srem i32 %call18, 100
  %rem69 = srem i32 %rem9, 10
  br label %for.body31

for.cond.cleanup30:                               ; preds = %for.inc74
  %0 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %1 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %2 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  %call77 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %1, i32 %2)
  %call81 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %mid_vars.sroa.0.1, i32 %rem9, i32 %mid_vars.sroa.10132.1)
  %call82 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %var4.1, i32 %var5.1)
  %3 = load i64, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call93 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 0, i64 %3)
  %4 = load i64, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 1, i64 1), align 8, !tbaa !9
  %call93.1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 1, i64 %4)
  %5 = load i64, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 2, i64 2), align 16, !tbaa !9
  %call93.2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 2, i64 %5)
  %6 = load i64, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 3, i64 3), align 8, !tbaa !9
  %call93.3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 3, i64 %6)
  %7 = load i64, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call93.4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 4, i64 %7)
  %8 = load i64, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 5, i64 5), align 8, !tbaa !9
  %call93.5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 5, i64 %8)
  %9 = load i64, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 6, i64 6), align 16, !tbaa !9
  %call93.6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 6, i64 %9)
  %10 = load i64, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 7, i64 7), align 8, !tbaa !9
  %call93.7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 7, i64 %10)
  %11 = load i64, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call93.8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 8, i64 %11)
  %12 = load i64, i64* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 9, i64 9), align 8, !tbaa !9
  %call93.9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 9, i64 %12)
  ret i32 0

for.body31:                                       ; preds = %for.inc74, %entry
  %i26.0142 = phi i32 [ 0, %entry ], [ %inc75, %for.inc74 ]
  %mid_vars.sroa.10132.0141 = phi i32 [ undef, %entry ], [ %mid_vars.sroa.10132.1, %for.inc74 ]
  %local2.0140 = phi i32 [ %rem19, %entry ], [ %local2.1, %for.inc74 ]
  %mid_vars.sroa.0.0139 = phi i32 [ %rem7, %entry ], [ %mid_vars.sroa.0.1, %for.inc74 ]
  %var1.0138 = phi i32 [ %rem11, %entry ], [ %var1.1, %for.inc74 ]
  %var4.0137 = phi i32 [ undef, %entry ], [ %var4.1, %for.inc74 ]
  %var5.0136 = phi i32 [ undef, %entry ], [ %var5.1, %for.inc74 ]
  %13 = load i32, i32* @main.index, align 4, !tbaa !11
  %mul = mul nuw nsw i32 %i26.0142, 34
  %add32 = add nsw i32 %13, %mul
  store i32 %add32, i32* @main.index, align 4, !tbaa !11
  %14 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %mul33 = mul nsw i32 %14, 3
  %15 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  %div = sdiv i32 %15, 2
  %sub = sub nsw i32 %mul33, %div
  store i32 %sub, i32* @main.hot_data.0, align 4, !tbaa !2
  %add34 = add nsw i32 %sub, %14
  %rem35 = srem i32 %add34, 100
  store i32 %rem35, i32* @main.hot_data.4, align 4, !tbaa !8
  %or = or i32 %rem35, 1
  %add36 = add nsw i32 %or, %rem17
  store i32 %add36, i32* @main.hot_data.2, align 4, !tbaa !7
  %conv39 = sext i32 %add36 to i64
  %rem40 = srem i32 %add32, 10
  %idxprom41 = sext i32 %rem40 to i64
  %arrayidx45 = getelementptr inbounds [10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 %idxprom41, i64 %idxprom41
  %16 = load i64, i64* %arrayidx45, align 8, !tbaa !9
  %add46 = add nsw i64 %16, %conv39
  store i64 %add46, i64* %arrayidx45, align 8, !tbaa !9
  %rem47 = urem i32 %i26.0142, 100
  %cmp48 = icmp eq i32 %rem47, 0
  br i1 %cmp48, label %if.then, label %if.end

if.then:                                          ; preds = %for.body31
  %add52 = add nsw i32 %mid_vars.sroa.0.0139, %rem9
  %mul53 = mul nsw i32 %add52, %local2.0140
  %shr = ashr i32 %mul53, 1
  %add55 = add nsw i32 %sub, %shr
  %call57 = tail call i32 @rand() #2
  %rem58 = srem i32 %call57, 5
  %add59 = add nsw i32 %rem58, %rem17
  %rem60 = srem i32 %add59, 100
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body31
  %mid_vars.sroa.0.1 = phi i32 [ %add55, %if.then ], [ %mid_vars.sroa.0.0139, %for.body31 ]
  %local2.1 = phi i32 [ %rem60, %if.then ], [ %local2.0140, %for.body31 ]
  %mid_vars.sroa.10132.1 = phi i32 [ %mul53, %if.then ], [ %mid_vars.sroa.10132.0141, %for.body31 ]
  %rem61 = urem i32 %i26.0142, 1000
  %cmp62 = icmp eq i32 %rem61, 0
  br i1 %cmp62, label %if.then64, label %for.inc74

if.then64:                                        ; preds = %if.end
  %add65 = add nsw i32 %var1.0138, %rem13
  %mul66 = mul nsw i32 %add65, %rem15
  %call70 = tail call i32 @rand() #2
  %rem71 = srem i32 %call70, 5
  %add72 = add nsw i32 %rem71, %rem69
  br label %for.inc74

for.inc74:                                        ; preds = %if.end, %if.then64
  %var5.1 = phi i32 [ %rem9, %if.then64 ], [ %var5.0136, %if.end ]
  %var4.1 = phi i32 [ %mul66, %if.then64 ], [ %var4.0137, %if.end ]
  %var1.1 = phi i32 [ %add72, %if.then64 ], [ %var1.0138, %if.end ]
  %inc75 = add nuw nsw i32 %i26.0142, 1
  %exitcond = icmp eq i32 %inc75, 40000
  br i1 %exitcond, label %for.cond.cleanup30, label %for.body31
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
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!4, !4, i64 0}
