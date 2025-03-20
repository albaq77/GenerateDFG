; ModuleID = 'c.c'
source_filename = "c.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, [64 x i8], i32, [64 x i8], i32 }
%struct.anon.0 = type { i32, i32, i32 }

@hot_data = common global %struct.anon zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"\E6\A0\B8\E5\BF\83\E5\8F\98\E9\87\8F\EF\BC\9A\0Aa=%d\0Ab=%d\0Ac=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\E4\B8\AD\E9\97\B4\E5\8F\98\E9\87\8F\EF\BC\9Ax=%d y=%d z=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\E5\85\B6\E4\BB\96\E5\8F\98\E9\87\8F\EF\BC\9Avar4=%d var5=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define void @f() #0 {
entry:
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 100
  store i32 %rem, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %0 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define void @g() #0 {
entry:
  %call = call i32 @rand() #3
  %rem = srem i32 %call, 100
  store i32 %rem, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  ret void
}

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
  %i = alloca i32, align 4
  %i52 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i64 @time(i64* null) #3
  %conv = trunc i64 %call to i32
  call void @srand(i32 %conv) #3
  call void @f()
  %call1 = call i32 @rand() #3
  %rem = srem i32 %call1, 100
  store i32 %rem, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  call void @g()
  %call2 = call i32 @rand() #3
  %rem3 = srem i32 %call2, 100
  %x = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 0
  store i32 %rem3, i32* %x, align 4
  %call4 = call i32 @rand() #3
  %rem5 = srem i32 %call4, 100
  %y = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 1
  store i32 %rem5, i32* %y, align 4
  %call6 = call i32 @rand() #3
  %rem7 = srem i32 %call6, 100
  store i32 %rem7, i32* %var1, align 4
  %call8 = call i32 @rand() #3
  %rem9 = srem i32 %call8, 100
  store i32 %rem9, i32* %var2, align 4
  %call10 = call i32 @rand() #3
  %rem11 = srem i32 %call10, 100
  store i32 %rem11, i32* %var3, align 4
  %call12 = call i32 @rand() #3
  %rem13 = srem i32 %call12, 100
  store i32 %rem13, i32* %local1, align 4
  %call14 = call i32 @rand() #3
  %rem15 = srem i32 %call14, 100
  store i32 %rem15, i32* %local2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 40000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %mul = mul nsw i32 %1, 3
  %2 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %div = sdiv i32 %2, 2
  %sub = sub nsw i32 %mul, %div
  store i32 %sub, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  call void @f()
  %3 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %add = add nsw i32 %3, %4
  %rem17 = srem i32 %add, 100
  store i32 %rem17, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %or = or i32 %5, 1
  %6 = load i32, i32* %local1, align 4
  %add18 = add nsw i32 %or, %6
  store i32 %add18, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %7 = load i32, i32* %i, align 4
  %rem19 = srem i32 %7, 100
  %cmp20 = icmp eq i32 %rem19, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %x22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 0
  %8 = load i32, i32* %x22, align 4
  %y23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 1
  %9 = load i32, i32* %y23, align 4
  %add24 = add nsw i32 %8, %9
  %10 = load i32, i32* %local2, align 4
  %mul25 = mul nsw i32 %add24, %10
  %z = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 2
  store i32 %mul25, i32* %z, align 4
  %z26 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 2
  %11 = load i32, i32* %z26, align 4
  %shr = ashr i32 %11, 1
  %12 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %add27 = add nsw i32 %shr, %12
  %x28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 0
  store i32 %add27, i32* %x28, align 4
  %13 = load i32, i32* %local1, align 4
  %call29 = call i32 @rand() #3
  %rem30 = srem i32 %call29, 5
  %add31 = add nsw i32 %13, %rem30
  %rem32 = srem i32 %add31, 100
  store i32 %rem32, i32* %local2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load i32, i32* %i, align 4
  %rem33 = srem i32 %14, 1000
  %cmp34 = icmp eq i32 %rem33, 0
  br i1 %cmp34, label %if.then36, label %if.end45

if.then36:                                        ; preds = %if.end
  %15 = load i32, i32* %var1, align 4
  %16 = load i32, i32* %var2, align 4
  %add37 = add nsw i32 %15, %16
  %17 = load i32, i32* %var3, align 4
  %mul38 = mul nsw i32 %add37, %17
  store i32 %mul38, i32* %var4, align 4
  %18 = load i32, i32* %var6, align 4
  %19 = load i32, i32* %var7, align 4
  %xor = xor i32 %18, %19
  %y39 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 1
  %20 = load i32, i32* %y39, align 4
  %add40 = add nsw i32 %xor, %20
  store i32 %add40, i32* %var5, align 4
  %21 = load i32, i32* %var5, align 4
  %rem41 = srem i32 %21, 10
  %call42 = call i32 @rand() #3
  %rem43 = srem i32 %call42, 5
  %add44 = add nsw i32 %rem41, %rem43
  store i32 %add44, i32* %var1, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then36, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end45
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %25 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i32 %23, i32 %24, i32 %25)
  %x47 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 0
  %26 = load i32, i32* %x47, align 4
  %y48 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 1
  %27 = load i32, i32* %y48, align 4
  %z49 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 2
  %28 = load i32, i32* %z49, align 4
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 %26, i32 %27, i32 %28)
  %29 = load i32, i32* %var4, align 4
  %30 = load i32, i32* %var5, align 4
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i32 %29, i32 %30)
  store i32 0, i32* %i52, align 4
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc96, %for.end
  %31 = load i32, i32* %i52, align 4
  %cmp54 = icmp slt i32 %31, 40000
  br i1 %cmp54, label %for.body56, label %for.end98

for.body56:                                       ; preds = %for.cond53
  %32 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %mul57 = mul nsw i32 %32, 3
  %33 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %div58 = sdiv i32 %33, 2
  %sub59 = sub nsw i32 %mul57, %div58
  store i32 %sub59, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %add60 = add nsw i32 %34, %35
  %rem61 = srem i32 %add60, 100
  store i32 %rem61, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 4), align 4
  %or62 = or i32 %36, 1
  %37 = load i32, i32* %local1, align 4
  %add63 = add nsw i32 %or62, %37
  store i32 %add63, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 2), align 4
  %38 = load i32, i32* %i52, align 4
  %rem64 = srem i32 %38, 100
  %cmp65 = icmp eq i32 %rem64, 0
  br i1 %cmp65, label %if.then67, label %if.end81

if.then67:                                        ; preds = %for.body56
  %x68 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 0
  %39 = load i32, i32* %x68, align 4
  %y69 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 1
  %40 = load i32, i32* %y69, align 4
  %add70 = add nsw i32 %39, %40
  %41 = load i32, i32* %local2, align 4
  %mul71 = mul nsw i32 %add70, %41
  %z72 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 2
  store i32 %mul71, i32* %z72, align 4
  %z73 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 2
  %42 = load i32, i32* %z73, align 4
  %shr74 = ashr i32 %42, 1
  %43 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @hot_data, i32 0, i32 0), align 4
  %add75 = add nsw i32 %shr74, %43
  %x76 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 0
  store i32 %add75, i32* %x76, align 4
  %44 = load i32, i32* %local1, align 4
  %call77 = call i32 @rand() #3
  %rem78 = srem i32 %call77, 5
  %add79 = add nsw i32 %44, %rem78
  %rem80 = srem i32 %add79, 100
  store i32 %rem80, i32* %local2, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then67, %for.body56
  %45 = load i32, i32* %i52, align 4
  %rem82 = srem i32 %45, 1000
  %cmp83 = icmp eq i32 %rem82, 0
  br i1 %cmp83, label %if.then85, label %if.end95

if.then85:                                        ; preds = %if.end81
  %46 = load i32, i32* %var1, align 4
  %47 = load i32, i32* %var2, align 4
  %add86 = add nsw i32 %46, %47
  %48 = load i32, i32* %var3, align 4
  %mul87 = mul nsw i32 %add86, %48
  store i32 %mul87, i32* %var4, align 4
  %49 = load i32, i32* %var6, align 4
  %50 = load i32, i32* %var7, align 4
  %xor88 = xor i32 %49, %50
  %y89 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 1
  %51 = load i32, i32* %y89, align 4
  %add90 = add nsw i32 %xor88, %51
  store i32 %add90, i32* %var5, align 4
  %52 = load i32, i32* %var5, align 4
  %rem91 = srem i32 %52, 10
  %call92 = call i32 @rand() #3
  %rem93 = srem i32 %call92, 5
  %add94 = add nsw i32 %rem91, %rem93
  store i32 %add94, i32* %var1, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then85, %if.end81
  br label %for.inc96

for.inc96:                                        ; preds = %if.end95
  %53 = load i32, i32* %i52, align 4
  %inc97 = add nsw i32 %53, 1
  store i32 %inc97, i32* %i52, align 4
  br label %for.cond53

for.end98:                                        ; preds = %for.cond53
  ret i32 0
}

; Function Attrs: nounwind
declare void @srand(i32) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0 (tags/RELEASE_600/final)"}
