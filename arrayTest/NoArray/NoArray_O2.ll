; ModuleID = '../NoArray.c'
source_filename = "../NoArray.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i32, [64 x i8], i32, [64 x i8], i32 }

@hot_data = common local_unnamed_addr global %struct.anon.0 zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"\E6\A0\B8\E5\BF\83\E5\8F\98\E9\87\8F\EF\BC\9A\0Aa=%d\0Ab=%d\0Ac=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\E4\B8\AD\E9\97\B4\E5\8F\98\E9\87\8F\EF\BC\9Ax=%d y=%d z=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\E5\85\B6\E4\BB\96\E5\8F\98\E9\87\8F\EF\BC\9Avar4=%d var5=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i64 @time(i64* null) #2
  %conv = trunc i64 %call to i32
  tail call void @srand(i32 %conv) #2
  %call1 = tail call i32 @rand() #2
  %rem = srem i32 %call1, 100
  store i32 %rem, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i64 0, i32 0), align 4, !tbaa !2
  %call2 = tail call i32 @rand() #2
  %rem3 = srem i32 %call2, 100
  store i32 %rem3, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i64 0, i32 2), align 4, !tbaa !7
  %call4 = tail call i32 @rand() #2
  %rem5 = srem i32 %call4, 100
  store i32 %rem5, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i64 0, i32 4), align 4, !tbaa !8
  %call6 = tail call i32 @rand() #2
  %rem7 = srem i32 %call6, 100
  %call8 = tail call i32 @rand() #2
  %rem9 = srem i32 %call8, 100
  %call10 = tail call i32 @rand() #2
  %rem11 = srem i32 %call10, 100
  %call12 = tail call i32 @rand() #2
  %rem13 = srem i32 %call12, 100
  %call14 = tail call i32 @rand() #2
  %rem15 = srem i32 %call14, 100
  %call16 = tail call i32 @rand() #2
  %rem17 = srem i32 %call16, 100
  %call18 = tail call i32 @rand() #2
  %rem19 = srem i32 %call18, 100
  %rem45 = srem i32 %rem9, 10
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc
  %0 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i64 0, i32 0), align 4, !tbaa !2
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i64 0, i32 2), align 4, !tbaa !7
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i64 0, i32 4), align 4, !tbaa !8
  %call50 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %1, i32 %2)
  %call54 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %mid_vars.sroa.0.1, i32 %rem9, i32 %mid_vars.sroa.10.1)
  %call55 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %var4.1, i32 %var5.1)
  ret i32 0

for.body:                                         ; preds = %for.inc, %entry
  %i.084 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %local2.083 = phi i32 [ %rem19, %entry ], [ %local2.1, %for.inc ]
  %mid_vars.sroa.10.082 = phi i32 [ undef, %entry ], [ %mid_vars.sroa.10.1, %for.inc ]
  %mid_vars.sroa.0.081 = phi i32 [ %rem7, %entry ], [ %mid_vars.sroa.0.1, %for.inc ]
  %var1.080 = phi i32 [ %rem11, %entry ], [ %var1.1, %for.inc ]
  %var5.079 = phi i32 [ undef, %entry ], [ %var5.1, %for.inc ]
  %var4.078 = phi i32 [ undef, %entry ], [ %var4.1, %for.inc ]
  %3 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i64 0, i32 2), align 4, !tbaa !7
  %mul = mul nsw i32 %3, 3
  %4 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i64 0, i32 4), align 4, !tbaa !8
  %div = sdiv i32 %4, 2
  %sub = sub nsw i32 %mul, %div
  store i32 %sub, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i64 0, i32 0), align 4, !tbaa !2
  %add = add nsw i32 %sub, %3
  %rem21 = srem i32 %add, 100
  store i32 %rem21, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i64 0, i32 4), align 4, !tbaa !8
  %or = or i32 %rem21, 1
  %add22 = add nsw i32 %or, %rem17
  store i32 %add22, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i64 0, i32 2), align 4, !tbaa !7
  %rem23 = urem i32 %i.084, 100
  %cmp24 = icmp eq i32 %rem23, 0
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %add28 = add nsw i32 %mid_vars.sroa.0.081, %rem9
  %mul29 = mul nsw i32 %local2.083, %add28
  %shr = ashr i32 %mul29, 1
  %add31 = add nsw i32 %sub, %shr
  %call33 = tail call i32 @rand() #2
  %rem34 = srem i32 %call33, 5
  %add35 = add nsw i32 %rem34, %rem17
  %rem36 = srem i32 %add35, 100
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %mid_vars.sroa.0.1 = phi i32 [ %add31, %if.then ], [ %mid_vars.sroa.0.081, %for.body ]
  %mid_vars.sroa.10.1 = phi i32 [ %mul29, %if.then ], [ %mid_vars.sroa.10.082, %for.body ]
  %local2.1 = phi i32 [ %rem36, %if.then ], [ %local2.083, %for.body ]
  %rem37 = urem i32 %i.084, 1000
  %cmp38 = icmp eq i32 %rem37, 0
  br i1 %cmp38, label %if.then40, label %for.inc

if.then40:                                        ; preds = %if.end
  %add41 = add nsw i32 %var1.080, %rem13
  %mul42 = mul nsw i32 %add41, %rem15
  %call46 = tail call i32 @rand() #2
  %rem47 = srem i32 %call46, 5
  %add48 = add nsw i32 %rem47, %rem45
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then40
  %var4.1 = phi i32 [ %mul42, %if.then40 ], [ %var4.078, %if.end ]
  %var5.1 = phi i32 [ %rem9, %if.then40 ], [ %var5.079, %if.end ]
  %var1.1 = phi i32 [ %add48, %if.then40 ], [ %var1.080, %if.end ]
  %inc = add nuw nsw i32 %i.084, 1
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
