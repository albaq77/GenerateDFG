; ModuleID = '../Heap_MallocArray.c'
source_filename = "../Heap_MallocArray.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, [64 x i8], i32, [64 x i8], i32 }
%struct.anon.0 = type { i32, [32 x i8], i32, [32 x i8], i32 }

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
@.str.3 = private unnamed_addr constant [25 x i8] c"array: heapArray[%d]=%d\0A\00", align 1

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
  %call20 = tail call noalias i8* @malloc(i64 40) #2
  %0 = bitcast i8* %call20 to i32*
  %call22 = tail call i32 @rand() #2
  %rem23 = srem i32 %call22, 100
  %add = add nsw i32 %rem23, 1
  store i32 %add, i32* %0, align 4, !tbaa !12
  %call22.1 = tail call i32 @rand() #2
  %rem23.1 = srem i32 %call22.1, 100
  %add.1 = add nsw i32 %rem23.1, 1
  %arrayidx.1 = getelementptr inbounds i8, i8* %call20, i64 4
  %1 = bitcast i8* %arrayidx.1 to i32*
  store i32 %add.1, i32* %1, align 4, !tbaa !12
  %call22.2 = tail call i32 @rand() #2
  %rem23.2 = srem i32 %call22.2, 100
  %add.2 = add nsw i32 %rem23.2, 1
  %arrayidx.2 = getelementptr inbounds i8, i8* %call20, i64 8
  %2 = bitcast i8* %arrayidx.2 to i32*
  store i32 %add.2, i32* %2, align 4, !tbaa !12
  %call22.3 = tail call i32 @rand() #2
  %rem23.3 = srem i32 %call22.3, 100
  %add.3 = add nsw i32 %rem23.3, 1
  %arrayidx.3 = getelementptr inbounds i8, i8* %call20, i64 12
  %3 = bitcast i8* %arrayidx.3 to i32*
  store i32 %add.3, i32* %3, align 4, !tbaa !12
  %call22.4 = tail call i32 @rand() #2
  %rem23.4 = srem i32 %call22.4, 100
  %add.4 = add nsw i32 %rem23.4, 1
  %arrayidx.4 = getelementptr inbounds i8, i8* %call20, i64 16
  %4 = bitcast i8* %arrayidx.4 to i32*
  store i32 %add.4, i32* %4, align 4, !tbaa !12
  %call22.5 = tail call i32 @rand() #2
  %rem23.5 = srem i32 %call22.5, 100
  %add.5 = add nsw i32 %rem23.5, 1
  %arrayidx.5 = getelementptr inbounds i8, i8* %call20, i64 20
  %5 = bitcast i8* %arrayidx.5 to i32*
  store i32 %add.5, i32* %5, align 4, !tbaa !12
  %call22.6 = tail call i32 @rand() #2
  %rem23.6 = srem i32 %call22.6, 100
  %add.6 = add nsw i32 %rem23.6, 1
  %arrayidx.6 = getelementptr inbounds i8, i8* %call20, i64 24
  %6 = bitcast i8* %arrayidx.6 to i32*
  store i32 %add.6, i32* %6, align 4, !tbaa !12
  %call22.7 = tail call i32 @rand() #2
  %rem23.7 = srem i32 %call22.7, 100
  %add.7 = add nsw i32 %rem23.7, 1
  %arrayidx.7 = getelementptr inbounds i8, i8* %call20, i64 28
  %7 = bitcast i8* %arrayidx.7 to i32*
  store i32 %add.7, i32* %7, align 4, !tbaa !12
  %call22.8 = tail call i32 @rand() #2
  %rem23.8 = srem i32 %call22.8, 100
  %add.8 = add nsw i32 %rem23.8, 1
  %arrayidx.8 = getelementptr inbounds i8, i8* %call20, i64 32
  %8 = bitcast i8* %arrayidx.8 to i32*
  store i32 %add.8, i32* %8, align 4, !tbaa !12
  %call22.9 = tail call i32 @rand() #2
  %rem23.9 = srem i32 %call22.9, 100
  %add.9 = add nsw i32 %rem23.9, 1
  %arrayidx.9 = getelementptr inbounds i8, i8* %call20, i64 36
  %9 = bitcast i8* %arrayidx.9 to i32*
  store i32 %add.9, i32* %9, align 4, !tbaa !12
  %rem17 = srem i32 %call16, 100
  %rem19 = srem i32 %call18, 100
  br label %for.body29

for.cond.cleanup28:                               ; preds = %for.inc68
  %10 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 0), align 4, !tbaa !2
  %11 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 2), align 4, !tbaa !7
  %12 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 4), align 4, !tbaa !8
  %call71 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i32 %12)
  %13 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 0), align 4, !tbaa !9
  %14 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 2), align 4, !tbaa !11
  %15 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 4), align 4, !tbaa !13
  %call72 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %16 = load i32, i32* @var4, align 4, !tbaa !12
  %17 = load i32, i32* @var5, align 4, !tbaa !12
  %call73 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %16, i32 %17)
  %18 = load i32, i32* %0, align 4, !tbaa !12
  %call82 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %18)
  %19 = load i32, i32* %1, align 4, !tbaa !12
  %call82.1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 %19)
  %20 = load i32, i32* %2, align 4, !tbaa !12
  %call82.2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 2, i32 %20)
  %21 = load i32, i32* %3, align 4, !tbaa !12
  %call82.3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 3, i32 %21)
  %22 = load i32, i32* %4, align 4, !tbaa !12
  %call82.4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 4, i32 %22)
  %23 = load i32, i32* %5, align 4, !tbaa !12
  %call82.5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 5, i32 %23)
  %24 = load i32, i32* %6, align 4, !tbaa !12
  %call82.6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 6, i32 %24)
  %25 = load i32, i32* %7, align 4, !tbaa !12
  %call82.7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 7, i32 %25)
  %26 = load i32, i32* %8, align 4, !tbaa !12
  %call82.8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 8, i32 %26)
  %27 = load i32, i32* %9, align 4, !tbaa !12
  %call82.9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 9, i32 %27)
  tail call void @free(i8* nonnull %call20) #2
  ret i32 0

for.body29:                                       ; preds = %for.inc68, %entry
  %i24.0112 = phi i32 [ 0, %entry ], [ %inc69, %for.inc68 ]
  %local2.0111 = phi i32 [ %rem19, %entry ], [ %local2.1, %for.inc68 ]
  %28 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 2), align 4, !tbaa !7
  %mul = mul nsw i32 %28, 3
  %29 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 4), align 4, !tbaa !8
  %div = sdiv i32 %29, 2
  %sub = sub nsw i32 %mul, %div
  store i32 %sub, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 0), align 4, !tbaa !2
  %add30 = add nsw i32 %sub, %28
  %rem31 = srem i32 %add30, 100
  store i32 %rem31, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 4), align 4, !tbaa !8
  %or = or i32 %rem31, 1
  %add32 = add nsw i32 %or, %rem17
  store i32 %add32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 2), align 4, !tbaa !7
  %rem35 = urem i32 %i24.0112, 10
  %30 = zext i32 %rem35 to i64
  %arrayidx37 = getelementptr inbounds i32, i32* %0, i64 %30
  %31 = load i32, i32* %arrayidx37, align 4, !tbaa !12
  %add38 = add nsw i32 %add32, %31
  store i32 %add38, i32* %arrayidx37, align 4, !tbaa !12
  %rem39 = urem i32 %i24.0112, 100
  %cmp40 = icmp eq i32 %rem39, 0
  br i1 %cmp40, label %if.then, label %if.end

if.then:                                          ; preds = %for.body29
  %32 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 0), align 4, !tbaa !9
  %33 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 2), align 4, !tbaa !11
  %add42 = add nsw i32 %33, %32
  %mul43 = mul nsw i32 %add42, %local2.0111
  store i32 %mul43, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 4), align 4, !tbaa !13
  %shr = ashr i32 %mul43, 1
  %add44 = add nsw i32 %shr, %sub
  store i32 %add44, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 0), align 4, !tbaa !9
  %call45 = tail call i32 @rand() #2
  %rem46 = srem i32 %call45, 5
  %add47 = add nsw i32 %rem46, %rem17
  %rem48 = srem i32 %add47, 100
  %34 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 4), align 4, !tbaa !13
  %shr49 = ashr i32 %34, 1
  %35 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i64 0, i32 0), align 4, !tbaa !2
  %add50 = add i32 %35, %add38
  %add54 = add i32 %add50, %shr49
  store i32 %add54, i32* %arrayidx37, align 4, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body29
  %local2.1 = phi i32 [ %rem48, %if.then ], [ %local2.0111, %for.body29 ]
  %rem56 = urem i32 %i24.0112, 1000
  %cmp57 = icmp eq i32 %rem56, 0
  br i1 %cmp57, label %if.then59, label %for.inc68

if.then59:                                        ; preds = %if.end
  %36 = load i32, i32* @var1, align 4, !tbaa !12
  %37 = load i32, i32* @var2, align 4, !tbaa !12
  %add60 = add nsw i32 %37, %36
  %38 = load i32, i32* @var3, align 4, !tbaa !12
  %mul61 = mul nsw i32 %add60, %38
  store i32 %mul61, i32* @var4, align 4, !tbaa !12
  %39 = load i32, i32* @var6, align 4, !tbaa !12
  %40 = load i32, i32* @var7, align 4, !tbaa !12
  %xor = xor i32 %40, %39
  %41 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i64 0, i32 2), align 4, !tbaa !11
  %add62 = add nsw i32 %xor, %41
  store i32 %add62, i32* @var5, align 4, !tbaa !12
  %rem63 = srem i32 %add62, 10
  %call64 = tail call i32 @rand() #2
  %rem65 = srem i32 %call64, 5
  %add66 = add nsw i32 %rem65, %rem63
  store i32 %add66, i32* @var1, align 4, !tbaa !12
  br label %for.inc68

for.inc68:                                        ; preds = %if.end, %if.then59
  %inc69 = add nuw nsw i32 %i24.0112, 1
  %exitcond = icmp eq i32 %inc69, 40000
  br i1 %exitcond, label %for.cond.cleanup28, label %for.body29
}

; Function Attrs: nounwind
declare void @srand(i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(i64*) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #1

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
