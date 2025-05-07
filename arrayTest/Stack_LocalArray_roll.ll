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
  %call21 = tail call i32 @rand() #2
  %rem22 = srem i32 %call21, 100
  %add = add nsw i32 %rem22, 1
  store i32 %add, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call21.1 = tail call i32 @rand() #2
  %rem22.1 = srem i32 %call21.1, 100
  %add.1 = add nsw i32 %rem22.1, 1
  store i32 %add.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call21.2 = tail call i32 @rand() #2
  %rem22.2 = srem i32 %call21.2, 100
  %add.2 = add nsw i32 %rem22.2, 1
  store i32 %add.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call21.3 = tail call i32 @rand() #2
  %rem22.3 = srem i32 %call21.3, 100
  %add.3 = add nsw i32 %rem22.3, 1
  store i32 %add.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call21.4 = tail call i32 @rand() #2
  %rem22.4 = srem i32 %call21.4, 100
  %add.4 = add nsw i32 %rem22.4, 1
  store i32 %add.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call21.5 = tail call i32 @rand() #2
  %rem22.5 = srem i32 %call21.5, 100
  %add.5 = add nsw i32 %rem22.5, 1
  store i32 %add.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call21.6 = tail call i32 @rand() #2
  %rem22.6 = srem i32 %call21.6, 100
  %add.6 = add nsw i32 %rem22.6, 1
  store i32 %add.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call21.7 = tail call i32 @rand() #2
  %rem22.7 = srem i32 %call21.7, 100
  %add.7 = add nsw i32 %rem22.7, 1
  store i32 %add.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call21.8 = tail call i32 @rand() #2
  %rem22.8 = srem i32 %call21.8, 100
  %add.8 = add nsw i32 %rem22.8, 1
  store i32 %add.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call21.9 = tail call i32 @rand() #2
  %rem22.9 = srem i32 %call21.9, 100
  %add.9 = add nsw i32 %rem22.9, 1
  store i32 %add.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %rem7 = srem i32 %call6, 100
  %rem9 = srem i32 %call8, 100
  %rem11 = srem i32 %call10, 100
  %rem13 = srem i32 %call12, 100
  %rem15 = srem i32 %call14, 100
  %rem17 = srem i32 %call16, 100
  %rem19 = srem i32 %call18, 100
  %rem78 = srem i32 %rem9, 10
  br label %for.body30

for.cond.cleanup29:                               ; preds = %for.inc100
  %0 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %1 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  %call103 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %0, i32 %1)
  %call107 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %mid_vars.sroa.0.1, i32 %rem9, i32 %mid_vars.sroa.10166.1)
  %call108 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %var4.1, i32 %var5.1)
  %2 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call119 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %2)
  %3 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call119.1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 1, i32 %3)
  %4 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call119.2 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 2, i32 %4)
  %5 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call119.3 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 3, i32 %5)
  %6 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call119.4 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 4, i32 %6)
  %7 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call119.5 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 5, i32 %7)
  %8 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call119.6 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 6, i32 %8)
  %9 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call119.7 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 7, i32 %9)
  %10 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call119.8 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 8, i32 %10)
  %11 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %call119.9 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 9, i32 %11)
  ret i32 0

for.body30:                                       ; preds = %for.inc100, %entry
  %i25.0178 = phi i32 [ 0, %entry ], [ %inc101, %for.inc100 ]
  %local2.0177 = phi i32 [ %rem19, %entry ], [ %local2.1, %for.inc100 ]
  %mid_vars.sroa.10166.0176 = phi i32 [ undef, %entry ], [ %mid_vars.sroa.10166.1, %for.inc100 ]
  %mid_vars.sroa.0.0175 = phi i32 [ %rem7, %entry ], [ %mid_vars.sroa.0.1, %for.inc100 ]
  %var1.0174 = phi i32 [ %rem11, %entry ], [ %var1.1, %for.inc100 ]
  %var5.0173 = phi i32 [ undef, %entry ], [ %var5.1, %for.inc100 ]
  %var4.0172 = phi i32 [ undef, %entry ], [ %var4.1, %for.inc100 ]
  %12 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %mul = mul nsw i32 %12, 3
  %13 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  %div = sdiv i32 %13, 2
  %sub = sub nsw i32 %mul, %div
  store i32 %sub, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31 = add nsw i32 %sub, %12
  %rem32 = srem i32 %add31, 100
  store i32 %rem32, i32* @main.hot_data.4, align 4, !tbaa !8
  %or = or i32 %rem32, 1
  %add33 = add nsw i32 %or, %rem17
  store i32 %add33, i32* @main.hot_data.2, align 4, !tbaa !7
  %rem36 = urem i32 %i25.0178, 10
  %14 = zext i32 %rem36 to i64
  %arrayidx41 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %14, i64 %14
  %15 = load i32, i32* %arrayidx41, align 4, !tbaa !9
  %add42 = add nsw i32 %add33, %15
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
  %16 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add59 = add nsw i32 %16, %shr
  %17 = load i32, i32* %arrayidx41, align 4, !tbaa !9
  %add66 = add nsw i32 %add59, %17
  store i32 %add66, i32* %arrayidx41, align 4, !tbaa !9
  %arrayidx69 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 %14
  %18 = load i32, i32* %arrayidx69, align 4, !tbaa !9
  store i32 %18, i32* @main.hot_data.0, align 4, !tbaa !2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body30
  %19 = phi i32 [ %18, %if.then ], [ %sub, %for.body30 ]
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
  %call88 = tail call i32 @rand() #2
  %rem89 = srem i32 %call88, 100
  %20 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90 = add nsw i32 %rem89, %20
  store i32 %add90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1 = tail call i32 @rand() #2
  %rem89.1 = srem i32 %call88.1, 100
  %21 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1 = add nsw i32 %rem89.1, %21
  store i32 %add90.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2 = tail call i32 @rand() #2
  %rem89.2 = srem i32 %call88.2, 100
  %22 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2 = add nsw i32 %rem89.2, %22
  store i32 %add90.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3 = tail call i32 @rand() #2
  %rem89.3 = srem i32 %call88.3, 100
  %23 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3 = add nsw i32 %rem89.3, %23
  store i32 %add90.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4 = tail call i32 @rand() #2
  %rem89.4 = srem i32 %call88.4, 100
  %24 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4 = add nsw i32 %rem89.4, %24
  store i32 %add90.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5 = tail call i32 @rand() #2
  %rem89.5 = srem i32 %call88.5, 100
  %25 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5 = add nsw i32 %rem89.5, %25
  store i32 %add90.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6 = tail call i32 @rand() #2
  %rem89.6 = srem i32 %call88.6, 100
  %26 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6 = add nsw i32 %rem89.6, %26
  store i32 %add90.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7 = tail call i32 @rand() #2
  %rem89.7 = srem i32 %call88.7, 100
  %27 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7 = add nsw i32 %rem89.7, %27
  store i32 %add90.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8 = tail call i32 @rand() #2
  %rem89.8 = srem i32 %call88.8, 100
  %28 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8 = add nsw i32 %rem89.8, %28
  store i32 %add90.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9 = tail call i32 @rand() #2
  %rem89.9 = srem i32 %call88.9, 100
  %29 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9 = add nsw i32 %rem89.9, %29
  store i32 %add90.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75 = mul nsw i32 %add74, %rem15
  %add81 = add nsw i32 %rem80, %rem78
  br label %for.inc100

for.inc100:                                       ; preds = %if.then73, %if.end
  %30 = phi i32 [ %19, %if.end ], [ %29, %if.then73 ]
  %var4.1 = phi i32 [ %var4.0172, %if.end ], [ %mul75, %if.then73 ]
  %var5.1 = phi i32 [ %var5.0173, %if.end ], [ %rem9, %if.then73 ]
  %var1.1 = phi i32 [ %var1.0174, %if.end ], [ %add81, %if.then73 ]
  %inc101 = add nuw nsw i32 %i25.0178, 1
  %exitcond = icmp eq i32 %inc101, 40000
  br i1 %exitcond, label %for.cond.cleanup29, label %for.body30
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
