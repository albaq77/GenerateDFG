; ModuleID = '../Stack_LocalArray.c'
source_filename = "../Stack_LocalArray.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, [64 x i8], i32, [64 x i8], i32 }
%struct.anon.0 = type { i32, [32 x i8], i32, [32 x i8], i32 }

@main.hot_data = internal global %struct.anon zeroinitializer, align 4
@localArray = common global [10 x [10 x i64]] zeroinitializer, align 16
@main.index = internal global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"\E6\A0\B8\E5\BF\83\E5\8F\98\E9\87\8F\EF\BC\9A\0Aa=%d\0Ab=%d\0Ac=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\E4\B8\AD\E9\97\B4\E5\8F\98\E9\87\8F\EF\BC\9Ax=%d y=%d z=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\E5\85\B6\E4\BB\96\E5\8F\98\E9\87\8F\EF\BC\9Avar4=%d var5=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"array: localArray[%d]=%ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %mid_vars = alloca %struct.anon.0, align 4
  %var1 = alloca i32, align 4
  %var2 = alloca i32, align 4
  %var3 = alloca i32, align 4
  %var4 = alloca i32, align 4
  %var5 = alloca i32, align 4
  %var6 = alloca i32, align 4
  %var7 = alloca i32, align 4
  %local1 = alloca i32, align 4
  %local2 = alloca i32, align 4
  %local3 = alloca i32, align 4
  %i = alloca i32, align 4
  %i26 = alloca i32, align 4
  %i82 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #3
  %call1 = call i32 @rand() #3
  %rem = srem i32 %call1, 100
  store i32 %rem, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %call2 = call i32 @rand() #3
  %rem3 = srem i32 %call2, 100
  store i32 %rem3, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 2), align 4
  %call4 = call i32 @rand() #3
  %rem5 = srem i32 %call4, 100
  store i32 %rem5, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %call6 = call i32 @rand() #3
  %rem7 = srem i32 %call6, 100
  %x = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 0
  store i32 %rem7, i32* %x, align 4
  %call8 = call i32 @rand() #3
  %rem9 = srem i32 %call8, 100
  %y = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 2
  store i32 %rem9, i32* %y, align 4
  %call10 = call i32 @rand() #3
  %rem11 = srem i32 %call10, 100
  store i32 %rem11, i32* %var1, align 4
  %call12 = call i32 @rand() #3
  %rem13 = srem i32 %call12, 100
  store i32 %rem13, i32* %var2, align 4
  %call14 = call i32 @rand() #3
  %rem15 = srem i32 %call14, 100
  store i32 %rem15, i32* %var3, align 4
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
  %conv23 = sext i32 %add to i64
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 %idxprom
  %2 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %2 to i64
  %arrayidx25 = getelementptr inbounds [10 x i64], [10 x i64]* %arrayidx, i64 0, i64 %idxprom24
  store i64 %conv23, i64* %arrayidx25, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i26, align 4
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc73, %for.end
  %4 = load i32, i32* %i26, align 4
  %cmp28 = icmp slt i32 %4, 40000
  br i1 %cmp28, label %for.body30, label %for.end75

for.body30:                                       ; preds = %for.cond27
  %5 = load i32, i32* @main.index, align 4
  %6 = load i32, i32* %i26, align 4
  %mul = mul nsw i32 %6, 34
  %add31 = add nsw i32 %5, %mul
  store i32 %add31, i32* @main.index, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 2), align 4
  %mul32 = mul nsw i32 %7, 3
  %8 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %div = sdiv i32 %8, 2
  %sub = sub nsw i32 %mul32, %div
  store i32 %sub, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 2), align 4
  %add33 = add nsw i32 %9, %10
  %rem34 = srem i32 %add33, 100
  store i32 %rem34, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %or = or i32 %11, 1
  %12 = load i32, i32* %local1, align 4
  %add35 = add nsw i32 %or, %12
  store i32 %add35, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 2), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %or36 = or i32 %13, 1
  %14 = load i32, i32* %local1, align 4
  %add37 = add nsw i32 %or36, %14
  %conv38 = sext i32 %add37 to i64
  %15 = load i32, i32* @main.index, align 4
  %rem39 = srem i32 %15, 10
  %idxprom40 = sext i32 %rem39 to i64
  %arrayidx41 = getelementptr inbounds [10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 %idxprom40
  %16 = load i32, i32* @main.index, align 4
  %rem42 = srem i32 %16, 10
  %idxprom43 = sext i32 %rem42 to i64
  %arrayidx44 = getelementptr inbounds [10 x i64], [10 x i64]* %arrayidx41, i64 0, i64 %idxprom43
  %17 = load i64, i64* %arrayidx44, align 8
  %add45 = add nsw i64 %17, %conv38
  store i64 %add45, i64* %arrayidx44, align 8
  %18 = load i32, i32* %i26, align 4
  %rem46 = srem i32 %18, 100
  %cmp47 = icmp eq i32 %rem46, 0
  br i1 %cmp47, label %if.then, label %if.end

if.then:                                          ; preds = %for.body30
  %x49 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 0
  %19 = load i32, i32* %x49, align 4
  %y50 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 2
  %20 = load i32, i32* %y50, align 4
  %add51 = add nsw i32 %19, %20
  %21 = load i32, i32* %local2, align 4
  %mul52 = mul nsw i32 %add51, %21
  %z = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 4
  store i32 %mul52, i32* %z, align 4
  %z53 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 4
  %22 = load i32, i32* %z53, align 4
  %shr = ashr i32 %22, 1
  %23 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %add54 = add nsw i32 %shr, %23
  %x55 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 0
  store i32 %add54, i32* %x55, align 4
  %24 = load i32, i32* %local1, align 4
  %call56 = call i32 @rand() #3
  %rem57 = srem i32 %call56, 5
  %add58 = add nsw i32 %24, %rem57
  %rem59 = srem i32 %add58, 100
  store i32 %rem59, i32* %local2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body30
  %25 = load i32, i32* %i26, align 4
  %rem60 = srem i32 %25, 1000
  %cmp61 = icmp eq i32 %rem60, 0
  br i1 %cmp61, label %if.then63, label %if.end72

if.then63:                                        ; preds = %if.end
  %26 = load i32, i32* %var1, align 4
  %27 = load i32, i32* %var2, align 4
  %add64 = add nsw i32 %26, %27
  %28 = load i32, i32* %var3, align 4
  %mul65 = mul nsw i32 %add64, %28
  store i32 %mul65, i32* %var4, align 4
  %29 = load i32, i32* %var6, align 4
  %30 = load i32, i32* %var7, align 4
  %xor = xor i32 %29, %30
  %y66 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 2
  %31 = load i32, i32* %y66, align 4
  %add67 = add nsw i32 %xor, %31
  store i32 %add67, i32* %var5, align 4
  %32 = load i32, i32* %var5, align 4
  %rem68 = srem i32 %32, 10
  %call69 = call i32 @rand() #3
  %rem70 = srem i32 %call69, 5
  %add71 = add nsw i32 %rem68, %rem70
  store i32 %add71, i32* %var1, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then63, %if.end
  br label %for.inc73

for.inc73:                                        ; preds = %if.end72
  %33 = load i32, i32* %i26, align 4
  %inc74 = add nsw i32 %33, 1
  store i32 %inc74, i32* %i26, align 4
  br label %for.cond27

for.end75:                                        ; preds = %for.cond27
  %34 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 2), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i32 %34, i32 %35, i32 %36)
  %x77 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 0
  %37 = load i32, i32* %x77, align 4
  %y78 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 2
  %38 = load i32, i32* %y78, align 4
  %z79 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 4
  %39 = load i32, i32* %z79, align 4
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 %37, i32 %38, i32 %39)
  %40 = load i32, i32* %var4, align 4
  %41 = load i32, i32* %var5, align 4
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i32 %40, i32 %41)
  store i32 0, i32* %i82, align 4
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc92, %for.end75
  %42 = load i32, i32* %i82, align 4
  %cmp84 = icmp slt i32 %42, 10
  br i1 %cmp84, label %for.body86, label %for.end94

for.body86:                                       ; preds = %for.cond83
  %43 = load i32, i32* %i82, align 4
  %44 = load i32, i32* %i82, align 4
  %idxprom87 = sext i32 %44 to i64
  %arrayidx88 = getelementptr inbounds [10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 %idxprom87
  %45 = load i32, i32* %i82, align 4
  %idxprom89 = sext i32 %45 to i64
  %arrayidx90 = getelementptr inbounds [10 x i64], [10 x i64]* %arrayidx88, i64 0, i64 %idxprom89
  %46 = load i64, i64* %arrayidx90, align 8
  %call91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32 %43, i64 %46)
  br label %for.inc92

for.inc92:                                        ; preds = %for.body86
  %47 = load i32, i32* %i82, align 4
  %inc93 = add nsw i32 %47, 1
  store i32 %inc93, i32* %i82, align 4
  br label %for.cond83

for.end94:                                        ; preds = %for.cond83
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
