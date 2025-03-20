; ModuleID = '../NoArray.c'
source_filename = "../NoArray.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i32, [64 x i8], i32, [64 x i8], i32 }
%struct.anon = type { i32, i32, i32 }

@hot_data = common global %struct.anon.0 zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"\E6\A0\B8\E5\BF\83\E5\8F\98\E9\87\8F\EF\BC\9A\0Aa=%d\0Ab=%d\0Ac=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\E4\B8\AD\E9\97\B4\E5\8F\98\E9\87\8F\EF\BC\9Ax=%d y=%d z=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\E5\85\B6\E4\BB\96\E5\8F\98\E9\87\8F\EF\BC\9Avar4=%d var5=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %mid_vars = alloca %struct.anon, align 4
  %var1 = alloca i32, align 4
  %var2 = alloca i32, align 4
  %var3 = alloca i32, align 4
  %var4 = alloca i32, align 4
  %var5 = alloca i32, align 4
  %var6 = alloca i32, align 4
  %var7 = alloca i32, align 4
  %local1 = alloca i32, align 4
  %local2 = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #3
  %call1 = call i32 @rand() #3
  %rem = srem i32 %call1, 100
  store i32 %rem, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 0), align 4
  %call2 = call i32 @rand() #3
  %rem3 = srem i32 %call2, 100
  store i32 %rem3, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 2), align 4
  %call4 = call i32 @rand() #3
  %rem5 = srem i32 %call4, 100
  store i32 %rem5, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 4), align 4
  %call6 = call i32 @rand() #3
  %rem7 = srem i32 %call6, 100
  %x = getelementptr inbounds %struct.anon, %struct.anon* %mid_vars, i32 0, i32 0
  store i32 %rem7, i32* %x, align 4
  %call8 = call i32 @rand() #3
  %rem9 = srem i32 %call8, 100
  %y = getelementptr inbounds %struct.anon, %struct.anon* %mid_vars, i32 0, i32 1
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
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 40000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 2), align 4
  %mul = mul nsw i32 %1, 3
  %2 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 4), align 4
  %div = sdiv i32 %2, 2
  %sub = sub nsw i32 %mul, %div
  store i32 %sub, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 0), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 0), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 2), align 4
  %add = add nsw i32 %3, %4
  %rem21 = srem i32 %add, 100
  store i32 %rem21, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 4), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 4), align 4
  %or = or i32 %5, 1
  %6 = load i32, i32* %local1, align 4
  %add22 = add nsw i32 %or, %6
  store i32 %add22, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 2), align 4
  %7 = load i32, i32* %i, align 4
  %rem23 = srem i32 %7, 100
  %cmp24 = icmp eq i32 %rem23, 0
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %x26 = getelementptr inbounds %struct.anon, %struct.anon* %mid_vars, i32 0, i32 0
  %8 = load i32, i32* %x26, align 4
  %y27 = getelementptr inbounds %struct.anon, %struct.anon* %mid_vars, i32 0, i32 1
  %9 = load i32, i32* %y27, align 4
  %add28 = add nsw i32 %8, %9
  %10 = load i32, i32* %local2, align 4
  %mul29 = mul nsw i32 %add28, %10
  %z = getelementptr inbounds %struct.anon, %struct.anon* %mid_vars, i32 0, i32 2
  store i32 %mul29, i32* %z, align 4
  %z30 = getelementptr inbounds %struct.anon, %struct.anon* %mid_vars, i32 0, i32 2
  %11 = load i32, i32* %z30, align 4
  %shr = ashr i32 %11, 1
  %12 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 0), align 4
  %add31 = add nsw i32 %shr, %12
  %x32 = getelementptr inbounds %struct.anon, %struct.anon* %mid_vars, i32 0, i32 0
  store i32 %add31, i32* %x32, align 4
  %13 = load i32, i32* %local1, align 4
  %call33 = call i32 @rand() #3
  %rem34 = srem i32 %call33, 5
  %add35 = add nsw i32 %13, %rem34
  %rem36 = srem i32 %add35, 100
  store i32 %rem36, i32* %local2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load i32, i32* %i, align 4
  %rem37 = srem i32 %14, 1000
  %cmp38 = icmp eq i32 %rem37, 0
  br i1 %cmp38, label %if.then40, label %if.end49

if.then40:                                        ; preds = %if.end
  %15 = load i32, i32* %var1, align 4
  %16 = load i32, i32* %var2, align 4
  %add41 = add nsw i32 %15, %16
  %17 = load i32, i32* %var3, align 4
  %mul42 = mul nsw i32 %add41, %17
  store i32 %mul42, i32* %var4, align 4
  %18 = load i32, i32* %var6, align 4
  %19 = load i32, i32* %var7, align 4
  %xor = xor i32 %18, %19
  %y43 = getelementptr inbounds %struct.anon, %struct.anon* %mid_vars, i32 0, i32 1
  %20 = load i32, i32* %y43, align 4
  %add44 = add nsw i32 %xor, %20
  store i32 %add44, i32* %var5, align 4
  %21 = load i32, i32* %var5, align 4
  %rem45 = srem i32 %21, 10
  %call46 = call i32 @rand() #3
  %rem47 = srem i32 %call46, 5
  %add48 = add nsw i32 %rem45, %rem47
  store i32 %add48, i32* %var1, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then40, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end49
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 0), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 2), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.anon.0, %struct.anon.0* @hot_data, i32 0, i32 4), align 4
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i32 %23, i32 %24, i32 %25)
  %x51 = getelementptr inbounds %struct.anon, %struct.anon* %mid_vars, i32 0, i32 0
  %26 = load i32, i32* %x51, align 4
  %y52 = getelementptr inbounds %struct.anon, %struct.anon* %mid_vars, i32 0, i32 1
  %27 = load i32, i32* %y52, align 4
  %z53 = getelementptr inbounds %struct.anon, %struct.anon* %mid_vars, i32 0, i32 2
  %28 = load i32, i32* %z53, align 4
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 %26, i32 %27, i32 %28)
  %29 = load i32, i32* %var4, align 4
  %30 = load i32, i32* %var5, align 4
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i32 %29, i32 %30)
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
