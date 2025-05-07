; ModuleID = '../StaticAccessArray.c'
source_filename = "../StaticAccessArray.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, [64 x i8], i32, [64 x i8], i32 }
%struct.anon.0 = type { i32, i32, i32 }

@hot_data = common local_unnamed_addr global %struct.anon zeroinitializer, align 4
@mid_vars = common local_unnamed_addr global %struct.anon.0 zeroinitializer, align 4
@var1 = common local_unnamed_addr global i32 0, align 4
@var2 = common local_unnamed_addr global i32 0, align 4
@var3 = common local_unnamed_addr global i32 0, align 4
@var4 = common local_unnamed_addr global i32 0, align 4
@var6 = common local_unnamed_addr global i32 0, align 4
@var7 = common local_unnamed_addr global i32 0, align 4
@var5 = common local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"\E6\A0\B8\E5\BF\83\E5\8F\98\E9\87\8F\EF\BC\9A\0Aa=%d\0Ab=%d\0Ac=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\E4\B8\AD\E9\97\B4\E5\8F\98\E9\87\8F\EF\BC\9Ax=%d y=%d z=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\E5\85\B6\E4\BB\96\E5\8F\98\E9\87\8F\EF\BC\9Avar4=%d var5=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"array: localArray[%d]=%d\0A\00", align 1

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
  store i32 %rem9, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 1), align 4, !tbaa !11
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
  %rem17 = srem i32 %call16, 100
  %call18 = tail call i32 @rand() #2
  %rem19 = srem i32 %call18, 100
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 0), align 4, !tbaa !2
  %1 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 2), align 4, !tbaa !7
  %2 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 4), align 4, !tbaa !8
  %call46 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %1, i32 %2)
  %3 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 0), align 4, !tbaa !9
  %4 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 1), align 4, !tbaa !11
  %5 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 2), align 4, !tbaa !13
  %call47 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %3, i32 %4, i32 %5)
  %6 = load i32, i32* @var4, align 4, !tbaa !12
  %7 = load i32, i32* @var5, align 4, !tbaa !12
  %call48 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %6, i32 %7)
  %call56 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %add3375)
  %call56.1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 undef)
  %call56.2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 2, i32 undef)
  %call56.3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 3, i32 undef)
  %call56.4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 4, i32 undef)
  %call56.5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 5, i32 undef)
  %call56.6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 6, i32 undef)
  %call56.7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 7, i32 undef)
  %call56.8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 8, i32 undef)
  %call56.9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 9, i32 undef)
  ret i32 0

for.body:                                         ; preds = %for.inc, %entry
  %add3376 = phi i32 [ undef, %entry ], [ %add3375, %for.inc ]
  %i.074 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %local2.073 = phi i32 [ %rem19, %entry ], [ %local2.1, %for.inc ]
  %8 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 2), align 4, !tbaa !7
  %mul = mul nsw i32 %8, 3
  %9 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 4), align 4, !tbaa !8
  %div = sdiv i32 %9, 2
  %sub = sub nsw i32 %mul, %div
  store i32 %sub, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 0), align 4, !tbaa !2
  %add = add nsw i32 %sub, %8
  %rem21 = srem i32 %add, 100
  store i32 %rem21, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 4), align 4, !tbaa !8
  %or = or i32 %rem21, 1
  %add22 = add nsw i32 %or, %rem17
  store i32 %add22, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 2), align 4, !tbaa !7
  %rem23 = urem i32 %i.074, 100
  %cmp24 = icmp eq i32 %rem23, 0
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 0), align 4, !tbaa !9
  %11 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 1), align 4, !tbaa !11
  %add26 = add nsw i32 %11, %10
  %mul27 = mul nsw i32 %add26, %local2.073
  store i32 %mul27, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 2), align 4, !tbaa !13
  %shr = ashr i32 %mul27, 1
  %add28 = add nsw i32 %shr, %sub
  store i32 %add28, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 0), align 4, !tbaa !9
  %call29 = tail call i32 @rand() #2
  %rem30 = srem i32 %call29, 5
  %add31 = add nsw i32 %rem30, %rem17
  %rem32 = srem i32 %add31, 100
  %add33 = add nsw i32 %rem32, %add3376
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %add3375 = phi i32 [ %add33, %if.then ], [ %add3376, %for.body ]
  %local2.1 = phi i32 [ %rem32, %if.then ], [ %local2.073, %for.body ]
  %rem34 = urem i32 %i.074, 1000
  %cmp35 = icmp eq i32 %rem34, 0
  br i1 %cmp35, label %if.then37, label %for.inc

if.then37:                                        ; preds = %if.end
  %12 = load i32, i32* @var1, align 4, !tbaa !12
  %13 = load i32, i32* @var2, align 4, !tbaa !12
  %add38 = add nsw i32 %13, %12
  %14 = load i32, i32* @var3, align 4, !tbaa !12
  %mul39 = mul nsw i32 %add38, %14
  store i32 %mul39, i32* @var4, align 4, !tbaa !12
  %15 = load i32, i32* @var6, align 4, !tbaa !12
  %16 = load i32, i32* @var7, align 4, !tbaa !12
  %xor = xor i32 %16, %15
  %17 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 1), align 4, !tbaa !11
  %add40 = add nsw i32 %xor, %17
  store i32 %add40, i32* @var5, align 4, !tbaa !12
  %rem41 = srem i32 %add40, 10
  %call42 = tail call i32 @rand() #2
  %rem43 = srem i32 %call42, 5
  %add44 = add nsw i32 %rem43, %rem41
  store i32 %add44, i32* @var1, align 4, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then37
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond = icmp eq i32 %inc, 40000
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
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
!10 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!11 = !{!10, !4, i64 4}
!12 = !{!4, !4, i64 0}
!13 = !{!10, !4, i64 8}
