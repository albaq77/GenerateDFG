; ModuleID = '../Static_GlobalArray.c'
source_filename = "../Static_GlobalArray.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, [64 x i8], i32, [64 x i8], i32 }
%struct.anon.0 = type { i32, [32 x i8], i32, [32 x i8], i32 }

@hot_data = common global %struct.anon zeroinitializer, align 4
@mid_vars = common global %struct.anon.0 zeroinitializer, align 4
@var1 = common global i32 0, align 4
@var2 = common global i32 0, align 4
@var3 = common global i32 0, align 4
@globalArray = common global [10 x i32] zeroinitializer, align 16
@var4 = common global i32 0, align 4
@var6 = common global i32 0, align 4
@var7 = common global i32 0, align 4
@var5 = common global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"\E6\A0\B8\E5\BF\83\E5\8F\98\E9\87\8F\EF\BC\9A\0Aa=%d\0Ab=%d\0Ac=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\E4\B8\AD\E9\97\B4\E5\8F\98\E9\87\8F\EF\BC\9Ax=%d y=%d z=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\E5\85\B6\E4\BB\96\E5\8F\98\E9\87\8F\EF\BC\9Avar4=%d var5=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"array: globalArray[%d]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %local1 = alloca i32, align 4
  %local2 = alloca i32, align 4
  %local3 = alloca i32, align 4
  %i = alloca i32, align 4
  %i23 = alloca i32, align 4
  %i71 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #3
  %call1 = call i32 @rand() #3
  %rem = srem i32 %call1, 100
  store i32 %rem, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %call2 = call i32 @rand() #3
  %rem3 = srem i32 %call2, 100
  store i32 %rem3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %call4 = call i32 @rand() #3
  %rem5 = srem i32 %call4, 100
  store i32 %rem5, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %call6 = call i32 @rand() #3
  %rem7 = srem i32 %call6, 100
  store i32 %rem7, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 0), align 4
  %call8 = call i32 @rand() #3
  %rem9 = srem i32 %call8, 100
  store i32 %rem9, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 2), align 4
  %call10 = call i32 @rand() #3
  %rem11 = srem i32 %call10, 100
  store i32 %rem11, i32* @var1, align 4
  %call12 = call i32 @rand() #3
  %rem13 = srem i32 %call12, 100
  store i32 %rem13, i32* @var2, align 4
  %call14 = call i32 @rand() #3
  %rem15 = srem i32 %call14, 100
  store i32 %rem15, i32* @var3, align 4
  %call16 = call i32 @rand() #3
  %rem17 = srem i32 %call16, 100
  store i32 %rem17, i32* %local1, align 4
  %call18 = call i32 @rand() #3
  %rem19 = srem i32 %call18, 100
  store i32 %rem19, i32* %local2, align 4
  store i32 0, i32* %local3, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call21 = call i32 @rand() #3
  %rem22 = srem i32 %call21, 100
  %add = add nsw i32 %rem22, 1
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* @globalArray, i64 0, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i23, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc65, %for.end
  %3 = load i32, i32* %i23, align 4
  %cmp25 = icmp slt i32 %3, 40000
  br i1 %cmp25, label %for.body27, label %for.end67

for.body27:                                       ; preds = %for.cond24
  %4 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %mul = mul nsw i32 %4, 3
  %5 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %div = sdiv i32 %5, 2
  %sub = sub nsw i32 %mul, %div
  store i32 %sub, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %add28 = add nsw i32 %6, %7
  %rem29 = srem i32 %add28, 100
  store i32 %rem29, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %or = or i32 %8, 1
  %9 = load i32, i32* %local1, align 4
  %add30 = add nsw i32 %or, %9
  store i32 %add30, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %or31 = or i32 %10, 1
  %11 = load i32, i32* %local1, align 4
  %add32 = add nsw i32 %or31, %11
  %12 = load i32, i32* %i23, align 4
  %rem33 = srem i32 %12, 10
  %idxprom34 = sext i32 %rem33 to i64
  %arrayidx35 = getelementptr inbounds [10 x i32], [10 x i32]* @globalArray, i64 0, i64 %idxprom34
  %13 = load i32, i32* %arrayidx35, align 4
  %add36 = add nsw i32 %13, %add32
  store i32 %add36, i32* %arrayidx35, align 4
  %14 = load i32, i32* %i23, align 4
  %rem37 = srem i32 %14, 100
  %cmp38 = icmp eq i32 %rem37, 0
  br i1 %cmp38, label %if.then, label %if.end

if.then:                                          ; preds = %for.body27
  %15 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 0), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 2), align 4
  %add40 = add nsw i32 %15, %16
  %17 = load i32, i32* %local2, align 4
  %mul41 = mul nsw i32 %add40, %17
  store i32 %mul41, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 4), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 4), align 4
  %shr = ashr i32 %18, 1
  %19 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %add42 = add nsw i32 %shr, %19
  store i32 %add42, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 0), align 4
  %20 = load i32, i32* %local1, align 4
  %call43 = call i32 @rand() #3
  %rem44 = srem i32 %call43, 5
  %add45 = add nsw i32 %20, %rem44
  %rem46 = srem i32 %add45, 100
  store i32 %rem46, i32* %local2, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 4), align 4
  %shr47 = ashr i32 %21, 1
  %22 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %add48 = add nsw i32 %shr47, %22
  %23 = load i32, i32* %i23, align 4
  %rem49 = srem i32 %23, 10
  %idxprom50 = sext i32 %rem49 to i64
  %arrayidx51 = getelementptr inbounds [10 x i32], [10 x i32]* @globalArray, i64 0, i64 %idxprom50
  %24 = load i32, i32* %arrayidx51, align 4
  %add52 = add nsw i32 %24, %add48
  store i32 %add52, i32* %arrayidx51, align 4
  %25 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @globalArray, i64 0, i64 0), align 16
  store i32 %25, i32* %local3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body27
  %26 = load i32, i32* %i23, align 4
  %rem53 = srem i32 %26, 1000
  %cmp54 = icmp eq i32 %rem53, 0
  br i1 %cmp54, label %if.then56, label %if.end64

if.then56:                                        ; preds = %if.end
  %27 = load i32, i32* @var1, align 4
  %28 = load i32, i32* @var2, align 4
  %add57 = add nsw i32 %27, %28
  %29 = load i32, i32* @var3, align 4
  %mul58 = mul nsw i32 %add57, %29
  store i32 %mul58, i32* @var4, align 4
  %30 = load i32, i32* @var6, align 4
  %31 = load i32, i32* @var7, align 4
  %xor = xor i32 %30, %31
  %32 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 2), align 4
  %add59 = add nsw i32 %xor, %32
  store i32 %add59, i32* @var5, align 4
  %33 = load i32, i32* @var5, align 4
  %rem60 = srem i32 %33, 10
  %call61 = call i32 @rand() #3
  %rem62 = srem i32 %call61, 5
  %add63 = add nsw i32 %rem60, %rem62
  store i32 %add63, i32* @var1, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then56, %if.end
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %34 = load i32, i32* %i23, align 4
  %inc66 = add nsw i32 %34, 1
  store i32 %inc66, i32* %i23, align 4
  br label %for.cond24

for.end67:                                        ; preds = %for.cond24
  %35 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %call68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i32 %35, i32 %36, i32 %37)
  %38 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 0), align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 2), align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 4), align 4
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 %38, i32 %39, i32 %40)
  %41 = load i32, i32* @var4, align 4
  %42 = load i32, i32* @var5, align 4
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i32 %41, i32 %42)
  store i32 0, i32* %i71, align 4
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc79, %for.end67
  %43 = load i32, i32* %i71, align 4
  %cmp73 = icmp slt i32 %43, 10
  br i1 %cmp73, label %for.body75, label %for.end81

for.body75:                                       ; preds = %for.cond72
  %44 = load i32, i32* %i71, align 4
  %45 = load i32, i32* %i71, align 4
  %idxprom76 = sext i32 %45 to i64
  %arrayidx77 = getelementptr inbounds [10 x i32], [10 x i32]* @globalArray, i64 0, i64 %idxprom76
  %46 = load i32, i32* %arrayidx77, align 4
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32 %44, i32 %46)
  br label %for.inc79

for.inc79:                                        ; preds = %for.body75
  %47 = load i32, i32* %i71, align 4
  %inc80 = add nsw i32 %47, 1
  store i32 %inc80, i32* %i71, align 4
  br label %for.cond72

for.end81:                                        ; preds = %for.cond72
  ret i32 0
}

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i32 @rand() #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
