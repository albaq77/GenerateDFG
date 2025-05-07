; ModuleID = '../Static_GlobalArray.c'
source_filename = "../Static_GlobalArray.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, [64 x i8], i32, [64 x i8], i32 }
%struct.anon.0 = type { i32, [32 x i8], i32, [32 x i8], i32 }

@hot_data = common local_unnamed_addr global %struct.anon zeroinitializer, align 4
@mid_vars = common local_unnamed_addr global %struct.anon.0 zeroinitializer, align 4
@var1 = common local_unnamed_addr global i32 0, align 4
@var2 = common local_unnamed_addr global i32 0, align 4
@var3 = common local_unnamed_addr global i32 0, align 4
@globalArray = common local_unnamed_addr global [10 x i32] zeroinitializer, align 16
@var4 = common local_unnamed_addr global i32 0, align 4
@var6 = common local_unnamed_addr global i32 0, align 4
@var7 = common local_unnamed_addr global i32 0, align 4
@var5 = common local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"\E6\A0\B8\E5\BF\83\E5\8F\98\E9\87\8F\EF\BC\9A\0Aa=%d\0Ab=%d\0Ac=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\E4\B8\AD\E9\97\B4\E5\8F\98\E9\87\8F\EF\BC\9Ax=%d y=%d z=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\E5\85\B6\E4\BB\96\E5\8F\98\E9\87\8F\EF\BC\9Avar4=%d var5=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"array: globalArray[%d]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i64 @time(i64* null) #2
  %conv = trunc i64 %call to i32
  tail call void @srand(i32 %conv) #2
  %call1 = tail call i32 @rand() #2
  %rem = srem i32 %call1, 100
  store i32 %rem, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 0), align 4, !tbaa !2
  %call2 = tail call i32 @rand() #2
  %rem3 = srem i32 %call2, 100
  store i32 %rem3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 2), align 4, !tbaa !7
  %call4 = tail call i32 @rand() #2
  %rem5 = srem i32 %call4, 100
  store i32 %rem5, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 4), align 4, !tbaa !8
  %call6 = tail call i32 @rand() #2
  %rem7 = srem i32 %call6, 100
  store i32 %rem7, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 0), align 4, !tbaa !9
  %call8 = tail call i32 @rand() #2
  %rem9 = srem i32 %call8, 100
  store i32 %rem9, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 2), align 4, !tbaa !11
  %call10 = tail call i32 @rand() #2
  %rem11 = srem i32 %call10, 100
  store i32 %rem11, i32* @var1, align 4, !tbaa !12
  %call12 = tail call i32 @rand() #2
  %rem13 = srem i32 %call12, 100
  store i32 %rem13, i32* @var2, align 4, !tbaa !12
  %call14 = tail call i32 @rand() #2
  %rem15 = srem i32 %call14, 100
  store i32 %rem15, i32* @var3, align 4, !tbaa !12
  %call16 = tail call i32 @rand() #2
  %call18 = tail call i32 @rand() #2
  %call21 = tail call i32 @rand() #2
  %rem22 = srem i32 %call21, 100
  %add = add nsw i32 %rem22, 1
  store i32 %add, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 0), align 16, !tbaa !12
  %call21.1 = tail call i32 @rand() #2
  %rem22.1 = srem i32 %call21.1, 100
  %add.1 = add nsw i32 %rem22.1, 1
  store i32 %add.1, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 1), align 4, !tbaa !12
  %call21.2 = tail call i32 @rand() #2
  %rem22.2 = srem i32 %call21.2, 100
  %add.2 = add nsw i32 %rem22.2, 1
  store i32 %add.2, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 2), align 8, !tbaa !12
  %call21.3 = tail call i32 @rand() #2
  %rem22.3 = srem i32 %call21.3, 100
  %add.3 = add nsw i32 %rem22.3, 1
  store i32 %add.3, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 3), align 4, !tbaa !12
  %call21.4 = tail call i32 @rand() #2
  %rem22.4 = srem i32 %call21.4, 100
  %add.4 = add nsw i32 %rem22.4, 1
  store i32 %add.4, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 4), align 16, !tbaa !12
  %call21.5 = tail call i32 @rand() #2
  %rem22.5 = srem i32 %call21.5, 100
  %add.5 = add nsw i32 %rem22.5, 1
  store i32 %add.5, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 5), align 4, !tbaa !12
  %call21.6 = tail call i32 @rand() #2
  %rem22.6 = srem i32 %call21.6, 100
  %add.6 = add nsw i32 %rem22.6, 1
  store i32 %add.6, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 6), align 8, !tbaa !12
  %call21.7 = tail call i32 @rand() #2
  %rem22.7 = srem i32 %call21.7, 100
  %add.7 = add nsw i32 %rem22.7, 1
  store i32 %add.7, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 7), align 4, !tbaa !12
  %call21.8 = tail call i32 @rand() #2
  %rem22.8 = srem i32 %call21.8, 100
  %add.8 = add nsw i32 %rem22.8, 1
  store i32 %add.8, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 8), align 16, !tbaa !12
  %call21.9 = tail call i32 @rand() #2
  %rem22.9 = srem i32 %call21.9, 100
  %add.9 = add nsw i32 %rem22.9, 1
  store i32 %add.9, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 9), align 4, !tbaa !12
  %rem17 = srem i32 %call16, 100
  %rem19 = srem i32 %call18, 100
  br label %for.body28

for.cond.cleanup27:                               ; preds = %for.inc66
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 0), align 4, !tbaa !2
  %1 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 2), align 4, !tbaa !7
  %2 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 4), align 4, !tbaa !8
  %call69 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %1, i32 %2)
  %3 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 0), align 4, !tbaa !9
  %4 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 2), align 4, !tbaa !11
  %5 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 4), align 4, !tbaa !13
  %call70 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %3, i32 %4, i32 %5)
  %6 = load i32, i32* @var4, align 4, !tbaa !12
  %7 = load i32, i32* @var5, align 4, !tbaa !12
  %call71 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %6, i32 %7)
  %8 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 0), align 16, !tbaa !12
  %call80 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %8)
  %9 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 1), align 4, !tbaa !12
  %call80.1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 %9)
  %10 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 2), align 8, !tbaa !12
  %call80.2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 2, i32 %10)
  %11 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 3), align 4, !tbaa !12
  %call80.3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 3, i32 %11)
  %12 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 4), align 16, !tbaa !12
  %call80.4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 4, i32 %12)
  %13 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 5), align 4, !tbaa !12
  %call80.5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 5, i32 %13)
  %14 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 6), align 8, !tbaa !12
  %call80.6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 6, i32 %14)
  %15 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 7), align 4, !tbaa !12
  %call80.7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 7, i32 %15)
  %16 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 8), align 16, !tbaa !12
  %call80.8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 8, i32 %16)
  %17 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 9), align 4, !tbaa !12
  %call80.9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 9, i32 %17)
  ret i32 0

for.body28:                                       ; preds = %for.inc66, %entry
  %i23.0104 = phi i32 [ 0, %entry ], [ %inc67, %for.inc66 ]
  %local2.0103 = phi i32 [ %rem19, %entry ], [ %local2.1, %for.inc66 ]
  %18 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 2), align 4, !tbaa !7
  %mul = mul nsw i32 %18, 3
  %19 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 4), align 4, !tbaa !8
  %div = sdiv i32 %19, 2
  %sub = sub nsw i32 %mul, %div
  store i32 %sub, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 0), align 4, !tbaa !2
  %add29 = add nsw i32 %sub, %18
  %rem30 = srem i32 %add29, 100
  store i32 %rem30, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 4), align 4, !tbaa !8
  %or = or i32 %rem30, 1
  %add31 = add nsw i32 %or, %rem17
  store i32 %add31, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 2), align 4, !tbaa !7
  %rem34 = urem i32 %i23.0104, 10
  %20 = zext i32 %rem34 to i64
  %arrayidx36 = getelementptr inbounds [10 x i32], [10 x i32]* @globalArray, i64 0, i64 %20
  %21 = load i32, i32* %arrayidx36, align 4, !tbaa !12
  %add37 = add nsw i32 %add31, %21
  store i32 %add37, i32* %arrayidx36, align 4, !tbaa !12
  %rem38 = urem i32 %i23.0104, 100
  %cmp39 = icmp eq i32 %rem38, 0
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %for.body28
  %22 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 0), align 4, !tbaa !9
  %23 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 2), align 4, !tbaa !11
  %add41 = add nsw i32 %23, %22
  %mul42 = mul nsw i32 %add41, %local2.0103
  store i32 %mul42, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 4), align 4, !tbaa !13
  %shr = ashr i32 %mul42, 1
  %add43 = add nsw i32 %shr, %sub
  store i32 %add43, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 0), align 4, !tbaa !9
  %call44 = tail call i32 @rand() #2
  %rem45 = srem i32 %call44, 5
  %add46 = add nsw i32 %rem45, %rem17
  %rem47 = srem i32 %add46, 100
  %24 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 4), align 4, !tbaa !13
  %shr48 = ashr i32 %24, 1
  %25 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 0), align 4, !tbaa !2
  %add49 = add nsw i32 %shr48, %25
  %26 = load i32, i32* %arrayidx36, align 4, !tbaa !12
  %add53 = add nsw i32 %add49, %26
  store i32 %add53, i32* %arrayidx36, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body28
  %local2.1 = phi i32 [ %rem47, %if.then ], [ %local2.0103, %for.body28 ]
  %rem54 = urem i32 %i23.0104, 1000
  %cmp55 = icmp eq i32 %rem54, 0
  br i1 %cmp55, label %if.then57, label %for.inc66

if.then57:                                        ; preds = %if.end
  %27 = load i32, i32* @var1, align 4, !tbaa !12
  %28 = load i32, i32* @var2, align 4, !tbaa !12
  %add58 = add nsw i32 %28, %27
  %29 = load i32, i32* @var3, align 4, !tbaa !12
  %mul59 = mul nsw i32 %add58, %29
  store i32 %mul59, i32* @var4, align 4, !tbaa !12
  %30 = load i32, i32* @var6, align 4, !tbaa !12
  %31 = load i32, i32* @var7, align 4, !tbaa !12
  %xor = xor i32 %31, %30
  %32 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 2), align 4, !tbaa !11
  %add60 = add nsw i32 %xor, %32
  store i32 %add60, i32* @var5, align 4, !tbaa !12
  %rem61 = srem i32 %add60, 10
  %call62 = tail call i32 @rand() #2
  %rem63 = srem i32 %call62, 5
  %add64 = add nsw i32 %rem63, %rem61
  store i32 %add64, i32* @var1, align 4, !tbaa !12
  br label %for.inc66

for.inc66:                                        ; preds = %if.end, %if.then57
  %inc67 = add nuw nsw i32 %i23.0104, 1
  %exitcond = icmp eq i32 %inc67, 40000
  br i1 %exitcond, label %for.cond.cleanup27, label %for.body28
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
!9 = !{!10, !4, i64 0}
!10 = !{!"", !4, i64 0, !5, i64 4, !4, i64 36, !5, i64 40, !4, i64 72}
!11 = !{!10, !4, i64 36}
!12 = !{!4, !4, i64 0}
!13 = !{!10, !4, i64 72}
