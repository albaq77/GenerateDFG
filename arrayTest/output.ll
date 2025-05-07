; ModuleID = 'Stack_LocalArray.c'
source_filename = "Stack_LocalArray.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, [64 x i8], i32, [64 x i8], i32 }
%struct.anon.0 = type { i32, [32 x i8], i32, [32 x i8], i32 }

@main.hot_data = internal global %struct.anon zeroinitializer, align 4
@localArray = common global [10 x [10 x i64]] zeroinitializer, align 16
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
  %i85 = alloca i32, align 4
  %i112 = alloca i32, align 4
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

for.cond27:                                       ; preds = %for.inc103, %for.end
  %4 = load i32, i32* %i26, align 4
  %cmp28 = icmp slt i32 %4, 40000
  br i1 %cmp28, label %for.body30, label %for.end105

for.body30:                                       ; preds = %for.cond27
  %5 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 2), align 4
  %mul = mul nsw i32 %5, 3
  %6 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %div = sdiv i32 %6, 2
  %sub = sub nsw i32 %mul, %div
  store i32 %sub, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 2), align 4
  %add31 = add nsw i32 %7, %8
  %rem32 = srem i32 %add31, 100
  store i32 %rem32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %or = or i32 %9, 1
  %10 = load i32, i32* %local1, align 4
  %add33 = add nsw i32 %or, %10
  store i32 %add33, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 2), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %or34 = or i32 %11, 1
  %12 = load i32, i32* %local1, align 4
  %add35 = add nsw i32 %or34, %12
  %conv36 = sext i32 %add35 to i64
  %13 = load i32, i32* %i26, align 4
  %rem37 = srem i32 %13, 10
  %idxprom38 = sext i32 %rem37 to i64
  %arrayidx39 = getelementptr inbounds [10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 %idxprom38
  %14 = load i32, i32* %i26, align 4
  %rem40 = srem i32 %14, 10
  %idxprom41 = sext i32 %rem40 to i64
  %arrayidx42 = getelementptr inbounds [10 x i64], [10 x i64]* %arrayidx39, i64 0, i64 %idxprom41
  %15 = load i64, i64* %arrayidx42, align 8
  %add43 = add nsw i64 %15, %conv36
  store i64 %add43, i64* %arrayidx42, align 8
  %16 = load i32, i32* %i26, align 4
  %rem44 = srem i32 %16, 100
  %cmp45 = icmp eq i32 %rem44, 0
  br i1 %cmp45, label %if.then, label %if.end

if.then:                                          ; preds = %for.body30
  %x47 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 0
  %17 = load i32, i32* %x47, align 4
  %y48 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 2
  %18 = load i32, i32* %y48, align 4
  %add49 = add nsw i32 %17, %18
  %19 = load i32, i32* %local2, align 4
  %mul50 = mul nsw i32 %add49, %19
  %z = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 4
  store i32 %mul50, i32* %z, align 4
  %z51 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 4
  %20 = load i32, i32* %z51, align 4
  %shr = ashr i32 %20, 1
  %21 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %add52 = add nsw i32 %shr, %21
  %x53 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 0
  store i32 %add52, i32* %x53, align 4
  %22 = load i32, i32* %local1, align 4
  %call54 = call i32 @rand() #3
  %rem55 = srem i32 %call54, 5
  %add56 = add nsw i32 %22, %rem55
  %rem57 = srem i32 %add56, 100
  store i32 %rem57, i32* %local2, align 4
  %z58 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 4
  %23 = load i32, i32* %z58, align 4
  %shr59 = ashr i32 %23, 1
  %24 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %add60 = add nsw i32 %shr59, %24
  %conv61 = sext i32 %add60 to i64
  %25 = load i32, i32* %i26, align 4
  %rem62 = srem i32 %25, 10
  %idxprom63 = sext i32 %rem62 to i64
  %arrayidx64 = getelementptr inbounds [10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 %idxprom63
  %26 = load i32, i32* %i26, align 4
  %rem65 = srem i32 %26, 10
  %idxprom66 = sext i32 %rem65 to i64
  %arrayidx67 = getelementptr inbounds [10 x i64], [10 x i64]* %arrayidx64, i64 0, i64 %idxprom66
  %27 = load i64, i64* %arrayidx67, align 8
  %add68 = add nsw i64 %27, %conv61
  store i64 %add68, i64* %arrayidx67, align 8
  %28 = load i32, i32* %i26, align 4
  %rem69 = srem i32 %28, 10
  %idxprom70 = sext i32 %rem69 to i64
  %arrayidx71 = getelementptr inbounds [10 x i64], [10 x i64]* getelementptr inbounds ([10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 0), i64 0, i64 %idxprom70
  %29 = load i64, i64* %arrayidx71, align 8
  %conv72 = trunc i64 %29 to i32
  store i32 %conv72, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body30
  %30 = load i32, i32* %i26, align 4
  %rem73 = srem i32 %30, 1000
  %cmp74 = icmp eq i32 %rem73, 0
  br i1 %cmp74, label %if.then76, label %if.end102

if.then76:                                        ; preds = %if.end
  %31 = load i32, i32* %var1, align 4
  %32 = load i32, i32* %var2, align 4
  %add77 = add nsw i32 %31, %32
  %33 = load i32, i32* %var3, align 4
  %mul78 = mul nsw i32 %add77, %33
  store i32 %mul78, i32* %var4, align 4
  %34 = load i32, i32* %var6, align 4
  %35 = load i32, i32* %var7, align 4
  %xor = xor i32 %34, %35
  %y79 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 2
  %36 = load i32, i32* %y79, align 4
  %add80 = add nsw i32 %xor, %36
  store i32 %add80, i32* %var5, align 4
  %37 = load i32, i32* %var5, align 4
  %rem81 = srem i32 %37, 10
  %call82 = call i32 @rand() #3
  %rem83 = srem i32 %call82, 5
  %add84 = add nsw i32 %rem81, %rem83
  store i32 %add84, i32* %var1, align 4
  store i32 0, i32* %i85, align 4
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc99, %if.then76
  %38 = load i32, i32* %i85, align 4
  %cmp87 = icmp slt i32 %38, 10
  br i1 %cmp87, label %for.body89, label %for.end101

for.body89:                                       ; preds = %for.cond86
  %call90 = call i32 @rand() #3
  %rem91 = srem i32 %call90, 100
  %39 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %add92 = add nsw i32 %rem91, %39
  %conv93 = sext i32 %add92 to i64
  %40 = load i32, i32* %i85, align 4
  %idxprom94 = sext i32 %40 to i64
  %arrayidx95 = getelementptr inbounds [10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 %idxprom94
  %41 = load i32, i32* %i85, align 4
  %rem96 = srem i32 %41, 10
  %idxprom97 = sext i32 %rem96 to i64
  %arrayidx98 = getelementptr inbounds [10 x i64], [10 x i64]* %arrayidx95, i64 0, i64 %idxprom97
  store i64 %conv93, i64* %arrayidx98, align 8
  br label %for.inc99

for.inc99:                                        ; preds = %for.body89
  %42 = load i32, i32* %i85, align 4
  %inc100 = add nsw i32 %42, 1
  store i32 %inc100, i32* %i85, align 4
  br label %for.cond86

for.end101:                                       ; preds = %for.cond86
  br label %if.end102

if.end102:                                        ; preds = %for.end101, %if.end
  br label %for.inc103

for.inc103:                                       ; preds = %if.end102
  %43 = load i32, i32* %i26, align 4
  %inc104 = add nsw i32 %43, 1
  store i32 %inc104, i32* %i26, align 4
  br label %for.cond27

for.end105:                                       ; preds = %for.cond27
  %44 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 2), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0), i32 %44, i32 %45, i32 %46)
  %x107 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 0
  %47 = load i32, i32* %x107, align 4
  %y108 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 2
  %48 = load i32, i32* %y108, align 4
  %z109 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %mid_vars, i32 0, i32 4
  %49 = load i32, i32* %z109, align 4
  %call110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 %47, i32 %48, i32 %49)
  %50 = load i32, i32* %var4, align 4
  %51 = load i32, i32* %var5, align 4
  %call111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i32 %50, i32 %51)
  store i32 0, i32* %i112, align 4
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc122, %for.end105
  %52 = load i32, i32* %i112, align 4
  %cmp114 = icmp slt i32 %52, 10
  br i1 %cmp114, label %for.body116, label %for.end124

for.body116:                                      ; preds = %for.cond113
  %53 = load i32, i32* %i112, align 4
  %54 = load i32, i32* %i112, align 4
  %idxprom117 = sext i32 %54 to i64
  %arrayidx118 = getelementptr inbounds [10 x [10 x i64]], [10 x [10 x i64]]* @localArray, i64 0, i64 %idxprom117
  %55 = load i32, i32* %i112, align 4
  %idxprom119 = sext i32 %55 to i64
  %arrayidx120 = getelementptr inbounds [10 x i64], [10 x i64]* %arrayidx118, i64 0, i64 %idxprom119
  %56 = load i64, i64* %arrayidx120, align 8
  %call121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), i32 %53, i64 %56)
  br label %for.inc122

for.inc122:                                       ; preds = %for.body116
  %57 = load i32, i32* %i112, align 4
  %inc123 = add nsw i32 %57, 1
  store i32 %inc123, i32* %i112, align 4
  br label %for.cond113

for.end124:                                       ; preds = %for.cond113
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
