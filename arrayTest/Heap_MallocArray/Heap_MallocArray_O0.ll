; ModuleID = '../Heap_MallocArray.c'
source_filename = "../Heap_MallocArray.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, [64 x i8], i32, [64 x i8], i32 }
%struct.anon.0 = type { i32, [32 x i8], i32, [32 x i8], i32 }

@hot_data = common global %struct.anon zeroinitializer, align 4
@mid_vars = common global %struct.anon.0 zeroinitializer, align 4
@var1 = common global i32 0, align 4
@var2 = common global i32 0, align 4
@var3 = common global i32 0, align 4
@var4 = common global i32 0, align 4
@var6 = common global i32 0, align 4
@var7 = common global i32 0, align 4
@var5 = common global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"\E6\A0\B8\E5\BF\83\E5\8F\98\E9\87\8F\EF\BC\9A\0Aa=%d\0Ab=%d\0Ac=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\E4\B8\AD\E9\97\B4\E5\8F\98\E9\87\8F\EF\BC\9Ax=%d y=%d z=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\E5\85\B6\E4\BB\96\E5\8F\98\E9\87\8F\EF\BC\9Avar4=%d var5=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"array: heapArray[%d]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %local1 = alloca i32, align 4
  %local2 = alloca i32, align 4
  %local3 = alloca i32, align 4
  %heapArray = alloca i32*, align 8
  %i = alloca i32, align 4
  %i24 = alloca i32, align 4
  %i73 = alloca i32, align 4
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
  %call20 = call noalias i8* @malloc(i64 40) #3
  %0 = bitcast i8* %call20 to i32*
  store i32* %0, i32** %heapArray, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call22 = call i32 @rand() #3
  %rem23 = srem i32 %call22, 100
  %add = add nsw i32 %rem23, 1
  %2 = load i32*, i32** %heapArray, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  store i32 %add, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i24, align 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc67, %for.end
  %5 = load i32, i32* %i24, align 4
  %cmp26 = icmp slt i32 %5, 40000
  br i1 %cmp26, label %for.body28, label %for.end69

for.body28:                                       ; preds = %for.cond25
  %6 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %mul = mul nsw i32 %6, 3
  %7 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %div = sdiv i32 %7, 2
  %sub = sub nsw i32 %mul, %div
  store i32 %sub, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %add29 = add nsw i32 %8, %9
  %rem30 = srem i32 %add29, 100
  store i32 %rem30, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %or = or i32 %10, 1
  %11 = load i32, i32* %local1, align 4
  %add31 = add nsw i32 %or, %11
  store i32 %add31, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %or32 = or i32 %12, 1
  %13 = load i32, i32* %local1, align 4
  %add33 = add nsw i32 %or32, %13
  %14 = load i32*, i32** %heapArray, align 8
  %15 = load i32, i32* %i24, align 4
  %rem34 = srem i32 %15, 10
  %idxprom35 = sext i32 %rem34 to i64
  %arrayidx36 = getelementptr inbounds i32, i32* %14, i64 %idxprom35
  %16 = load i32, i32* %arrayidx36, align 4
  %add37 = add nsw i32 %16, %add33
  store i32 %add37, i32* %arrayidx36, align 4
  %17 = load i32, i32* %i24, align 4
  %rem38 = srem i32 %17, 100
  %cmp39 = icmp eq i32 %rem38, 0
  br i1 %cmp39, label %if.then, label %if.end

if.then:                                          ; preds = %for.body28
  %18 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 0), align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 2), align 4
  %add41 = add nsw i32 %18, %19
  %20 = load i32, i32* %local2, align 4
  %mul42 = mul nsw i32 %add41, %20
  store i32 %mul42, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 4), align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 4), align 4
  %shr = ashr i32 %21, 1
  %22 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %add43 = add nsw i32 %shr, %22
  store i32 %add43, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 0), align 4
  %23 = load i32, i32* %local1, align 4
  %call44 = call i32 @rand() #3
  %rem45 = srem i32 %call44, 5
  %add46 = add nsw i32 %23, %rem45
  %rem47 = srem i32 %add46, 100
  store i32 %rem47, i32* %local2, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 4), align 4
  %shr48 = ashr i32 %24, 1
  %25 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %add49 = add nsw i32 %shr48, %25
  %26 = load i32*, i32** %heapArray, align 8
  %27 = load i32, i32* %i24, align 4
  %rem50 = srem i32 %27, 10
  %idxprom51 = sext i32 %rem50 to i64
  %arrayidx52 = getelementptr inbounds i32, i32* %26, i64 %idxprom51
  %28 = load i32, i32* %arrayidx52, align 4
  %add53 = add nsw i32 %28, %add49
  store i32 %add53, i32* %arrayidx52, align 4
  %29 = load i32*, i32** %heapArray, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx54, align 4
  store i32 %30, i32* %local3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body28
  %31 = load i32, i32* %i24, align 4
  %rem55 = srem i32 %31, 1000
  %cmp56 = icmp eq i32 %rem55, 0
  br i1 %cmp56, label %if.then58, label %if.end66

if.then58:                                        ; preds = %if.end
  %32 = load i32, i32* @var1, align 4
  %33 = load i32, i32* @var2, align 4
  %add59 = add nsw i32 %32, %33
  %34 = load i32, i32* @var3, align 4
  %mul60 = mul nsw i32 %add59, %34
  store i32 %mul60, i32* @var4, align 4
  %35 = load i32, i32* @var6, align 4
  %36 = load i32, i32* @var7, align 4
  %xor = xor i32 %35, %36
  %37 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 2), align 4
  %add61 = add nsw i32 %xor, %37
  store i32 %add61, i32* @var5, align 4
  %38 = load i32, i32* @var5, align 4
  %rem62 = srem i32 %38, 10
  %call63 = call i32 @rand() #3
  %rem64 = srem i32 %call63, 5
  %add65 = add nsw i32 %rem62, %rem64
  store i32 %add65, i32* @var1, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then58, %if.end
  br label %for.inc67

for.inc67:                                        ; preds = %if.end66
  %39 = load i32, i32* %i24, align 4
  %inc68 = add nsw i32 %39, 1
  store i32 %inc68, i32* %i24, align 4
  br label %for.cond25

for.end69:                                        ; preds = %for.cond25
  %40 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %call70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i32 %40, i32 %41, i32 %42)
  %43 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 0), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 2), align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @mid_vars, i32 0, i32 4), align 4
  %call71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 %43, i32 %44, i32 %45)
  %46 = load i32, i32* @var4, align 4
  %47 = load i32, i32* @var5, align 4
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i32 %46, i32 %47)
  store i32 0, i32* %i73, align 4
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc81, %for.end69
  %48 = load i32, i32* %i73, align 4
  %cmp75 = icmp slt i32 %48, 10
  br i1 %cmp75, label %for.body77, label %for.end83

for.body77:                                       ; preds = %for.cond74
  %49 = load i32, i32* %i73, align 4
  %50 = load i32*, i32** %heapArray, align 8
  %51 = load i32, i32* %i73, align 4
  %idxprom78 = sext i32 %51 to i64
  %arrayidx79 = getelementptr inbounds i32, i32* %50, i64 %idxprom78
  %52 = load i32, i32* %arrayidx79, align 4
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0), i32 %49, i32 %52)
  br label %for.inc81

for.inc81:                                        ; preds = %for.body77
  %53 = load i32, i32* %i73, align 4
  %inc82 = add nsw i32 %53, 1
  store i32 %inc82, i32* %i73, align 4
  br label %for.cond74

for.end83:                                        ; preds = %for.cond74
  %54 = load i32*, i32** %heapArray, align 8
  %55 = bitcast i32* %54 to i8*
  call void @free(i8* %55) #3
  ret i32 0
}

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
