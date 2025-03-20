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
  %rem78 = srem i32 %rem9, 10
  br label %if.end

for.cond.cleanup29:                               ; preds = %for.inc100.99
  %0 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %1 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  %call103 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %1395, i32 %0, i32 %1)
  %call107 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %add51, i32 %rem9, i32 %mul49)
  %call108 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %var4.1.99, i32 %var5.1.99)
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

if.end:                                           ; preds = %for.inc100.99, %entry
  %i25.0178 = phi i32 [ 0, %entry ], [ %inc101.99, %for.inc100.99 ]
  %local2.0177.in = phi i32 [ %call18, %entry ], [ %add55, %for.inc100.99 ]
  %mid_vars.sroa.0.0175 = phi i32 [ %rem7, %entry ], [ %add51, %for.inc100.99 ]
  %var1.0174 = phi i32 [ %rem11, %entry ], [ %var1.1.99, %for.inc100.99 ]
  %var5.0173 = phi i32 [ undef, %entry ], [ %var5.1.99, %for.inc100.99 ]
  %var4.0172 = phi i32 [ undef, %entry ], [ %var4.1.99, %for.inc100.99 ]
  %local2.0177 = srem i32 %local2.0177.in, 100
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
  %14 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %add42 = add nsw i32 %add33, %14
  store i32 %add42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %add48 = add nsw i32 %mid_vars.sroa.0.0175, %rem9
  %mul49 = mul nsw i32 %local2.0177, %add48
  %shr = ashr i32 %mul49, 1
  %add51 = add nsw i32 %sub, %shr
  %call53 = tail call i32 @rand() #2
  %rem54 = srem i32 %call53, 5
  %add55 = add nsw i32 %rem54, %rem17
  %15 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add59 = add nsw i32 %15, %shr
  %16 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %add66 = add nsw i32 %add59, %16
  store i32 %add66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  store i32 %add66, i32* @main.hot_data.0, align 4, !tbaa !2
  %rem70 = urem i32 %i25.0178, 1000
  %cmp71 = icmp eq i32 %rem70, 0
  br i1 %cmp71, label %if.then73, label %if.end.1

if.then73:                                        ; preds = %if.end
  %add74 = add nsw i32 %var1.0174, %rem13
  %call79 = tail call i32 @rand() #2
  %rem80 = srem i32 %call79, 5
  %call88 = tail call i32 @rand() #2
  %rem89 = srem i32 %call88, 100
  %17 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90 = add nsw i32 %rem89, %17
  store i32 %add90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1 = tail call i32 @rand() #2
  %rem89.1 = srem i32 %call88.1, 100
  %18 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1 = add nsw i32 %rem89.1, %18
  store i32 %add90.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2 = tail call i32 @rand() #2
  %rem89.2 = srem i32 %call88.2, 100
  %19 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2 = add nsw i32 %rem89.2, %19
  store i32 %add90.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3 = tail call i32 @rand() #2
  %rem89.3 = srem i32 %call88.3, 100
  %20 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3 = add nsw i32 %rem89.3, %20
  store i32 %add90.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4 = tail call i32 @rand() #2
  %rem89.4 = srem i32 %call88.4, 100
  %21 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4 = add nsw i32 %rem89.4, %21
  store i32 %add90.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5 = tail call i32 @rand() #2
  %rem89.5 = srem i32 %call88.5, 100
  %22 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5 = add nsw i32 %rem89.5, %22
  store i32 %add90.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6 = tail call i32 @rand() #2
  %rem89.6 = srem i32 %call88.6, 100
  %23 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6 = add nsw i32 %rem89.6, %23
  store i32 %add90.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7 = tail call i32 @rand() #2
  %rem89.7 = srem i32 %call88.7, 100
  %24 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7 = add nsw i32 %rem89.7, %24
  store i32 %add90.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8 = tail call i32 @rand() #2
  %rem89.8 = srem i32 %call88.8, 100
  %25 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8 = add nsw i32 %rem89.8, %25
  store i32 %add90.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9 = tail call i32 @rand() #2
  %rem89.9 = srem i32 %call88.9, 100
  %26 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9 = add nsw i32 %rem89.9, %26
  store i32 %add90.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75 = mul nsw i32 %add74, %rem15
  %add81 = add nsw i32 %rem80, %rem78
  br label %if.end.1

if.end.1:                                         ; preds = %if.end, %if.then73
  %var4.1 = phi i32 [ %var4.0172, %if.end ], [ %mul75, %if.then73 ]
  %var5.1 = phi i32 [ %var5.0173, %if.end ], [ %rem9, %if.then73 ]
  %var1.1 = phi i32 [ %var1.0174, %if.end ], [ %add81, %if.then73 ]
  %inc101 = or i32 %i25.0178, 1
  %27 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %mul.1 = mul nsw i32 %27, 3
  %28 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  %div.1 = sdiv i32 %28, 2
  %sub.1 = sub nsw i32 %mul.1, %div.1
  store i32 %sub.1, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.1 = add nsw i32 %sub.1, %27
  %rem32.1 = srem i32 %add31.1, 100
  store i32 %rem32.1, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.1 = or i32 %rem32.1, 1
  %add33.1 = add nsw i32 %or.1, %rem17
  store i32 %add33.1, i32* @main.hot_data.2, align 4, !tbaa !7
  %29 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %add42.1 = add nsw i32 %add33.1, %29
  store i32 %add42.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %rem70.1 = urem i32 %inc101, 1000
  %cmp71.1 = icmp eq i32 %rem70.1, 0
  br i1 %cmp71.1, label %if.then73.1, label %if.end.2

if.then73.1:                                      ; preds = %if.end.1
  %add74.1 = add nsw i32 %var1.1, %rem13
  %call79.1 = tail call i32 @rand() #2
  %rem80.1 = srem i32 %call79.1, 5
  %call88.1180 = tail call i32 @rand() #2
  %rem89.1181 = srem i32 %call88.1180, 100
  %30 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1182 = add nsw i32 %rem89.1181, %30
  store i32 %add90.1182, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.1 = tail call i32 @rand() #2
  %rem89.1.1 = srem i32 %call88.1.1, 100
  %31 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.1 = add nsw i32 %rem89.1.1, %31
  store i32 %add90.1.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.1 = tail call i32 @rand() #2
  %rem89.2.1 = srem i32 %call88.2.1, 100
  %32 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.1 = add nsw i32 %rem89.2.1, %32
  store i32 %add90.2.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.1 = tail call i32 @rand() #2
  %rem89.3.1 = srem i32 %call88.3.1, 100
  %33 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.1 = add nsw i32 %rem89.3.1, %33
  store i32 %add90.3.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.1 = tail call i32 @rand() #2
  %rem89.4.1 = srem i32 %call88.4.1, 100
  %34 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.1 = add nsw i32 %rem89.4.1, %34
  store i32 %add90.4.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.1 = tail call i32 @rand() #2
  %rem89.5.1 = srem i32 %call88.5.1, 100
  %35 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.1 = add nsw i32 %rem89.5.1, %35
  store i32 %add90.5.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.1 = tail call i32 @rand() #2
  %rem89.6.1 = srem i32 %call88.6.1, 100
  %36 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.1 = add nsw i32 %rem89.6.1, %36
  store i32 %add90.6.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.1 = tail call i32 @rand() #2
  %rem89.7.1 = srem i32 %call88.7.1, 100
  %37 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.1 = add nsw i32 %rem89.7.1, %37
  store i32 %add90.7.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.1 = tail call i32 @rand() #2
  %rem89.8.1 = srem i32 %call88.8.1, 100
  %38 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.1 = add nsw i32 %rem89.8.1, %38
  store i32 %add90.8.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.1 = tail call i32 @rand() #2
  %rem89.9.1 = srem i32 %call88.9.1, 100
  %39 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.1 = add nsw i32 %rem89.9.1, %39
  store i32 %add90.9.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.1 = mul nsw i32 %add74.1, %rem15
  %add81.1 = add nsw i32 %rem80.1, %rem78
  %.pre = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre207 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.2

if.end.2:                                         ; preds = %if.end.1, %if.then73.1
  %40 = phi i32 [ %rem32.1, %if.end.1 ], [ %.pre207, %if.then73.1 ]
  %41 = phi i32 [ %add33.1, %if.end.1 ], [ %.pre, %if.then73.1 ]
  %var4.1.1 = phi i32 [ %var4.1, %if.end.1 ], [ %mul75.1, %if.then73.1 ]
  %var5.1.1 = phi i32 [ %var5.1, %if.end.1 ], [ %rem9, %if.then73.1 ]
  %var1.1.1 = phi i32 [ %var1.1, %if.end.1 ], [ %add81.1, %if.then73.1 ]
  %inc101.1 = or i32 %i25.0178, 2
  %mul.2 = mul nsw i32 %41, 3
  %div.2 = sdiv i32 %40, 2
  %sub.2 = sub nsw i32 %mul.2, %div.2
  store i32 %sub.2, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.2 = add nsw i32 %sub.2, %41
  %rem32.2 = srem i32 %add31.2, 100
  store i32 %rem32.2, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.2 = or i32 %rem32.2, 1
  %add33.2 = add nsw i32 %or.2, %rem17
  store i32 %add33.2, i32* @main.hot_data.2, align 4, !tbaa !7
  %42 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %add42.2 = add nsw i32 %add33.2, %42
  store i32 %add42.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %rem70.2 = urem i32 %inc101.1, 1000
  %cmp71.2 = icmp eq i32 %rem70.2, 0
  br i1 %cmp71.2, label %if.then73.2, label %if.end.3

if.then73.2:                                      ; preds = %if.end.2
  %add74.2 = add nsw i32 %var1.1.1, %rem13
  %call79.2 = tail call i32 @rand() #2
  %rem80.2 = srem i32 %call79.2, 5
  %call88.2183 = tail call i32 @rand() #2
  %rem89.2184 = srem i32 %call88.2183, 100
  %43 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2185 = add nsw i32 %rem89.2184, %43
  store i32 %add90.2185, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.2 = tail call i32 @rand() #2
  %rem89.1.2 = srem i32 %call88.1.2, 100
  %44 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.2 = add nsw i32 %rem89.1.2, %44
  store i32 %add90.1.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.2 = tail call i32 @rand() #2
  %rem89.2.2 = srem i32 %call88.2.2, 100
  %45 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.2 = add nsw i32 %rem89.2.2, %45
  store i32 %add90.2.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.2 = tail call i32 @rand() #2
  %rem89.3.2 = srem i32 %call88.3.2, 100
  %46 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.2 = add nsw i32 %rem89.3.2, %46
  store i32 %add90.3.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.2 = tail call i32 @rand() #2
  %rem89.4.2 = srem i32 %call88.4.2, 100
  %47 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.2 = add nsw i32 %rem89.4.2, %47
  store i32 %add90.4.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.2 = tail call i32 @rand() #2
  %rem89.5.2 = srem i32 %call88.5.2, 100
  %48 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.2 = add nsw i32 %rem89.5.2, %48
  store i32 %add90.5.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.2 = tail call i32 @rand() #2
  %rem89.6.2 = srem i32 %call88.6.2, 100
  %49 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.2 = add nsw i32 %rem89.6.2, %49
  store i32 %add90.6.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.2 = tail call i32 @rand() #2
  %rem89.7.2 = srem i32 %call88.7.2, 100
  %50 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.2 = add nsw i32 %rem89.7.2, %50
  store i32 %add90.7.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.2 = tail call i32 @rand() #2
  %rem89.8.2 = srem i32 %call88.8.2, 100
  %51 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.2 = add nsw i32 %rem89.8.2, %51
  store i32 %add90.8.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.2 = tail call i32 @rand() #2
  %rem89.9.2 = srem i32 %call88.9.2, 100
  %52 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.2 = add nsw i32 %rem89.9.2, %52
  store i32 %add90.9.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.2 = mul nsw i32 %add74.2, %rem15
  %add81.2 = add nsw i32 %rem80.2, %rem78
  %.pre208 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre209 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.3

if.end.3:                                         ; preds = %if.end.2, %if.then73.2
  %53 = phi i32 [ %rem32.2, %if.end.2 ], [ %.pre209, %if.then73.2 ]
  %54 = phi i32 [ %add33.2, %if.end.2 ], [ %.pre208, %if.then73.2 ]
  %var4.1.2 = phi i32 [ %var4.1.1, %if.end.2 ], [ %mul75.2, %if.then73.2 ]
  %var5.1.2 = phi i32 [ %var5.1.1, %if.end.2 ], [ %rem9, %if.then73.2 ]
  %var1.1.2 = phi i32 [ %var1.1.1, %if.end.2 ], [ %add81.2, %if.then73.2 ]
  %inc101.2 = or i32 %i25.0178, 3
  %mul.3 = mul nsw i32 %54, 3
  %div.3 = sdiv i32 %53, 2
  %sub.3 = sub nsw i32 %mul.3, %div.3
  store i32 %sub.3, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.3 = add nsw i32 %sub.3, %54
  %rem32.3 = srem i32 %add31.3, 100
  store i32 %rem32.3, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.3 = or i32 %rem32.3, 1
  %add33.3 = add nsw i32 %or.3, %rem17
  store i32 %add33.3, i32* @main.hot_data.2, align 4, !tbaa !7
  %55 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %add42.3 = add nsw i32 %add33.3, %55
  store i32 %add42.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %rem70.3 = urem i32 %inc101.2, 1000
  %cmp71.3 = icmp eq i32 %rem70.3, 0
  br i1 %cmp71.3, label %if.then73.3, label %if.end.4

if.then73.3:                                      ; preds = %if.end.3
  %add74.3 = add nsw i32 %var1.1.2, %rem13
  %call79.3 = tail call i32 @rand() #2
  %rem80.3 = srem i32 %call79.3, 5
  %call88.3186 = tail call i32 @rand() #2
  %rem89.3187 = srem i32 %call88.3186, 100
  %56 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3188 = add nsw i32 %rem89.3187, %56
  store i32 %add90.3188, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.3 = tail call i32 @rand() #2
  %rem89.1.3 = srem i32 %call88.1.3, 100
  %57 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.3 = add nsw i32 %rem89.1.3, %57
  store i32 %add90.1.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.3 = tail call i32 @rand() #2
  %rem89.2.3 = srem i32 %call88.2.3, 100
  %58 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.3 = add nsw i32 %rem89.2.3, %58
  store i32 %add90.2.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.3 = tail call i32 @rand() #2
  %rem89.3.3 = srem i32 %call88.3.3, 100
  %59 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.3 = add nsw i32 %rem89.3.3, %59
  store i32 %add90.3.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.3 = tail call i32 @rand() #2
  %rem89.4.3 = srem i32 %call88.4.3, 100
  %60 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.3 = add nsw i32 %rem89.4.3, %60
  store i32 %add90.4.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.3 = tail call i32 @rand() #2
  %rem89.5.3 = srem i32 %call88.5.3, 100
  %61 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.3 = add nsw i32 %rem89.5.3, %61
  store i32 %add90.5.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.3 = tail call i32 @rand() #2
  %rem89.6.3 = srem i32 %call88.6.3, 100
  %62 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.3 = add nsw i32 %rem89.6.3, %62
  store i32 %add90.6.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.3 = tail call i32 @rand() #2
  %rem89.7.3 = srem i32 %call88.7.3, 100
  %63 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.3 = add nsw i32 %rem89.7.3, %63
  store i32 %add90.7.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.3 = tail call i32 @rand() #2
  %rem89.8.3 = srem i32 %call88.8.3, 100
  %64 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.3 = add nsw i32 %rem89.8.3, %64
  store i32 %add90.8.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.3 = tail call i32 @rand() #2
  %rem89.9.3 = srem i32 %call88.9.3, 100
  %65 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.3 = add nsw i32 %rem89.9.3, %65
  store i32 %add90.9.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.3 = mul nsw i32 %add74.3, %rem15
  %add81.3 = add nsw i32 %rem80.3, %rem78
  %.pre210 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre211 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.4

if.end.4:                                         ; preds = %if.end.3, %if.then73.3
  %66 = phi i32 [ %rem32.3, %if.end.3 ], [ %.pre211, %if.then73.3 ]
  %67 = phi i32 [ %add33.3, %if.end.3 ], [ %.pre210, %if.then73.3 ]
  %var4.1.3 = phi i32 [ %var4.1.2, %if.end.3 ], [ %mul75.3, %if.then73.3 ]
  %var5.1.3 = phi i32 [ %var5.1.2, %if.end.3 ], [ %rem9, %if.then73.3 ]
  %var1.1.3 = phi i32 [ %var1.1.2, %if.end.3 ], [ %add81.3, %if.then73.3 ]
  %inc101.3 = add nuw nsw i32 %i25.0178, 4
  %mul.4 = mul nsw i32 %67, 3
  %div.4 = sdiv i32 %66, 2
  %sub.4 = sub nsw i32 %mul.4, %div.4
  store i32 %sub.4, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.4 = add nsw i32 %sub.4, %67
  %rem32.4 = srem i32 %add31.4, 100
  store i32 %rem32.4, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.4 = or i32 %rem32.4, 1
  %add33.4 = add nsw i32 %or.4, %rem17
  store i32 %add33.4, i32* @main.hot_data.2, align 4, !tbaa !7
  %68 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %add42.4 = add nsw i32 %add33.4, %68
  store i32 %add42.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %rem70.4 = urem i32 %inc101.3, 1000
  %cmp71.4 = icmp eq i32 %rem70.4, 0
  br i1 %cmp71.4, label %if.then73.4, label %if.end.5

if.then73.4:                                      ; preds = %if.end.4
  %add74.4 = add nsw i32 %var1.1.3, %rem13
  %call79.4 = tail call i32 @rand() #2
  %rem80.4 = srem i32 %call79.4, 5
  %call88.4189 = tail call i32 @rand() #2
  %rem89.4190 = srem i32 %call88.4189, 100
  %69 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4191 = add nsw i32 %rem89.4190, %69
  store i32 %add90.4191, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.4 = tail call i32 @rand() #2
  %rem89.1.4 = srem i32 %call88.1.4, 100
  %70 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.4 = add nsw i32 %rem89.1.4, %70
  store i32 %add90.1.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.4 = tail call i32 @rand() #2
  %rem89.2.4 = srem i32 %call88.2.4, 100
  %71 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.4 = add nsw i32 %rem89.2.4, %71
  store i32 %add90.2.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.4 = tail call i32 @rand() #2
  %rem89.3.4 = srem i32 %call88.3.4, 100
  %72 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.4 = add nsw i32 %rem89.3.4, %72
  store i32 %add90.3.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.4 = tail call i32 @rand() #2
  %rem89.4.4 = srem i32 %call88.4.4, 100
  %73 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.4 = add nsw i32 %rem89.4.4, %73
  store i32 %add90.4.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.4 = tail call i32 @rand() #2
  %rem89.5.4 = srem i32 %call88.5.4, 100
  %74 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.4 = add nsw i32 %rem89.5.4, %74
  store i32 %add90.5.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.4 = tail call i32 @rand() #2
  %rem89.6.4 = srem i32 %call88.6.4, 100
  %75 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.4 = add nsw i32 %rem89.6.4, %75
  store i32 %add90.6.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.4 = tail call i32 @rand() #2
  %rem89.7.4 = srem i32 %call88.7.4, 100
  %76 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.4 = add nsw i32 %rem89.7.4, %76
  store i32 %add90.7.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.4 = tail call i32 @rand() #2
  %rem89.8.4 = srem i32 %call88.8.4, 100
  %77 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.4 = add nsw i32 %rem89.8.4, %77
  store i32 %add90.8.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.4 = tail call i32 @rand() #2
  %rem89.9.4 = srem i32 %call88.9.4, 100
  %78 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.4 = add nsw i32 %rem89.9.4, %78
  store i32 %add90.9.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.4 = mul nsw i32 %add74.4, %rem15
  %add81.4 = add nsw i32 %rem80.4, %rem78
  %.pre212 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre213 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.5

if.end.5:                                         ; preds = %if.end.4, %if.then73.4
  %79 = phi i32 [ %rem32.4, %if.end.4 ], [ %.pre213, %if.then73.4 ]
  %80 = phi i32 [ %add33.4, %if.end.4 ], [ %.pre212, %if.then73.4 ]
  %var4.1.4 = phi i32 [ %var4.1.3, %if.end.4 ], [ %mul75.4, %if.then73.4 ]
  %var5.1.4 = phi i32 [ %var5.1.3, %if.end.4 ], [ %rem9, %if.then73.4 ]
  %var1.1.4 = phi i32 [ %var1.1.3, %if.end.4 ], [ %add81.4, %if.then73.4 ]
  %inc101.4 = add nuw nsw i32 %i25.0178, 5
  %mul.5 = mul nsw i32 %80, 3
  %div.5 = sdiv i32 %79, 2
  %sub.5 = sub nsw i32 %mul.5, %div.5
  store i32 %sub.5, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.5 = add nsw i32 %sub.5, %80
  %rem32.5 = srem i32 %add31.5, 100
  store i32 %rem32.5, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.5 = or i32 %rem32.5, 1
  %add33.5 = add nsw i32 %or.5, %rem17
  store i32 %add33.5, i32* @main.hot_data.2, align 4, !tbaa !7
  %81 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %add42.5 = add nsw i32 %add33.5, %81
  store i32 %add42.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %rem70.5 = urem i32 %inc101.4, 1000
  %cmp71.5 = icmp eq i32 %rem70.5, 0
  br i1 %cmp71.5, label %if.then73.5, label %if.end.6

if.then73.5:                                      ; preds = %if.end.5
  %add74.5 = add nsw i32 %var1.1.4, %rem13
  %call79.5 = tail call i32 @rand() #2
  %rem80.5 = srem i32 %call79.5, 5
  %call88.5192 = tail call i32 @rand() #2
  %rem89.5193 = srem i32 %call88.5192, 100
  %82 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5194 = add nsw i32 %rem89.5193, %82
  store i32 %add90.5194, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.5 = tail call i32 @rand() #2
  %rem89.1.5 = srem i32 %call88.1.5, 100
  %83 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.5 = add nsw i32 %rem89.1.5, %83
  store i32 %add90.1.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.5 = tail call i32 @rand() #2
  %rem89.2.5 = srem i32 %call88.2.5, 100
  %84 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.5 = add nsw i32 %rem89.2.5, %84
  store i32 %add90.2.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.5 = tail call i32 @rand() #2
  %rem89.3.5 = srem i32 %call88.3.5, 100
  %85 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.5 = add nsw i32 %rem89.3.5, %85
  store i32 %add90.3.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.5 = tail call i32 @rand() #2
  %rem89.4.5 = srem i32 %call88.4.5, 100
  %86 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.5 = add nsw i32 %rem89.4.5, %86
  store i32 %add90.4.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.5 = tail call i32 @rand() #2
  %rem89.5.5 = srem i32 %call88.5.5, 100
  %87 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.5 = add nsw i32 %rem89.5.5, %87
  store i32 %add90.5.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.5 = tail call i32 @rand() #2
  %rem89.6.5 = srem i32 %call88.6.5, 100
  %88 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.5 = add nsw i32 %rem89.6.5, %88
  store i32 %add90.6.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.5 = tail call i32 @rand() #2
  %rem89.7.5 = srem i32 %call88.7.5, 100
  %89 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.5 = add nsw i32 %rem89.7.5, %89
  store i32 %add90.7.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.5 = tail call i32 @rand() #2
  %rem89.8.5 = srem i32 %call88.8.5, 100
  %90 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.5 = add nsw i32 %rem89.8.5, %90
  store i32 %add90.8.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.5 = tail call i32 @rand() #2
  %rem89.9.5 = srem i32 %call88.9.5, 100
  %91 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.5 = add nsw i32 %rem89.9.5, %91
  store i32 %add90.9.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.5 = mul nsw i32 %add74.5, %rem15
  %add81.5 = add nsw i32 %rem80.5, %rem78
  %.pre214 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre215 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %if.then73.5
  %92 = phi i32 [ %rem32.5, %if.end.5 ], [ %.pre215, %if.then73.5 ]
  %93 = phi i32 [ %add33.5, %if.end.5 ], [ %.pre214, %if.then73.5 ]
  %var4.1.5 = phi i32 [ %var4.1.4, %if.end.5 ], [ %mul75.5, %if.then73.5 ]
  %var5.1.5 = phi i32 [ %var5.1.4, %if.end.5 ], [ %rem9, %if.then73.5 ]
  %var1.1.5 = phi i32 [ %var1.1.4, %if.end.5 ], [ %add81.5, %if.then73.5 ]
  %inc101.5 = add nuw nsw i32 %i25.0178, 6
  %mul.6 = mul nsw i32 %93, 3
  %div.6 = sdiv i32 %92, 2
  %sub.6 = sub nsw i32 %mul.6, %div.6
  store i32 %sub.6, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.6 = add nsw i32 %sub.6, %93
  %rem32.6 = srem i32 %add31.6, 100
  store i32 %rem32.6, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.6 = or i32 %rem32.6, 1
  %add33.6 = add nsw i32 %or.6, %rem17
  store i32 %add33.6, i32* @main.hot_data.2, align 4, !tbaa !7
  %94 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %add42.6 = add nsw i32 %add33.6, %94
  store i32 %add42.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %rem70.6 = urem i32 %inc101.5, 1000
  %cmp71.6 = icmp eq i32 %rem70.6, 0
  br i1 %cmp71.6, label %if.then73.6, label %if.end.7

if.then73.6:                                      ; preds = %if.end.6
  %add74.6 = add nsw i32 %var1.1.5, %rem13
  %call79.6 = tail call i32 @rand() #2
  %rem80.6 = srem i32 %call79.6, 5
  %call88.6195 = tail call i32 @rand() #2
  %rem89.6196 = srem i32 %call88.6195, 100
  %95 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6197 = add nsw i32 %rem89.6196, %95
  store i32 %add90.6197, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.6 = tail call i32 @rand() #2
  %rem89.1.6 = srem i32 %call88.1.6, 100
  %96 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.6 = add nsw i32 %rem89.1.6, %96
  store i32 %add90.1.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.6 = tail call i32 @rand() #2
  %rem89.2.6 = srem i32 %call88.2.6, 100
  %97 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.6 = add nsw i32 %rem89.2.6, %97
  store i32 %add90.2.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.6 = tail call i32 @rand() #2
  %rem89.3.6 = srem i32 %call88.3.6, 100
  %98 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.6 = add nsw i32 %rem89.3.6, %98
  store i32 %add90.3.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.6 = tail call i32 @rand() #2
  %rem89.4.6 = srem i32 %call88.4.6, 100
  %99 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.6 = add nsw i32 %rem89.4.6, %99
  store i32 %add90.4.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.6 = tail call i32 @rand() #2
  %rem89.5.6 = srem i32 %call88.5.6, 100
  %100 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.6 = add nsw i32 %rem89.5.6, %100
  store i32 %add90.5.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.6 = tail call i32 @rand() #2
  %rem89.6.6 = srem i32 %call88.6.6, 100
  %101 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.6 = add nsw i32 %rem89.6.6, %101
  store i32 %add90.6.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.6 = tail call i32 @rand() #2
  %rem89.7.6 = srem i32 %call88.7.6, 100
  %102 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.6 = add nsw i32 %rem89.7.6, %102
  store i32 %add90.7.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.6 = tail call i32 @rand() #2
  %rem89.8.6 = srem i32 %call88.8.6, 100
  %103 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.6 = add nsw i32 %rem89.8.6, %103
  store i32 %add90.8.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.6 = tail call i32 @rand() #2
  %rem89.9.6 = srem i32 %call88.9.6, 100
  %104 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.6 = add nsw i32 %rem89.9.6, %104
  store i32 %add90.9.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.6 = mul nsw i32 %add74.6, %rem15
  %add81.6 = add nsw i32 %rem80.6, %rem78
  %.pre216 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre217 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.then73.6
  %105 = phi i32 [ %rem32.6, %if.end.6 ], [ %.pre217, %if.then73.6 ]
  %106 = phi i32 [ %add33.6, %if.end.6 ], [ %.pre216, %if.then73.6 ]
  %var4.1.6 = phi i32 [ %var4.1.5, %if.end.6 ], [ %mul75.6, %if.then73.6 ]
  %var5.1.6 = phi i32 [ %var5.1.5, %if.end.6 ], [ %rem9, %if.then73.6 ]
  %var1.1.6 = phi i32 [ %var1.1.5, %if.end.6 ], [ %add81.6, %if.then73.6 ]
  %inc101.6 = add nuw nsw i32 %i25.0178, 7
  %mul.7 = mul nsw i32 %106, 3
  %div.7 = sdiv i32 %105, 2
  %sub.7 = sub nsw i32 %mul.7, %div.7
  store i32 %sub.7, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.7 = add nsw i32 %sub.7, %106
  %rem32.7 = srem i32 %add31.7, 100
  store i32 %rem32.7, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.7 = or i32 %rem32.7, 1
  %add33.7 = add nsw i32 %or.7, %rem17
  store i32 %add33.7, i32* @main.hot_data.2, align 4, !tbaa !7
  %107 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %add42.7 = add nsw i32 %add33.7, %107
  store i32 %add42.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %rem70.7 = urem i32 %inc101.6, 1000
  %cmp71.7 = icmp eq i32 %rem70.7, 0
  br i1 %cmp71.7, label %if.then73.7, label %if.end.8

if.then73.7:                                      ; preds = %if.end.7
  %add74.7 = add nsw i32 %var1.1.6, %rem13
  %call79.7 = tail call i32 @rand() #2
  %rem80.7 = srem i32 %call79.7, 5
  %call88.7198 = tail call i32 @rand() #2
  %rem89.7199 = srem i32 %call88.7198, 100
  %108 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7200 = add nsw i32 %rem89.7199, %108
  store i32 %add90.7200, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.7 = tail call i32 @rand() #2
  %rem89.1.7 = srem i32 %call88.1.7, 100
  %109 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.7 = add nsw i32 %rem89.1.7, %109
  store i32 %add90.1.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.7 = tail call i32 @rand() #2
  %rem89.2.7 = srem i32 %call88.2.7, 100
  %110 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.7 = add nsw i32 %rem89.2.7, %110
  store i32 %add90.2.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.7 = tail call i32 @rand() #2
  %rem89.3.7 = srem i32 %call88.3.7, 100
  %111 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.7 = add nsw i32 %rem89.3.7, %111
  store i32 %add90.3.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.7 = tail call i32 @rand() #2
  %rem89.4.7 = srem i32 %call88.4.7, 100
  %112 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.7 = add nsw i32 %rem89.4.7, %112
  store i32 %add90.4.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.7 = tail call i32 @rand() #2
  %rem89.5.7 = srem i32 %call88.5.7, 100
  %113 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.7 = add nsw i32 %rem89.5.7, %113
  store i32 %add90.5.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.7 = tail call i32 @rand() #2
  %rem89.6.7 = srem i32 %call88.6.7, 100
  %114 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.7 = add nsw i32 %rem89.6.7, %114
  store i32 %add90.6.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.7 = tail call i32 @rand() #2
  %rem89.7.7 = srem i32 %call88.7.7, 100
  %115 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.7 = add nsw i32 %rem89.7.7, %115
  store i32 %add90.7.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.7 = tail call i32 @rand() #2
  %rem89.8.7 = srem i32 %call88.8.7, 100
  %116 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.7 = add nsw i32 %rem89.8.7, %116
  store i32 %add90.8.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.7 = tail call i32 @rand() #2
  %rem89.9.7 = srem i32 %call88.9.7, 100
  %117 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.7 = add nsw i32 %rem89.9.7, %117
  store i32 %add90.9.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.7 = mul nsw i32 %add74.7, %rem15
  %add81.7 = add nsw i32 %rem80.7, %rem78
  %.pre218 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre219 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then73.7
  %118 = phi i32 [ %rem32.7, %if.end.7 ], [ %.pre219, %if.then73.7 ]
  %119 = phi i32 [ %add33.7, %if.end.7 ], [ %.pre218, %if.then73.7 ]
  %var4.1.7 = phi i32 [ %var4.1.6, %if.end.7 ], [ %mul75.7, %if.then73.7 ]
  %var5.1.7 = phi i32 [ %var5.1.6, %if.end.7 ], [ %rem9, %if.then73.7 ]
  %var1.1.7 = phi i32 [ %var1.1.6, %if.end.7 ], [ %add81.7, %if.then73.7 ]
  %inc101.7 = add nuw nsw i32 %i25.0178, 8
  %mul.8 = mul nsw i32 %119, 3
  %div.8 = sdiv i32 %118, 2
  %sub.8 = sub nsw i32 %mul.8, %div.8
  store i32 %sub.8, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.8 = add nsw i32 %sub.8, %119
  %rem32.8 = srem i32 %add31.8, 100
  store i32 %rem32.8, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.8 = or i32 %rem32.8, 1
  %add33.8 = add nsw i32 %or.8, %rem17
  store i32 %add33.8, i32* @main.hot_data.2, align 4, !tbaa !7
  %120 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %add42.8 = add nsw i32 %add33.8, %120
  store i32 %add42.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %rem70.8 = urem i32 %inc101.7, 1000
  %cmp71.8 = icmp eq i32 %rem70.8, 0
  br i1 %cmp71.8, label %if.then73.8, label %if.end.8.for.inc100.8_crit_edge

if.end.8.for.inc100.8_crit_edge:                  ; preds = %if.end.8
  %.pre222 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  br label %if.end.9

if.then73.8:                                      ; preds = %if.end.8
  %add74.8 = add nsw i32 %var1.1.7, %rem13
  %call79.8 = tail call i32 @rand() #2
  %rem80.8 = srem i32 %call79.8, 5
  %call88.8201 = tail call i32 @rand() #2
  %rem89.8202 = srem i32 %call88.8201, 100
  %121 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8203 = add nsw i32 %rem89.8202, %121
  store i32 %add90.8203, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.8 = tail call i32 @rand() #2
  %rem89.1.8 = srem i32 %call88.1.8, 100
  %122 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.8 = add nsw i32 %rem89.1.8, %122
  store i32 %add90.1.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.8 = tail call i32 @rand() #2
  %rem89.2.8 = srem i32 %call88.2.8, 100
  %123 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.8 = add nsw i32 %rem89.2.8, %123
  store i32 %add90.2.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.8 = tail call i32 @rand() #2
  %rem89.3.8 = srem i32 %call88.3.8, 100
  %124 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.8 = add nsw i32 %rem89.3.8, %124
  store i32 %add90.3.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.8 = tail call i32 @rand() #2
  %rem89.4.8 = srem i32 %call88.4.8, 100
  %125 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.8 = add nsw i32 %rem89.4.8, %125
  store i32 %add90.4.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.8 = tail call i32 @rand() #2
  %rem89.5.8 = srem i32 %call88.5.8, 100
  %126 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.8 = add nsw i32 %rem89.5.8, %126
  store i32 %add90.5.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.8 = tail call i32 @rand() #2
  %rem89.6.8 = srem i32 %call88.6.8, 100
  %127 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.8 = add nsw i32 %rem89.6.8, %127
  store i32 %add90.6.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.8 = tail call i32 @rand() #2
  %rem89.7.8 = srem i32 %call88.7.8, 100
  %128 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.8 = add nsw i32 %rem89.7.8, %128
  store i32 %add90.7.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.8 = tail call i32 @rand() #2
  %rem89.8.8 = srem i32 %call88.8.8, 100
  %129 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.8 = add nsw i32 %rem89.8.8, %129
  store i32 %add90.8.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.8 = tail call i32 @rand() #2
  %rem89.9.8 = srem i32 %call88.9.8, 100
  %130 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.8 = add nsw i32 %rem89.9.8, %130
  store i32 %add90.9.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.8 = mul nsw i32 %add74.8, %rem15
  %add81.8 = add nsw i32 %rem80.8, %rem78
  %.pre220 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre221 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then73.8, %if.end.8.for.inc100.8_crit_edge
  %131 = phi i32 [ %.pre222, %if.end.8.for.inc100.8_crit_edge ], [ %add90.9.8, %if.then73.8 ]
  %132 = phi i32 [ %rem32.8, %if.end.8.for.inc100.8_crit_edge ], [ %.pre221, %if.then73.8 ]
  %133 = phi i32 [ %add33.8, %if.end.8.for.inc100.8_crit_edge ], [ %.pre220, %if.then73.8 ]
  %var4.1.8 = phi i32 [ %var4.1.7, %if.end.8.for.inc100.8_crit_edge ], [ %mul75.8, %if.then73.8 ]
  %var5.1.8 = phi i32 [ %var5.1.7, %if.end.8.for.inc100.8_crit_edge ], [ %rem9, %if.then73.8 ]
  %var1.1.8 = phi i32 [ %var1.1.7, %if.end.8.for.inc100.8_crit_edge ], [ %add81.8, %if.then73.8 ]
  %inc101.8 = add nuw nsw i32 %i25.0178, 9
  %mul.9 = mul nsw i32 %133, 3
  %div.9 = sdiv i32 %132, 2
  %sub.9 = sub nsw i32 %mul.9, %div.9
  store i32 %sub.9, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.9 = add nsw i32 %sub.9, %133
  %rem32.9 = srem i32 %add31.9, 100
  store i32 %rem32.9, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.9 = or i32 %rem32.9, 1
  %add33.9 = add nsw i32 %or.9, %rem17
  store i32 %add33.9, i32* @main.hot_data.2, align 4, !tbaa !7
  %add42.9 = add nsw i32 %add33.9, %131
  store i32 %add42.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %rem70.9 = urem i32 %inc101.8, 1000
  %cmp71.9 = icmp eq i32 %rem70.9, 0
  br i1 %cmp71.9, label %if.then73.9, label %if.end.10

if.then73.9:                                      ; preds = %if.end.9
  %add74.9 = add nsw i32 %var1.1.8, %rem13
  %call79.9 = tail call i32 @rand() #2
  %rem80.9 = srem i32 %call79.9, 5
  %call88.9204 = tail call i32 @rand() #2
  %rem89.9205 = srem i32 %call88.9204, 100
  %134 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9206 = add nsw i32 %rem89.9205, %134
  store i32 %add90.9206, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.9 = tail call i32 @rand() #2
  %rem89.1.9 = srem i32 %call88.1.9, 100
  %135 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.9 = add nsw i32 %rem89.1.9, %135
  store i32 %add90.1.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.9 = tail call i32 @rand() #2
  %rem89.2.9 = srem i32 %call88.2.9, 100
  %136 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.9 = add nsw i32 %rem89.2.9, %136
  store i32 %add90.2.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.9 = tail call i32 @rand() #2
  %rem89.3.9 = srem i32 %call88.3.9, 100
  %137 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.9 = add nsw i32 %rem89.3.9, %137
  store i32 %add90.3.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.9 = tail call i32 @rand() #2
  %rem89.4.9 = srem i32 %call88.4.9, 100
  %138 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.9 = add nsw i32 %rem89.4.9, %138
  store i32 %add90.4.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.9 = tail call i32 @rand() #2
  %rem89.5.9 = srem i32 %call88.5.9, 100
  %139 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.9 = add nsw i32 %rem89.5.9, %139
  store i32 %add90.5.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.9 = tail call i32 @rand() #2
  %rem89.6.9 = srem i32 %call88.6.9, 100
  %140 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.9 = add nsw i32 %rem89.6.9, %140
  store i32 %add90.6.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.9 = tail call i32 @rand() #2
  %rem89.7.9 = srem i32 %call88.7.9, 100
  %141 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.9 = add nsw i32 %rem89.7.9, %141
  store i32 %add90.7.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.9 = tail call i32 @rand() #2
  %rem89.8.9 = srem i32 %call88.8.9, 100
  %142 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.9 = add nsw i32 %rem89.8.9, %142
  store i32 %add90.8.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.9 = tail call i32 @rand() #2
  %rem89.9.9 = srem i32 %call88.9.9, 100
  %143 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.9 = add nsw i32 %rem89.9.9, %143
  store i32 %add90.9.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.9 = mul nsw i32 %add74.9, %rem15
  %add81.9 = add nsw i32 %rem80.9, %rem78
  %.pre223 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre224 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then73.9
  %144 = phi i32 [ %add42.9, %if.end.9 ], [ %add90.9.9, %if.then73.9 ]
  %145 = phi i32 [ %rem32.9, %if.end.9 ], [ %.pre224, %if.then73.9 ]
  %146 = phi i32 [ %add33.9, %if.end.9 ], [ %.pre223, %if.then73.9 ]
  %var4.1.9 = phi i32 [ %var4.1.8, %if.end.9 ], [ %mul75.9, %if.then73.9 ]
  %var5.1.9 = phi i32 [ %var5.1.8, %if.end.9 ], [ %rem9, %if.then73.9 ]
  %var1.1.9 = phi i32 [ %var1.1.8, %if.end.9 ], [ %add81.9, %if.then73.9 ]
  %inc101.9 = add nuw nsw i32 %i25.0178, 10
  %mul.10 = mul nsw i32 %146, 3
  %div.10 = sdiv i32 %145, 2
  %sub.10 = sub nsw i32 %mul.10, %div.10
  store i32 %sub.10, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.10 = add nsw i32 %sub.10, %146
  %rem32.10 = srem i32 %add31.10, 100
  store i32 %rem32.10, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.10 = or i32 %rem32.10, 1
  %add33.10 = add nsw i32 %or.10, %rem17
  store i32 %add33.10, i32* @main.hot_data.2, align 4, !tbaa !7
  %147 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %add42.10 = add nsw i32 %add33.10, %147
  store i32 %add42.10, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %rem70.10 = urem i32 %inc101.9, 1000
  %cmp71.10 = icmp eq i32 %rem70.10, 0
  br i1 %cmp71.10, label %if.then73.10, label %if.end.11

if.then73.10:                                     ; preds = %if.end.10
  %add74.10 = add nsw i32 %var1.1.9, %rem13
  %call79.10 = tail call i32 @rand() #2
  %rem80.10 = srem i32 %call79.10, 5
  %call88.10 = tail call i32 @rand() #2
  %rem89.10 = srem i32 %call88.10, 100
  %148 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.10 = add nsw i32 %rem89.10, %148
  store i32 %add90.10, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.10 = tail call i32 @rand() #2
  %rem89.1.10 = srem i32 %call88.1.10, 100
  %149 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.10 = add nsw i32 %rem89.1.10, %149
  store i32 %add90.1.10, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.10 = tail call i32 @rand() #2
  %rem89.2.10 = srem i32 %call88.2.10, 100
  %150 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.10 = add nsw i32 %rem89.2.10, %150
  store i32 %add90.2.10, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.10 = tail call i32 @rand() #2
  %rem89.3.10 = srem i32 %call88.3.10, 100
  %151 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.10 = add nsw i32 %rem89.3.10, %151
  store i32 %add90.3.10, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.10 = tail call i32 @rand() #2
  %rem89.4.10 = srem i32 %call88.4.10, 100
  %152 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.10 = add nsw i32 %rem89.4.10, %152
  store i32 %add90.4.10, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.10 = tail call i32 @rand() #2
  %rem89.5.10 = srem i32 %call88.5.10, 100
  %153 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.10 = add nsw i32 %rem89.5.10, %153
  store i32 %add90.5.10, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.10 = tail call i32 @rand() #2
  %rem89.6.10 = srem i32 %call88.6.10, 100
  %154 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.10 = add nsw i32 %rem89.6.10, %154
  store i32 %add90.6.10, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.10 = tail call i32 @rand() #2
  %rem89.7.10 = srem i32 %call88.7.10, 100
  %155 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.10 = add nsw i32 %rem89.7.10, %155
  store i32 %add90.7.10, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.10 = tail call i32 @rand() #2
  %rem89.8.10 = srem i32 %call88.8.10, 100
  %156 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.10 = add nsw i32 %rem89.8.10, %156
  store i32 %add90.8.10, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.10 = tail call i32 @rand() #2
  %rem89.9.10 = srem i32 %call88.9.10, 100
  %157 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.10 = add nsw i32 %rem89.9.10, %157
  store i32 %add90.9.10, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.10 = mul nsw i32 %add74.10, %rem15
  %add81.10 = add nsw i32 %rem80.10, %rem78
  %.pre225 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre226 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then73.10
  %158 = phi i32 [ %144, %if.end.10 ], [ %add90.9.10, %if.then73.10 ]
  %159 = phi i32 [ %rem32.10, %if.end.10 ], [ %.pre226, %if.then73.10 ]
  %160 = phi i32 [ %add33.10, %if.end.10 ], [ %.pre225, %if.then73.10 ]
  %var4.1.10 = phi i32 [ %var4.1.9, %if.end.10 ], [ %mul75.10, %if.then73.10 ]
  %var5.1.10 = phi i32 [ %var5.1.9, %if.end.10 ], [ %rem9, %if.then73.10 ]
  %var1.1.10 = phi i32 [ %var1.1.9, %if.end.10 ], [ %add81.10, %if.then73.10 ]
  %inc101.10 = add nuw nsw i32 %i25.0178, 11
  %mul.11 = mul nsw i32 %160, 3
  %div.11 = sdiv i32 %159, 2
  %sub.11 = sub nsw i32 %mul.11, %div.11
  store i32 %sub.11, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.11 = add nsw i32 %sub.11, %160
  %rem32.11 = srem i32 %add31.11, 100
  store i32 %rem32.11, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.11 = or i32 %rem32.11, 1
  %add33.11 = add nsw i32 %or.11, %rem17
  store i32 %add33.11, i32* @main.hot_data.2, align 4, !tbaa !7
  %161 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %add42.11 = add nsw i32 %add33.11, %161
  store i32 %add42.11, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %rem70.11 = urem i32 %inc101.10, 1000
  %cmp71.11 = icmp eq i32 %rem70.11, 0
  br i1 %cmp71.11, label %if.then73.11, label %if.end.12

if.then73.11:                                     ; preds = %if.end.11
  %add74.11 = add nsw i32 %var1.1.10, %rem13
  %call79.11 = tail call i32 @rand() #2
  %rem80.11 = srem i32 %call79.11, 5
  %call88.11 = tail call i32 @rand() #2
  %rem89.11 = srem i32 %call88.11, 100
  %162 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.11 = add nsw i32 %rem89.11, %162
  store i32 %add90.11, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.11 = tail call i32 @rand() #2
  %rem89.1.11 = srem i32 %call88.1.11, 100
  %163 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.11 = add nsw i32 %rem89.1.11, %163
  store i32 %add90.1.11, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.11 = tail call i32 @rand() #2
  %rem89.2.11 = srem i32 %call88.2.11, 100
  %164 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.11 = add nsw i32 %rem89.2.11, %164
  store i32 %add90.2.11, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.11 = tail call i32 @rand() #2
  %rem89.3.11 = srem i32 %call88.3.11, 100
  %165 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.11 = add nsw i32 %rem89.3.11, %165
  store i32 %add90.3.11, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.11 = tail call i32 @rand() #2
  %rem89.4.11 = srem i32 %call88.4.11, 100
  %166 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.11 = add nsw i32 %rem89.4.11, %166
  store i32 %add90.4.11, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.11 = tail call i32 @rand() #2
  %rem89.5.11 = srem i32 %call88.5.11, 100
  %167 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.11 = add nsw i32 %rem89.5.11, %167
  store i32 %add90.5.11, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.11 = tail call i32 @rand() #2
  %rem89.6.11 = srem i32 %call88.6.11, 100
  %168 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.11 = add nsw i32 %rem89.6.11, %168
  store i32 %add90.6.11, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.11 = tail call i32 @rand() #2
  %rem89.7.11 = srem i32 %call88.7.11, 100
  %169 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.11 = add nsw i32 %rem89.7.11, %169
  store i32 %add90.7.11, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.11 = tail call i32 @rand() #2
  %rem89.8.11 = srem i32 %call88.8.11, 100
  %170 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.11 = add nsw i32 %rem89.8.11, %170
  store i32 %add90.8.11, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.11 = tail call i32 @rand() #2
  %rem89.9.11 = srem i32 %call88.9.11, 100
  %171 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.11 = add nsw i32 %rem89.9.11, %171
  store i32 %add90.9.11, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.11 = mul nsw i32 %add74.11, %rem15
  %add81.11 = add nsw i32 %rem80.11, %rem78
  %.pre227 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre228 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then73.11
  %172 = phi i32 [ %158, %if.end.11 ], [ %add90.9.11, %if.then73.11 ]
  %173 = phi i32 [ %rem32.11, %if.end.11 ], [ %.pre228, %if.then73.11 ]
  %174 = phi i32 [ %add33.11, %if.end.11 ], [ %.pre227, %if.then73.11 ]
  %var4.1.11 = phi i32 [ %var4.1.10, %if.end.11 ], [ %mul75.11, %if.then73.11 ]
  %var5.1.11 = phi i32 [ %var5.1.10, %if.end.11 ], [ %rem9, %if.then73.11 ]
  %var1.1.11 = phi i32 [ %var1.1.10, %if.end.11 ], [ %add81.11, %if.then73.11 ]
  %inc101.11 = add nuw nsw i32 %i25.0178, 12
  %mul.12 = mul nsw i32 %174, 3
  %div.12 = sdiv i32 %173, 2
  %sub.12 = sub nsw i32 %mul.12, %div.12
  store i32 %sub.12, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.12 = add nsw i32 %sub.12, %174
  %rem32.12 = srem i32 %add31.12, 100
  store i32 %rem32.12, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.12 = or i32 %rem32.12, 1
  %add33.12 = add nsw i32 %or.12, %rem17
  store i32 %add33.12, i32* @main.hot_data.2, align 4, !tbaa !7
  %175 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %add42.12 = add nsw i32 %add33.12, %175
  store i32 %add42.12, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %rem70.12 = urem i32 %inc101.11, 1000
  %cmp71.12 = icmp eq i32 %rem70.12, 0
  br i1 %cmp71.12, label %if.then73.12, label %if.end.13

if.then73.12:                                     ; preds = %if.end.12
  %add74.12 = add nsw i32 %var1.1.11, %rem13
  %call79.12 = tail call i32 @rand() #2
  %rem80.12 = srem i32 %call79.12, 5
  %call88.12 = tail call i32 @rand() #2
  %rem89.12 = srem i32 %call88.12, 100
  %176 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.12 = add nsw i32 %rem89.12, %176
  store i32 %add90.12, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.12 = tail call i32 @rand() #2
  %rem89.1.12 = srem i32 %call88.1.12, 100
  %177 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.12 = add nsw i32 %rem89.1.12, %177
  store i32 %add90.1.12, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.12 = tail call i32 @rand() #2
  %rem89.2.12 = srem i32 %call88.2.12, 100
  %178 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.12 = add nsw i32 %rem89.2.12, %178
  store i32 %add90.2.12, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.12 = tail call i32 @rand() #2
  %rem89.3.12 = srem i32 %call88.3.12, 100
  %179 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.12 = add nsw i32 %rem89.3.12, %179
  store i32 %add90.3.12, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.12 = tail call i32 @rand() #2
  %rem89.4.12 = srem i32 %call88.4.12, 100
  %180 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.12 = add nsw i32 %rem89.4.12, %180
  store i32 %add90.4.12, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.12 = tail call i32 @rand() #2
  %rem89.5.12 = srem i32 %call88.5.12, 100
  %181 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.12 = add nsw i32 %rem89.5.12, %181
  store i32 %add90.5.12, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.12 = tail call i32 @rand() #2
  %rem89.6.12 = srem i32 %call88.6.12, 100
  %182 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.12 = add nsw i32 %rem89.6.12, %182
  store i32 %add90.6.12, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.12 = tail call i32 @rand() #2
  %rem89.7.12 = srem i32 %call88.7.12, 100
  %183 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.12 = add nsw i32 %rem89.7.12, %183
  store i32 %add90.7.12, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.12 = tail call i32 @rand() #2
  %rem89.8.12 = srem i32 %call88.8.12, 100
  %184 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.12 = add nsw i32 %rem89.8.12, %184
  store i32 %add90.8.12, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.12 = tail call i32 @rand() #2
  %rem89.9.12 = srem i32 %call88.9.12, 100
  %185 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.12 = add nsw i32 %rem89.9.12, %185
  store i32 %add90.9.12, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.12 = mul nsw i32 %add74.12, %rem15
  %add81.12 = add nsw i32 %rem80.12, %rem78
  %.pre229 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre230 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then73.12
  %186 = phi i32 [ %172, %if.end.12 ], [ %add90.9.12, %if.then73.12 ]
  %187 = phi i32 [ %rem32.12, %if.end.12 ], [ %.pre230, %if.then73.12 ]
  %188 = phi i32 [ %add33.12, %if.end.12 ], [ %.pre229, %if.then73.12 ]
  %var4.1.12 = phi i32 [ %var4.1.11, %if.end.12 ], [ %mul75.12, %if.then73.12 ]
  %var5.1.12 = phi i32 [ %var5.1.11, %if.end.12 ], [ %rem9, %if.then73.12 ]
  %var1.1.12 = phi i32 [ %var1.1.11, %if.end.12 ], [ %add81.12, %if.then73.12 ]
  %inc101.12 = add nuw nsw i32 %i25.0178, 13
  %mul.13 = mul nsw i32 %188, 3
  %div.13 = sdiv i32 %187, 2
  %sub.13 = sub nsw i32 %mul.13, %div.13
  store i32 %sub.13, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.13 = add nsw i32 %sub.13, %188
  %rem32.13 = srem i32 %add31.13, 100
  store i32 %rem32.13, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.13 = or i32 %rem32.13, 1
  %add33.13 = add nsw i32 %or.13, %rem17
  store i32 %add33.13, i32* @main.hot_data.2, align 4, !tbaa !7
  %189 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %add42.13 = add nsw i32 %add33.13, %189
  store i32 %add42.13, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %rem70.13 = urem i32 %inc101.12, 1000
  %cmp71.13 = icmp eq i32 %rem70.13, 0
  br i1 %cmp71.13, label %if.then73.13, label %if.end.14

if.then73.13:                                     ; preds = %if.end.13
  %add74.13 = add nsw i32 %var1.1.12, %rem13
  %call79.13 = tail call i32 @rand() #2
  %rem80.13 = srem i32 %call79.13, 5
  %call88.13 = tail call i32 @rand() #2
  %rem89.13 = srem i32 %call88.13, 100
  %190 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.13 = add nsw i32 %rem89.13, %190
  store i32 %add90.13, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.13 = tail call i32 @rand() #2
  %rem89.1.13 = srem i32 %call88.1.13, 100
  %191 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.13 = add nsw i32 %rem89.1.13, %191
  store i32 %add90.1.13, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.13 = tail call i32 @rand() #2
  %rem89.2.13 = srem i32 %call88.2.13, 100
  %192 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.13 = add nsw i32 %rem89.2.13, %192
  store i32 %add90.2.13, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.13 = tail call i32 @rand() #2
  %rem89.3.13 = srem i32 %call88.3.13, 100
  %193 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.13 = add nsw i32 %rem89.3.13, %193
  store i32 %add90.3.13, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.13 = tail call i32 @rand() #2
  %rem89.4.13 = srem i32 %call88.4.13, 100
  %194 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.13 = add nsw i32 %rem89.4.13, %194
  store i32 %add90.4.13, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.13 = tail call i32 @rand() #2
  %rem89.5.13 = srem i32 %call88.5.13, 100
  %195 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.13 = add nsw i32 %rem89.5.13, %195
  store i32 %add90.5.13, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.13 = tail call i32 @rand() #2
  %rem89.6.13 = srem i32 %call88.6.13, 100
  %196 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.13 = add nsw i32 %rem89.6.13, %196
  store i32 %add90.6.13, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.13 = tail call i32 @rand() #2
  %rem89.7.13 = srem i32 %call88.7.13, 100
  %197 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.13 = add nsw i32 %rem89.7.13, %197
  store i32 %add90.7.13, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.13 = tail call i32 @rand() #2
  %rem89.8.13 = srem i32 %call88.8.13, 100
  %198 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.13 = add nsw i32 %rem89.8.13, %198
  store i32 %add90.8.13, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.13 = tail call i32 @rand() #2
  %rem89.9.13 = srem i32 %call88.9.13, 100
  %199 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.13 = add nsw i32 %rem89.9.13, %199
  store i32 %add90.9.13, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.13 = mul nsw i32 %add74.13, %rem15
  %add81.13 = add nsw i32 %rem80.13, %rem78
  %.pre231 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre232 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then73.13
  %200 = phi i32 [ %186, %if.end.13 ], [ %add90.9.13, %if.then73.13 ]
  %201 = phi i32 [ %rem32.13, %if.end.13 ], [ %.pre232, %if.then73.13 ]
  %202 = phi i32 [ %add33.13, %if.end.13 ], [ %.pre231, %if.then73.13 ]
  %var4.1.13 = phi i32 [ %var4.1.12, %if.end.13 ], [ %mul75.13, %if.then73.13 ]
  %var5.1.13 = phi i32 [ %var5.1.12, %if.end.13 ], [ %rem9, %if.then73.13 ]
  %var1.1.13 = phi i32 [ %var1.1.12, %if.end.13 ], [ %add81.13, %if.then73.13 ]
  %inc101.13 = add nuw nsw i32 %i25.0178, 14
  %mul.14 = mul nsw i32 %202, 3
  %div.14 = sdiv i32 %201, 2
  %sub.14 = sub nsw i32 %mul.14, %div.14
  store i32 %sub.14, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.14 = add nsw i32 %sub.14, %202
  %rem32.14 = srem i32 %add31.14, 100
  store i32 %rem32.14, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.14 = or i32 %rem32.14, 1
  %add33.14 = add nsw i32 %or.14, %rem17
  store i32 %add33.14, i32* @main.hot_data.2, align 4, !tbaa !7
  %203 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %add42.14 = add nsw i32 %add33.14, %203
  store i32 %add42.14, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %rem70.14 = urem i32 %inc101.13, 1000
  %cmp71.14 = icmp eq i32 %rem70.14, 0
  br i1 %cmp71.14, label %if.then73.14, label %if.end.15

if.then73.14:                                     ; preds = %if.end.14
  %add74.14 = add nsw i32 %var1.1.13, %rem13
  %call79.14 = tail call i32 @rand() #2
  %rem80.14 = srem i32 %call79.14, 5
  %call88.14 = tail call i32 @rand() #2
  %rem89.14 = srem i32 %call88.14, 100
  %204 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.14 = add nsw i32 %rem89.14, %204
  store i32 %add90.14, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.14 = tail call i32 @rand() #2
  %rem89.1.14 = srem i32 %call88.1.14, 100
  %205 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.14 = add nsw i32 %rem89.1.14, %205
  store i32 %add90.1.14, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.14 = tail call i32 @rand() #2
  %rem89.2.14 = srem i32 %call88.2.14, 100
  %206 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.14 = add nsw i32 %rem89.2.14, %206
  store i32 %add90.2.14, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.14 = tail call i32 @rand() #2
  %rem89.3.14 = srem i32 %call88.3.14, 100
  %207 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.14 = add nsw i32 %rem89.3.14, %207
  store i32 %add90.3.14, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.14 = tail call i32 @rand() #2
  %rem89.4.14 = srem i32 %call88.4.14, 100
  %208 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.14 = add nsw i32 %rem89.4.14, %208
  store i32 %add90.4.14, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.14 = tail call i32 @rand() #2
  %rem89.5.14 = srem i32 %call88.5.14, 100
  %209 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.14 = add nsw i32 %rem89.5.14, %209
  store i32 %add90.5.14, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.14 = tail call i32 @rand() #2
  %rem89.6.14 = srem i32 %call88.6.14, 100
  %210 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.14 = add nsw i32 %rem89.6.14, %210
  store i32 %add90.6.14, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.14 = tail call i32 @rand() #2
  %rem89.7.14 = srem i32 %call88.7.14, 100
  %211 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.14 = add nsw i32 %rem89.7.14, %211
  store i32 %add90.7.14, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.14 = tail call i32 @rand() #2
  %rem89.8.14 = srem i32 %call88.8.14, 100
  %212 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.14 = add nsw i32 %rem89.8.14, %212
  store i32 %add90.8.14, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.14 = tail call i32 @rand() #2
  %rem89.9.14 = srem i32 %call88.9.14, 100
  %213 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.14 = add nsw i32 %rem89.9.14, %213
  store i32 %add90.9.14, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.14 = mul nsw i32 %add74.14, %rem15
  %add81.14 = add nsw i32 %rem80.14, %rem78
  %.pre233 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre234 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then73.14
  %214 = phi i32 [ %200, %if.end.14 ], [ %add90.9.14, %if.then73.14 ]
  %215 = phi i32 [ %rem32.14, %if.end.14 ], [ %.pre234, %if.then73.14 ]
  %216 = phi i32 [ %add33.14, %if.end.14 ], [ %.pre233, %if.then73.14 ]
  %var4.1.14 = phi i32 [ %var4.1.13, %if.end.14 ], [ %mul75.14, %if.then73.14 ]
  %var5.1.14 = phi i32 [ %var5.1.13, %if.end.14 ], [ %rem9, %if.then73.14 ]
  %var1.1.14 = phi i32 [ %var1.1.13, %if.end.14 ], [ %add81.14, %if.then73.14 ]
  %inc101.14 = add nuw nsw i32 %i25.0178, 15
  %mul.15 = mul nsw i32 %216, 3
  %div.15 = sdiv i32 %215, 2
  %sub.15 = sub nsw i32 %mul.15, %div.15
  store i32 %sub.15, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.15 = add nsw i32 %sub.15, %216
  %rem32.15 = srem i32 %add31.15, 100
  store i32 %rem32.15, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.15 = or i32 %rem32.15, 1
  %add33.15 = add nsw i32 %or.15, %rem17
  store i32 %add33.15, i32* @main.hot_data.2, align 4, !tbaa !7
  %217 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %add42.15 = add nsw i32 %add33.15, %217
  store i32 %add42.15, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %rem70.15 = urem i32 %inc101.14, 1000
  %cmp71.15 = icmp eq i32 %rem70.15, 0
  br i1 %cmp71.15, label %if.then73.15, label %if.end.16

if.then73.15:                                     ; preds = %if.end.15
  %add74.15 = add nsw i32 %var1.1.14, %rem13
  %call79.15 = tail call i32 @rand() #2
  %rem80.15 = srem i32 %call79.15, 5
  %call88.15 = tail call i32 @rand() #2
  %rem89.15 = srem i32 %call88.15, 100
  %218 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.15 = add nsw i32 %rem89.15, %218
  store i32 %add90.15, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.15 = tail call i32 @rand() #2
  %rem89.1.15 = srem i32 %call88.1.15, 100
  %219 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.15 = add nsw i32 %rem89.1.15, %219
  store i32 %add90.1.15, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.15 = tail call i32 @rand() #2
  %rem89.2.15 = srem i32 %call88.2.15, 100
  %220 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.15 = add nsw i32 %rem89.2.15, %220
  store i32 %add90.2.15, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.15 = tail call i32 @rand() #2
  %rem89.3.15 = srem i32 %call88.3.15, 100
  %221 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.15 = add nsw i32 %rem89.3.15, %221
  store i32 %add90.3.15, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.15 = tail call i32 @rand() #2
  %rem89.4.15 = srem i32 %call88.4.15, 100
  %222 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.15 = add nsw i32 %rem89.4.15, %222
  store i32 %add90.4.15, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.15 = tail call i32 @rand() #2
  %rem89.5.15 = srem i32 %call88.5.15, 100
  %223 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.15 = add nsw i32 %rem89.5.15, %223
  store i32 %add90.5.15, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.15 = tail call i32 @rand() #2
  %rem89.6.15 = srem i32 %call88.6.15, 100
  %224 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.15 = add nsw i32 %rem89.6.15, %224
  store i32 %add90.6.15, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.15 = tail call i32 @rand() #2
  %rem89.7.15 = srem i32 %call88.7.15, 100
  %225 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.15 = add nsw i32 %rem89.7.15, %225
  store i32 %add90.7.15, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.15 = tail call i32 @rand() #2
  %rem89.8.15 = srem i32 %call88.8.15, 100
  %226 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.15 = add nsw i32 %rem89.8.15, %226
  store i32 %add90.8.15, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.15 = tail call i32 @rand() #2
  %rem89.9.15 = srem i32 %call88.9.15, 100
  %227 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.15 = add nsw i32 %rem89.9.15, %227
  store i32 %add90.9.15, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.15 = mul nsw i32 %add74.15, %rem15
  %add81.15 = add nsw i32 %rem80.15, %rem78
  %.pre235 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre236 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then73.15
  %228 = phi i32 [ %214, %if.end.15 ], [ %add90.9.15, %if.then73.15 ]
  %229 = phi i32 [ %rem32.15, %if.end.15 ], [ %.pre236, %if.then73.15 ]
  %230 = phi i32 [ %add33.15, %if.end.15 ], [ %.pre235, %if.then73.15 ]
  %var4.1.15 = phi i32 [ %var4.1.14, %if.end.15 ], [ %mul75.15, %if.then73.15 ]
  %var5.1.15 = phi i32 [ %var5.1.14, %if.end.15 ], [ %rem9, %if.then73.15 ]
  %var1.1.15 = phi i32 [ %var1.1.14, %if.end.15 ], [ %add81.15, %if.then73.15 ]
  %inc101.15 = add nuw nsw i32 %i25.0178, 16
  %mul.16 = mul nsw i32 %230, 3
  %div.16 = sdiv i32 %229, 2
  %sub.16 = sub nsw i32 %mul.16, %div.16
  store i32 %sub.16, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.16 = add nsw i32 %sub.16, %230
  %rem32.16 = srem i32 %add31.16, 100
  store i32 %rem32.16, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.16 = or i32 %rem32.16, 1
  %add33.16 = add nsw i32 %or.16, %rem17
  store i32 %add33.16, i32* @main.hot_data.2, align 4, !tbaa !7
  %231 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %add42.16 = add nsw i32 %add33.16, %231
  store i32 %add42.16, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %rem70.16 = urem i32 %inc101.15, 1000
  %cmp71.16 = icmp eq i32 %rem70.16, 0
  br i1 %cmp71.16, label %if.then73.16, label %if.end.17

if.then73.16:                                     ; preds = %if.end.16
  %add74.16 = add nsw i32 %var1.1.15, %rem13
  %call79.16 = tail call i32 @rand() #2
  %rem80.16 = srem i32 %call79.16, 5
  %call88.16 = tail call i32 @rand() #2
  %rem89.16 = srem i32 %call88.16, 100
  %232 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.16 = add nsw i32 %rem89.16, %232
  store i32 %add90.16, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.16 = tail call i32 @rand() #2
  %rem89.1.16 = srem i32 %call88.1.16, 100
  %233 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.16 = add nsw i32 %rem89.1.16, %233
  store i32 %add90.1.16, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.16 = tail call i32 @rand() #2
  %rem89.2.16 = srem i32 %call88.2.16, 100
  %234 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.16 = add nsw i32 %rem89.2.16, %234
  store i32 %add90.2.16, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.16 = tail call i32 @rand() #2
  %rem89.3.16 = srem i32 %call88.3.16, 100
  %235 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.16 = add nsw i32 %rem89.3.16, %235
  store i32 %add90.3.16, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.16 = tail call i32 @rand() #2
  %rem89.4.16 = srem i32 %call88.4.16, 100
  %236 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.16 = add nsw i32 %rem89.4.16, %236
  store i32 %add90.4.16, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.16 = tail call i32 @rand() #2
  %rem89.5.16 = srem i32 %call88.5.16, 100
  %237 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.16 = add nsw i32 %rem89.5.16, %237
  store i32 %add90.5.16, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.16 = tail call i32 @rand() #2
  %rem89.6.16 = srem i32 %call88.6.16, 100
  %238 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.16 = add nsw i32 %rem89.6.16, %238
  store i32 %add90.6.16, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.16 = tail call i32 @rand() #2
  %rem89.7.16 = srem i32 %call88.7.16, 100
  %239 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.16 = add nsw i32 %rem89.7.16, %239
  store i32 %add90.7.16, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.16 = tail call i32 @rand() #2
  %rem89.8.16 = srem i32 %call88.8.16, 100
  %240 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.16 = add nsw i32 %rem89.8.16, %240
  store i32 %add90.8.16, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.16 = tail call i32 @rand() #2
  %rem89.9.16 = srem i32 %call88.9.16, 100
  %241 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.16 = add nsw i32 %rem89.9.16, %241
  store i32 %add90.9.16, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.16 = mul nsw i32 %add74.16, %rem15
  %add81.16 = add nsw i32 %rem80.16, %rem78
  %.pre237 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre238 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then73.16
  %242 = phi i32 [ %228, %if.end.16 ], [ %add90.9.16, %if.then73.16 ]
  %243 = phi i32 [ %rem32.16, %if.end.16 ], [ %.pre238, %if.then73.16 ]
  %244 = phi i32 [ %add33.16, %if.end.16 ], [ %.pre237, %if.then73.16 ]
  %var4.1.16 = phi i32 [ %var4.1.15, %if.end.16 ], [ %mul75.16, %if.then73.16 ]
  %var5.1.16 = phi i32 [ %var5.1.15, %if.end.16 ], [ %rem9, %if.then73.16 ]
  %var1.1.16 = phi i32 [ %var1.1.15, %if.end.16 ], [ %add81.16, %if.then73.16 ]
  %inc101.16 = add nuw nsw i32 %i25.0178, 17
  %mul.17 = mul nsw i32 %244, 3
  %div.17 = sdiv i32 %243, 2
  %sub.17 = sub nsw i32 %mul.17, %div.17
  store i32 %sub.17, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.17 = add nsw i32 %sub.17, %244
  %rem32.17 = srem i32 %add31.17, 100
  store i32 %rem32.17, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.17 = or i32 %rem32.17, 1
  %add33.17 = add nsw i32 %or.17, %rem17
  store i32 %add33.17, i32* @main.hot_data.2, align 4, !tbaa !7
  %245 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %add42.17 = add nsw i32 %add33.17, %245
  store i32 %add42.17, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %rem70.17 = urem i32 %inc101.16, 1000
  %cmp71.17 = icmp eq i32 %rem70.17, 0
  br i1 %cmp71.17, label %if.then73.17, label %if.end.18

if.then73.17:                                     ; preds = %if.end.17
  %add74.17 = add nsw i32 %var1.1.16, %rem13
  %call79.17 = tail call i32 @rand() #2
  %rem80.17 = srem i32 %call79.17, 5
  %call88.17 = tail call i32 @rand() #2
  %rem89.17 = srem i32 %call88.17, 100
  %246 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.17 = add nsw i32 %rem89.17, %246
  store i32 %add90.17, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.17 = tail call i32 @rand() #2
  %rem89.1.17 = srem i32 %call88.1.17, 100
  %247 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.17 = add nsw i32 %rem89.1.17, %247
  store i32 %add90.1.17, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.17 = tail call i32 @rand() #2
  %rem89.2.17 = srem i32 %call88.2.17, 100
  %248 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.17 = add nsw i32 %rem89.2.17, %248
  store i32 %add90.2.17, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.17 = tail call i32 @rand() #2
  %rem89.3.17 = srem i32 %call88.3.17, 100
  %249 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.17 = add nsw i32 %rem89.3.17, %249
  store i32 %add90.3.17, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.17 = tail call i32 @rand() #2
  %rem89.4.17 = srem i32 %call88.4.17, 100
  %250 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.17 = add nsw i32 %rem89.4.17, %250
  store i32 %add90.4.17, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.17 = tail call i32 @rand() #2
  %rem89.5.17 = srem i32 %call88.5.17, 100
  %251 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.17 = add nsw i32 %rem89.5.17, %251
  store i32 %add90.5.17, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.17 = tail call i32 @rand() #2
  %rem89.6.17 = srem i32 %call88.6.17, 100
  %252 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.17 = add nsw i32 %rem89.6.17, %252
  store i32 %add90.6.17, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.17 = tail call i32 @rand() #2
  %rem89.7.17 = srem i32 %call88.7.17, 100
  %253 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.17 = add nsw i32 %rem89.7.17, %253
  store i32 %add90.7.17, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.17 = tail call i32 @rand() #2
  %rem89.8.17 = srem i32 %call88.8.17, 100
  %254 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.17 = add nsw i32 %rem89.8.17, %254
  store i32 %add90.8.17, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.17 = tail call i32 @rand() #2
  %rem89.9.17 = srem i32 %call88.9.17, 100
  %255 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.17 = add nsw i32 %rem89.9.17, %255
  store i32 %add90.9.17, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.17 = mul nsw i32 %add74.17, %rem15
  %add81.17 = add nsw i32 %rem80.17, %rem78
  %.pre239 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre240 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then73.17
  %256 = phi i32 [ %242, %if.end.17 ], [ %add90.9.17, %if.then73.17 ]
  %257 = phi i32 [ %rem32.17, %if.end.17 ], [ %.pre240, %if.then73.17 ]
  %258 = phi i32 [ %add33.17, %if.end.17 ], [ %.pre239, %if.then73.17 ]
  %var4.1.17 = phi i32 [ %var4.1.16, %if.end.17 ], [ %mul75.17, %if.then73.17 ]
  %var5.1.17 = phi i32 [ %var5.1.16, %if.end.17 ], [ %rem9, %if.then73.17 ]
  %var1.1.17 = phi i32 [ %var1.1.16, %if.end.17 ], [ %add81.17, %if.then73.17 ]
  %inc101.17 = add nuw nsw i32 %i25.0178, 18
  %mul.18 = mul nsw i32 %258, 3
  %div.18 = sdiv i32 %257, 2
  %sub.18 = sub nsw i32 %mul.18, %div.18
  store i32 %sub.18, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.18 = add nsw i32 %sub.18, %258
  %rem32.18 = srem i32 %add31.18, 100
  store i32 %rem32.18, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.18 = or i32 %rem32.18, 1
  %add33.18 = add nsw i32 %or.18, %rem17
  store i32 %add33.18, i32* @main.hot_data.2, align 4, !tbaa !7
  %259 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %add42.18 = add nsw i32 %add33.18, %259
  store i32 %add42.18, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %rem70.18 = urem i32 %inc101.17, 1000
  %cmp71.18 = icmp eq i32 %rem70.18, 0
  br i1 %cmp71.18, label %if.then73.18, label %if.end.19

if.then73.18:                                     ; preds = %if.end.18
  %add74.18 = add nsw i32 %var1.1.17, %rem13
  %call79.18 = tail call i32 @rand() #2
  %rem80.18 = srem i32 %call79.18, 5
  %call88.18 = tail call i32 @rand() #2
  %rem89.18 = srem i32 %call88.18, 100
  %260 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.18 = add nsw i32 %rem89.18, %260
  store i32 %add90.18, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.18 = tail call i32 @rand() #2
  %rem89.1.18 = srem i32 %call88.1.18, 100
  %261 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.18 = add nsw i32 %rem89.1.18, %261
  store i32 %add90.1.18, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.18 = tail call i32 @rand() #2
  %rem89.2.18 = srem i32 %call88.2.18, 100
  %262 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.18 = add nsw i32 %rem89.2.18, %262
  store i32 %add90.2.18, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.18 = tail call i32 @rand() #2
  %rem89.3.18 = srem i32 %call88.3.18, 100
  %263 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.18 = add nsw i32 %rem89.3.18, %263
  store i32 %add90.3.18, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.18 = tail call i32 @rand() #2
  %rem89.4.18 = srem i32 %call88.4.18, 100
  %264 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.18 = add nsw i32 %rem89.4.18, %264
  store i32 %add90.4.18, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.18 = tail call i32 @rand() #2
  %rem89.5.18 = srem i32 %call88.5.18, 100
  %265 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.18 = add nsw i32 %rem89.5.18, %265
  store i32 %add90.5.18, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.18 = tail call i32 @rand() #2
  %rem89.6.18 = srem i32 %call88.6.18, 100
  %266 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.18 = add nsw i32 %rem89.6.18, %266
  store i32 %add90.6.18, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.18 = tail call i32 @rand() #2
  %rem89.7.18 = srem i32 %call88.7.18, 100
  %267 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.18 = add nsw i32 %rem89.7.18, %267
  store i32 %add90.7.18, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.18 = tail call i32 @rand() #2
  %rem89.8.18 = srem i32 %call88.8.18, 100
  %268 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.18 = add nsw i32 %rem89.8.18, %268
  store i32 %add90.8.18, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.18 = tail call i32 @rand() #2
  %rem89.9.18 = srem i32 %call88.9.18, 100
  %269 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.18 = add nsw i32 %rem89.9.18, %269
  store i32 %add90.9.18, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.18 = mul nsw i32 %add74.18, %rem15
  %add81.18 = add nsw i32 %rem80.18, %rem78
  %.pre241 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre242 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then73.18
  %270 = phi i32 [ %256, %if.end.18 ], [ %add90.9.18, %if.then73.18 ]
  %271 = phi i32 [ %rem32.18, %if.end.18 ], [ %.pre242, %if.then73.18 ]
  %272 = phi i32 [ %add33.18, %if.end.18 ], [ %.pre241, %if.then73.18 ]
  %var4.1.18 = phi i32 [ %var4.1.17, %if.end.18 ], [ %mul75.18, %if.then73.18 ]
  %var5.1.18 = phi i32 [ %var5.1.17, %if.end.18 ], [ %rem9, %if.then73.18 ]
  %var1.1.18 = phi i32 [ %var1.1.17, %if.end.18 ], [ %add81.18, %if.then73.18 ]
  %inc101.18 = add nuw nsw i32 %i25.0178, 19
  %mul.19 = mul nsw i32 %272, 3
  %div.19 = sdiv i32 %271, 2
  %sub.19 = sub nsw i32 %mul.19, %div.19
  store i32 %sub.19, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.19 = add nsw i32 %sub.19, %272
  %rem32.19 = srem i32 %add31.19, 100
  store i32 %rem32.19, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.19 = or i32 %rem32.19, 1
  %add33.19 = add nsw i32 %or.19, %rem17
  store i32 %add33.19, i32* @main.hot_data.2, align 4, !tbaa !7
  %add42.19 = add nsw i32 %add33.19, %270
  store i32 %add42.19, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %rem70.19 = urem i32 %inc101.18, 1000
  %cmp71.19 = icmp eq i32 %rem70.19, 0
  br i1 %cmp71.19, label %if.then73.19, label %if.end.20

if.then73.19:                                     ; preds = %if.end.19
  %add74.19 = add nsw i32 %var1.1.18, %rem13
  %call79.19 = tail call i32 @rand() #2
  %rem80.19 = srem i32 %call79.19, 5
  %call88.19 = tail call i32 @rand() #2
  %rem89.19 = srem i32 %call88.19, 100
  %273 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.19 = add nsw i32 %rem89.19, %273
  store i32 %add90.19, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.19 = tail call i32 @rand() #2
  %rem89.1.19 = srem i32 %call88.1.19, 100
  %274 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.19 = add nsw i32 %rem89.1.19, %274
  store i32 %add90.1.19, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.19 = tail call i32 @rand() #2
  %rem89.2.19 = srem i32 %call88.2.19, 100
  %275 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.19 = add nsw i32 %rem89.2.19, %275
  store i32 %add90.2.19, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.19 = tail call i32 @rand() #2
  %rem89.3.19 = srem i32 %call88.3.19, 100
  %276 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.19 = add nsw i32 %rem89.3.19, %276
  store i32 %add90.3.19, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.19 = tail call i32 @rand() #2
  %rem89.4.19 = srem i32 %call88.4.19, 100
  %277 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.19 = add nsw i32 %rem89.4.19, %277
  store i32 %add90.4.19, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.19 = tail call i32 @rand() #2
  %rem89.5.19 = srem i32 %call88.5.19, 100
  %278 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.19 = add nsw i32 %rem89.5.19, %278
  store i32 %add90.5.19, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.19 = tail call i32 @rand() #2
  %rem89.6.19 = srem i32 %call88.6.19, 100
  %279 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.19 = add nsw i32 %rem89.6.19, %279
  store i32 %add90.6.19, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.19 = tail call i32 @rand() #2
  %rem89.7.19 = srem i32 %call88.7.19, 100
  %280 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.19 = add nsw i32 %rem89.7.19, %280
  store i32 %add90.7.19, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.19 = tail call i32 @rand() #2
  %rem89.8.19 = srem i32 %call88.8.19, 100
  %281 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.19 = add nsw i32 %rem89.8.19, %281
  store i32 %add90.8.19, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.19 = tail call i32 @rand() #2
  %rem89.9.19 = srem i32 %call88.9.19, 100
  %282 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.19 = add nsw i32 %rem89.9.19, %282
  store i32 %add90.9.19, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.19 = mul nsw i32 %add74.19, %rem15
  %add81.19 = add nsw i32 %rem80.19, %rem78
  %.pre243 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre244 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then73.19
  %283 = phi i32 [ %add42.19, %if.end.19 ], [ %add90.9.19, %if.then73.19 ]
  %284 = phi i32 [ %rem32.19, %if.end.19 ], [ %.pre244, %if.then73.19 ]
  %285 = phi i32 [ %add33.19, %if.end.19 ], [ %.pre243, %if.then73.19 ]
  %var4.1.19 = phi i32 [ %var4.1.18, %if.end.19 ], [ %mul75.19, %if.then73.19 ]
  %var5.1.19 = phi i32 [ %var5.1.18, %if.end.19 ], [ %rem9, %if.then73.19 ]
  %var1.1.19 = phi i32 [ %var1.1.18, %if.end.19 ], [ %add81.19, %if.then73.19 ]
  %inc101.19 = add nuw nsw i32 %i25.0178, 20
  %mul.20 = mul nsw i32 %285, 3
  %div.20 = sdiv i32 %284, 2
  %sub.20 = sub nsw i32 %mul.20, %div.20
  store i32 %sub.20, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.20 = add nsw i32 %sub.20, %285
  %rem32.20 = srem i32 %add31.20, 100
  store i32 %rem32.20, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.20 = or i32 %rem32.20, 1
  %add33.20 = add nsw i32 %or.20, %rem17
  store i32 %add33.20, i32* @main.hot_data.2, align 4, !tbaa !7
  %286 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %add42.20 = add nsw i32 %add33.20, %286
  store i32 %add42.20, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %rem70.20 = urem i32 %inc101.19, 1000
  %cmp71.20 = icmp eq i32 %rem70.20, 0
  br i1 %cmp71.20, label %if.then73.20, label %if.end.21

if.then73.20:                                     ; preds = %if.end.20
  %add74.20 = add nsw i32 %var1.1.19, %rem13
  %call79.20 = tail call i32 @rand() #2
  %rem80.20 = srem i32 %call79.20, 5
  %call88.20 = tail call i32 @rand() #2
  %rem89.20 = srem i32 %call88.20, 100
  %287 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.20 = add nsw i32 %rem89.20, %287
  store i32 %add90.20, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.20 = tail call i32 @rand() #2
  %rem89.1.20 = srem i32 %call88.1.20, 100
  %288 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.20 = add nsw i32 %rem89.1.20, %288
  store i32 %add90.1.20, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.20 = tail call i32 @rand() #2
  %rem89.2.20 = srem i32 %call88.2.20, 100
  %289 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.20 = add nsw i32 %rem89.2.20, %289
  store i32 %add90.2.20, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.20 = tail call i32 @rand() #2
  %rem89.3.20 = srem i32 %call88.3.20, 100
  %290 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.20 = add nsw i32 %rem89.3.20, %290
  store i32 %add90.3.20, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.20 = tail call i32 @rand() #2
  %rem89.4.20 = srem i32 %call88.4.20, 100
  %291 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.20 = add nsw i32 %rem89.4.20, %291
  store i32 %add90.4.20, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.20 = tail call i32 @rand() #2
  %rem89.5.20 = srem i32 %call88.5.20, 100
  %292 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.20 = add nsw i32 %rem89.5.20, %292
  store i32 %add90.5.20, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.20 = tail call i32 @rand() #2
  %rem89.6.20 = srem i32 %call88.6.20, 100
  %293 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.20 = add nsw i32 %rem89.6.20, %293
  store i32 %add90.6.20, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.20 = tail call i32 @rand() #2
  %rem89.7.20 = srem i32 %call88.7.20, 100
  %294 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.20 = add nsw i32 %rem89.7.20, %294
  store i32 %add90.7.20, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.20 = tail call i32 @rand() #2
  %rem89.8.20 = srem i32 %call88.8.20, 100
  %295 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.20 = add nsw i32 %rem89.8.20, %295
  store i32 %add90.8.20, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.20 = tail call i32 @rand() #2
  %rem89.9.20 = srem i32 %call88.9.20, 100
  %296 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.20 = add nsw i32 %rem89.9.20, %296
  store i32 %add90.9.20, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.20 = mul nsw i32 %add74.20, %rem15
  %add81.20 = add nsw i32 %rem80.20, %rem78
  %.pre245 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre246 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then73.20
  %297 = phi i32 [ %283, %if.end.20 ], [ %add90.9.20, %if.then73.20 ]
  %298 = phi i32 [ %rem32.20, %if.end.20 ], [ %.pre246, %if.then73.20 ]
  %299 = phi i32 [ %add33.20, %if.end.20 ], [ %.pre245, %if.then73.20 ]
  %var4.1.20 = phi i32 [ %var4.1.19, %if.end.20 ], [ %mul75.20, %if.then73.20 ]
  %var5.1.20 = phi i32 [ %var5.1.19, %if.end.20 ], [ %rem9, %if.then73.20 ]
  %var1.1.20 = phi i32 [ %var1.1.19, %if.end.20 ], [ %add81.20, %if.then73.20 ]
  %inc101.20 = add nuw nsw i32 %i25.0178, 21
  %mul.21 = mul nsw i32 %299, 3
  %div.21 = sdiv i32 %298, 2
  %sub.21 = sub nsw i32 %mul.21, %div.21
  store i32 %sub.21, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.21 = add nsw i32 %sub.21, %299
  %rem32.21 = srem i32 %add31.21, 100
  store i32 %rem32.21, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.21 = or i32 %rem32.21, 1
  %add33.21 = add nsw i32 %or.21, %rem17
  store i32 %add33.21, i32* @main.hot_data.2, align 4, !tbaa !7
  %300 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %add42.21 = add nsw i32 %add33.21, %300
  store i32 %add42.21, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %rem70.21 = urem i32 %inc101.20, 1000
  %cmp71.21 = icmp eq i32 %rem70.21, 0
  br i1 %cmp71.21, label %if.then73.21, label %if.end.22

if.then73.21:                                     ; preds = %if.end.21
  %add74.21 = add nsw i32 %var1.1.20, %rem13
  %call79.21 = tail call i32 @rand() #2
  %rem80.21 = srem i32 %call79.21, 5
  %call88.21 = tail call i32 @rand() #2
  %rem89.21 = srem i32 %call88.21, 100
  %301 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.21 = add nsw i32 %rem89.21, %301
  store i32 %add90.21, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.21 = tail call i32 @rand() #2
  %rem89.1.21 = srem i32 %call88.1.21, 100
  %302 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.21 = add nsw i32 %rem89.1.21, %302
  store i32 %add90.1.21, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.21 = tail call i32 @rand() #2
  %rem89.2.21 = srem i32 %call88.2.21, 100
  %303 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.21 = add nsw i32 %rem89.2.21, %303
  store i32 %add90.2.21, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.21 = tail call i32 @rand() #2
  %rem89.3.21 = srem i32 %call88.3.21, 100
  %304 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.21 = add nsw i32 %rem89.3.21, %304
  store i32 %add90.3.21, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.21 = tail call i32 @rand() #2
  %rem89.4.21 = srem i32 %call88.4.21, 100
  %305 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.21 = add nsw i32 %rem89.4.21, %305
  store i32 %add90.4.21, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.21 = tail call i32 @rand() #2
  %rem89.5.21 = srem i32 %call88.5.21, 100
  %306 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.21 = add nsw i32 %rem89.5.21, %306
  store i32 %add90.5.21, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.21 = tail call i32 @rand() #2
  %rem89.6.21 = srem i32 %call88.6.21, 100
  %307 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.21 = add nsw i32 %rem89.6.21, %307
  store i32 %add90.6.21, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.21 = tail call i32 @rand() #2
  %rem89.7.21 = srem i32 %call88.7.21, 100
  %308 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.21 = add nsw i32 %rem89.7.21, %308
  store i32 %add90.7.21, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.21 = tail call i32 @rand() #2
  %rem89.8.21 = srem i32 %call88.8.21, 100
  %309 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.21 = add nsw i32 %rem89.8.21, %309
  store i32 %add90.8.21, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.21 = tail call i32 @rand() #2
  %rem89.9.21 = srem i32 %call88.9.21, 100
  %310 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.21 = add nsw i32 %rem89.9.21, %310
  store i32 %add90.9.21, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.21 = mul nsw i32 %add74.21, %rem15
  %add81.21 = add nsw i32 %rem80.21, %rem78
  %.pre247 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre248 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then73.21
  %311 = phi i32 [ %297, %if.end.21 ], [ %add90.9.21, %if.then73.21 ]
  %312 = phi i32 [ %rem32.21, %if.end.21 ], [ %.pre248, %if.then73.21 ]
  %313 = phi i32 [ %add33.21, %if.end.21 ], [ %.pre247, %if.then73.21 ]
  %var4.1.21 = phi i32 [ %var4.1.20, %if.end.21 ], [ %mul75.21, %if.then73.21 ]
  %var5.1.21 = phi i32 [ %var5.1.20, %if.end.21 ], [ %rem9, %if.then73.21 ]
  %var1.1.21 = phi i32 [ %var1.1.20, %if.end.21 ], [ %add81.21, %if.then73.21 ]
  %inc101.21 = add nuw nsw i32 %i25.0178, 22
  %mul.22 = mul nsw i32 %313, 3
  %div.22 = sdiv i32 %312, 2
  %sub.22 = sub nsw i32 %mul.22, %div.22
  store i32 %sub.22, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.22 = add nsw i32 %sub.22, %313
  %rem32.22 = srem i32 %add31.22, 100
  store i32 %rem32.22, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.22 = or i32 %rem32.22, 1
  %add33.22 = add nsw i32 %or.22, %rem17
  store i32 %add33.22, i32* @main.hot_data.2, align 4, !tbaa !7
  %314 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %add42.22 = add nsw i32 %add33.22, %314
  store i32 %add42.22, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %rem70.22 = urem i32 %inc101.21, 1000
  %cmp71.22 = icmp eq i32 %rem70.22, 0
  br i1 %cmp71.22, label %if.then73.22, label %if.end.23

if.then73.22:                                     ; preds = %if.end.22
  %add74.22 = add nsw i32 %var1.1.21, %rem13
  %call79.22 = tail call i32 @rand() #2
  %rem80.22 = srem i32 %call79.22, 5
  %call88.22 = tail call i32 @rand() #2
  %rem89.22 = srem i32 %call88.22, 100
  %315 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.22 = add nsw i32 %rem89.22, %315
  store i32 %add90.22, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.22 = tail call i32 @rand() #2
  %rem89.1.22 = srem i32 %call88.1.22, 100
  %316 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.22 = add nsw i32 %rem89.1.22, %316
  store i32 %add90.1.22, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.22 = tail call i32 @rand() #2
  %rem89.2.22 = srem i32 %call88.2.22, 100
  %317 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.22 = add nsw i32 %rem89.2.22, %317
  store i32 %add90.2.22, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.22 = tail call i32 @rand() #2
  %rem89.3.22 = srem i32 %call88.3.22, 100
  %318 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.22 = add nsw i32 %rem89.3.22, %318
  store i32 %add90.3.22, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.22 = tail call i32 @rand() #2
  %rem89.4.22 = srem i32 %call88.4.22, 100
  %319 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.22 = add nsw i32 %rem89.4.22, %319
  store i32 %add90.4.22, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.22 = tail call i32 @rand() #2
  %rem89.5.22 = srem i32 %call88.5.22, 100
  %320 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.22 = add nsw i32 %rem89.5.22, %320
  store i32 %add90.5.22, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.22 = tail call i32 @rand() #2
  %rem89.6.22 = srem i32 %call88.6.22, 100
  %321 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.22 = add nsw i32 %rem89.6.22, %321
  store i32 %add90.6.22, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.22 = tail call i32 @rand() #2
  %rem89.7.22 = srem i32 %call88.7.22, 100
  %322 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.22 = add nsw i32 %rem89.7.22, %322
  store i32 %add90.7.22, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.22 = tail call i32 @rand() #2
  %rem89.8.22 = srem i32 %call88.8.22, 100
  %323 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.22 = add nsw i32 %rem89.8.22, %323
  store i32 %add90.8.22, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.22 = tail call i32 @rand() #2
  %rem89.9.22 = srem i32 %call88.9.22, 100
  %324 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.22 = add nsw i32 %rem89.9.22, %324
  store i32 %add90.9.22, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.22 = mul nsw i32 %add74.22, %rem15
  %add81.22 = add nsw i32 %rem80.22, %rem78
  %.pre249 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre250 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then73.22
  %325 = phi i32 [ %311, %if.end.22 ], [ %add90.9.22, %if.then73.22 ]
  %326 = phi i32 [ %rem32.22, %if.end.22 ], [ %.pre250, %if.then73.22 ]
  %327 = phi i32 [ %add33.22, %if.end.22 ], [ %.pre249, %if.then73.22 ]
  %var4.1.22 = phi i32 [ %var4.1.21, %if.end.22 ], [ %mul75.22, %if.then73.22 ]
  %var5.1.22 = phi i32 [ %var5.1.21, %if.end.22 ], [ %rem9, %if.then73.22 ]
  %var1.1.22 = phi i32 [ %var1.1.21, %if.end.22 ], [ %add81.22, %if.then73.22 ]
  %inc101.22 = add nuw nsw i32 %i25.0178, 23
  %mul.23 = mul nsw i32 %327, 3
  %div.23 = sdiv i32 %326, 2
  %sub.23 = sub nsw i32 %mul.23, %div.23
  store i32 %sub.23, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.23 = add nsw i32 %sub.23, %327
  %rem32.23 = srem i32 %add31.23, 100
  store i32 %rem32.23, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.23 = or i32 %rem32.23, 1
  %add33.23 = add nsw i32 %or.23, %rem17
  store i32 %add33.23, i32* @main.hot_data.2, align 4, !tbaa !7
  %328 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %add42.23 = add nsw i32 %add33.23, %328
  store i32 %add42.23, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %rem70.23 = urem i32 %inc101.22, 1000
  %cmp71.23 = icmp eq i32 %rem70.23, 0
  br i1 %cmp71.23, label %if.then73.23, label %if.end.24

if.then73.23:                                     ; preds = %if.end.23
  %add74.23 = add nsw i32 %var1.1.22, %rem13
  %call79.23 = tail call i32 @rand() #2
  %rem80.23 = srem i32 %call79.23, 5
  %call88.23 = tail call i32 @rand() #2
  %rem89.23 = srem i32 %call88.23, 100
  %329 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.23 = add nsw i32 %rem89.23, %329
  store i32 %add90.23, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.23 = tail call i32 @rand() #2
  %rem89.1.23 = srem i32 %call88.1.23, 100
  %330 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.23 = add nsw i32 %rem89.1.23, %330
  store i32 %add90.1.23, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.23 = tail call i32 @rand() #2
  %rem89.2.23 = srem i32 %call88.2.23, 100
  %331 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.23 = add nsw i32 %rem89.2.23, %331
  store i32 %add90.2.23, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.23 = tail call i32 @rand() #2
  %rem89.3.23 = srem i32 %call88.3.23, 100
  %332 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.23 = add nsw i32 %rem89.3.23, %332
  store i32 %add90.3.23, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.23 = tail call i32 @rand() #2
  %rem89.4.23 = srem i32 %call88.4.23, 100
  %333 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.23 = add nsw i32 %rem89.4.23, %333
  store i32 %add90.4.23, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.23 = tail call i32 @rand() #2
  %rem89.5.23 = srem i32 %call88.5.23, 100
  %334 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.23 = add nsw i32 %rem89.5.23, %334
  store i32 %add90.5.23, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.23 = tail call i32 @rand() #2
  %rem89.6.23 = srem i32 %call88.6.23, 100
  %335 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.23 = add nsw i32 %rem89.6.23, %335
  store i32 %add90.6.23, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.23 = tail call i32 @rand() #2
  %rem89.7.23 = srem i32 %call88.7.23, 100
  %336 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.23 = add nsw i32 %rem89.7.23, %336
  store i32 %add90.7.23, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.23 = tail call i32 @rand() #2
  %rem89.8.23 = srem i32 %call88.8.23, 100
  %337 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.23 = add nsw i32 %rem89.8.23, %337
  store i32 %add90.8.23, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.23 = tail call i32 @rand() #2
  %rem89.9.23 = srem i32 %call88.9.23, 100
  %338 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.23 = add nsw i32 %rem89.9.23, %338
  store i32 %add90.9.23, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.23 = mul nsw i32 %add74.23, %rem15
  %add81.23 = add nsw i32 %rem80.23, %rem78
  %.pre251 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre252 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then73.23
  %339 = phi i32 [ %325, %if.end.23 ], [ %add90.9.23, %if.then73.23 ]
  %340 = phi i32 [ %rem32.23, %if.end.23 ], [ %.pre252, %if.then73.23 ]
  %341 = phi i32 [ %add33.23, %if.end.23 ], [ %.pre251, %if.then73.23 ]
  %var4.1.23 = phi i32 [ %var4.1.22, %if.end.23 ], [ %mul75.23, %if.then73.23 ]
  %var5.1.23 = phi i32 [ %var5.1.22, %if.end.23 ], [ %rem9, %if.then73.23 ]
  %var1.1.23 = phi i32 [ %var1.1.22, %if.end.23 ], [ %add81.23, %if.then73.23 ]
  %inc101.23 = add nuw nsw i32 %i25.0178, 24
  %mul.24 = mul nsw i32 %341, 3
  %div.24 = sdiv i32 %340, 2
  %sub.24 = sub nsw i32 %mul.24, %div.24
  store i32 %sub.24, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.24 = add nsw i32 %sub.24, %341
  %rem32.24 = srem i32 %add31.24, 100
  store i32 %rem32.24, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.24 = or i32 %rem32.24, 1
  %add33.24 = add nsw i32 %or.24, %rem17
  store i32 %add33.24, i32* @main.hot_data.2, align 4, !tbaa !7
  %342 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %add42.24 = add nsw i32 %add33.24, %342
  store i32 %add42.24, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %rem70.24 = urem i32 %inc101.23, 1000
  %cmp71.24 = icmp eq i32 %rem70.24, 0
  br i1 %cmp71.24, label %if.then73.24, label %if.end.25

if.then73.24:                                     ; preds = %if.end.24
  %add74.24 = add nsw i32 %var1.1.23, %rem13
  %call79.24 = tail call i32 @rand() #2
  %rem80.24 = srem i32 %call79.24, 5
  %call88.24 = tail call i32 @rand() #2
  %rem89.24 = srem i32 %call88.24, 100
  %343 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.24 = add nsw i32 %rem89.24, %343
  store i32 %add90.24, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.24 = tail call i32 @rand() #2
  %rem89.1.24 = srem i32 %call88.1.24, 100
  %344 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.24 = add nsw i32 %rem89.1.24, %344
  store i32 %add90.1.24, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.24 = tail call i32 @rand() #2
  %rem89.2.24 = srem i32 %call88.2.24, 100
  %345 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.24 = add nsw i32 %rem89.2.24, %345
  store i32 %add90.2.24, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.24 = tail call i32 @rand() #2
  %rem89.3.24 = srem i32 %call88.3.24, 100
  %346 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.24 = add nsw i32 %rem89.3.24, %346
  store i32 %add90.3.24, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.24 = tail call i32 @rand() #2
  %rem89.4.24 = srem i32 %call88.4.24, 100
  %347 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.24 = add nsw i32 %rem89.4.24, %347
  store i32 %add90.4.24, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.24 = tail call i32 @rand() #2
  %rem89.5.24 = srem i32 %call88.5.24, 100
  %348 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.24 = add nsw i32 %rem89.5.24, %348
  store i32 %add90.5.24, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.24 = tail call i32 @rand() #2
  %rem89.6.24 = srem i32 %call88.6.24, 100
  %349 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.24 = add nsw i32 %rem89.6.24, %349
  store i32 %add90.6.24, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.24 = tail call i32 @rand() #2
  %rem89.7.24 = srem i32 %call88.7.24, 100
  %350 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.24 = add nsw i32 %rem89.7.24, %350
  store i32 %add90.7.24, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.24 = tail call i32 @rand() #2
  %rem89.8.24 = srem i32 %call88.8.24, 100
  %351 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.24 = add nsw i32 %rem89.8.24, %351
  store i32 %add90.8.24, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.24 = tail call i32 @rand() #2
  %rem89.9.24 = srem i32 %call88.9.24, 100
  %352 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.24 = add nsw i32 %rem89.9.24, %352
  store i32 %add90.9.24, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.24 = mul nsw i32 %add74.24, %rem15
  %add81.24 = add nsw i32 %rem80.24, %rem78
  %.pre253 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre254 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.then73.24
  %353 = phi i32 [ %339, %if.end.24 ], [ %add90.9.24, %if.then73.24 ]
  %354 = phi i32 [ %rem32.24, %if.end.24 ], [ %.pre254, %if.then73.24 ]
  %355 = phi i32 [ %add33.24, %if.end.24 ], [ %.pre253, %if.then73.24 ]
  %var4.1.24 = phi i32 [ %var4.1.23, %if.end.24 ], [ %mul75.24, %if.then73.24 ]
  %var5.1.24 = phi i32 [ %var5.1.23, %if.end.24 ], [ %rem9, %if.then73.24 ]
  %var1.1.24 = phi i32 [ %var1.1.23, %if.end.24 ], [ %add81.24, %if.then73.24 ]
  %inc101.24 = add nuw nsw i32 %i25.0178, 25
  %mul.25 = mul nsw i32 %355, 3
  %div.25 = sdiv i32 %354, 2
  %sub.25 = sub nsw i32 %mul.25, %div.25
  store i32 %sub.25, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.25 = add nsw i32 %sub.25, %355
  %rem32.25 = srem i32 %add31.25, 100
  store i32 %rem32.25, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.25 = or i32 %rem32.25, 1
  %add33.25 = add nsw i32 %or.25, %rem17
  store i32 %add33.25, i32* @main.hot_data.2, align 4, !tbaa !7
  %356 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %add42.25 = add nsw i32 %add33.25, %356
  store i32 %add42.25, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %rem70.25 = urem i32 %inc101.24, 1000
  %cmp71.25 = icmp eq i32 %rem70.25, 0
  br i1 %cmp71.25, label %if.then73.25, label %if.end.26

if.then73.25:                                     ; preds = %if.end.25
  %add74.25 = add nsw i32 %var1.1.24, %rem13
  %call79.25 = tail call i32 @rand() #2
  %rem80.25 = srem i32 %call79.25, 5
  %call88.25 = tail call i32 @rand() #2
  %rem89.25 = srem i32 %call88.25, 100
  %357 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.25 = add nsw i32 %rem89.25, %357
  store i32 %add90.25, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.25 = tail call i32 @rand() #2
  %rem89.1.25 = srem i32 %call88.1.25, 100
  %358 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.25 = add nsw i32 %rem89.1.25, %358
  store i32 %add90.1.25, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.25 = tail call i32 @rand() #2
  %rem89.2.25 = srem i32 %call88.2.25, 100
  %359 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.25 = add nsw i32 %rem89.2.25, %359
  store i32 %add90.2.25, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.25 = tail call i32 @rand() #2
  %rem89.3.25 = srem i32 %call88.3.25, 100
  %360 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.25 = add nsw i32 %rem89.3.25, %360
  store i32 %add90.3.25, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.25 = tail call i32 @rand() #2
  %rem89.4.25 = srem i32 %call88.4.25, 100
  %361 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.25 = add nsw i32 %rem89.4.25, %361
  store i32 %add90.4.25, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.25 = tail call i32 @rand() #2
  %rem89.5.25 = srem i32 %call88.5.25, 100
  %362 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.25 = add nsw i32 %rem89.5.25, %362
  store i32 %add90.5.25, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.25 = tail call i32 @rand() #2
  %rem89.6.25 = srem i32 %call88.6.25, 100
  %363 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.25 = add nsw i32 %rem89.6.25, %363
  store i32 %add90.6.25, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.25 = tail call i32 @rand() #2
  %rem89.7.25 = srem i32 %call88.7.25, 100
  %364 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.25 = add nsw i32 %rem89.7.25, %364
  store i32 %add90.7.25, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.25 = tail call i32 @rand() #2
  %rem89.8.25 = srem i32 %call88.8.25, 100
  %365 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.25 = add nsw i32 %rem89.8.25, %365
  store i32 %add90.8.25, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.25 = tail call i32 @rand() #2
  %rem89.9.25 = srem i32 %call88.9.25, 100
  %366 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.25 = add nsw i32 %rem89.9.25, %366
  store i32 %add90.9.25, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.25 = mul nsw i32 %add74.25, %rem15
  %add81.25 = add nsw i32 %rem80.25, %rem78
  %.pre255 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre256 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then73.25
  %367 = phi i32 [ %353, %if.end.25 ], [ %add90.9.25, %if.then73.25 ]
  %368 = phi i32 [ %rem32.25, %if.end.25 ], [ %.pre256, %if.then73.25 ]
  %369 = phi i32 [ %add33.25, %if.end.25 ], [ %.pre255, %if.then73.25 ]
  %var4.1.25 = phi i32 [ %var4.1.24, %if.end.25 ], [ %mul75.25, %if.then73.25 ]
  %var5.1.25 = phi i32 [ %var5.1.24, %if.end.25 ], [ %rem9, %if.then73.25 ]
  %var1.1.25 = phi i32 [ %var1.1.24, %if.end.25 ], [ %add81.25, %if.then73.25 ]
  %inc101.25 = add nuw nsw i32 %i25.0178, 26
  %mul.26 = mul nsw i32 %369, 3
  %div.26 = sdiv i32 %368, 2
  %sub.26 = sub nsw i32 %mul.26, %div.26
  store i32 %sub.26, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.26 = add nsw i32 %sub.26, %369
  %rem32.26 = srem i32 %add31.26, 100
  store i32 %rem32.26, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.26 = or i32 %rem32.26, 1
  %add33.26 = add nsw i32 %or.26, %rem17
  store i32 %add33.26, i32* @main.hot_data.2, align 4, !tbaa !7
  %370 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %add42.26 = add nsw i32 %add33.26, %370
  store i32 %add42.26, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %rem70.26 = urem i32 %inc101.25, 1000
  %cmp71.26 = icmp eq i32 %rem70.26, 0
  br i1 %cmp71.26, label %if.then73.26, label %if.end.27

if.then73.26:                                     ; preds = %if.end.26
  %add74.26 = add nsw i32 %var1.1.25, %rem13
  %call79.26 = tail call i32 @rand() #2
  %rem80.26 = srem i32 %call79.26, 5
  %call88.26 = tail call i32 @rand() #2
  %rem89.26 = srem i32 %call88.26, 100
  %371 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.26 = add nsw i32 %rem89.26, %371
  store i32 %add90.26, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.26 = tail call i32 @rand() #2
  %rem89.1.26 = srem i32 %call88.1.26, 100
  %372 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.26 = add nsw i32 %rem89.1.26, %372
  store i32 %add90.1.26, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.26 = tail call i32 @rand() #2
  %rem89.2.26 = srem i32 %call88.2.26, 100
  %373 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.26 = add nsw i32 %rem89.2.26, %373
  store i32 %add90.2.26, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.26 = tail call i32 @rand() #2
  %rem89.3.26 = srem i32 %call88.3.26, 100
  %374 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.26 = add nsw i32 %rem89.3.26, %374
  store i32 %add90.3.26, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.26 = tail call i32 @rand() #2
  %rem89.4.26 = srem i32 %call88.4.26, 100
  %375 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.26 = add nsw i32 %rem89.4.26, %375
  store i32 %add90.4.26, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.26 = tail call i32 @rand() #2
  %rem89.5.26 = srem i32 %call88.5.26, 100
  %376 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.26 = add nsw i32 %rem89.5.26, %376
  store i32 %add90.5.26, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.26 = tail call i32 @rand() #2
  %rem89.6.26 = srem i32 %call88.6.26, 100
  %377 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.26 = add nsw i32 %rem89.6.26, %377
  store i32 %add90.6.26, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.26 = tail call i32 @rand() #2
  %rem89.7.26 = srem i32 %call88.7.26, 100
  %378 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.26 = add nsw i32 %rem89.7.26, %378
  store i32 %add90.7.26, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.26 = tail call i32 @rand() #2
  %rem89.8.26 = srem i32 %call88.8.26, 100
  %379 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.26 = add nsw i32 %rem89.8.26, %379
  store i32 %add90.8.26, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.26 = tail call i32 @rand() #2
  %rem89.9.26 = srem i32 %call88.9.26, 100
  %380 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.26 = add nsw i32 %rem89.9.26, %380
  store i32 %add90.9.26, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.26 = mul nsw i32 %add74.26, %rem15
  %add81.26 = add nsw i32 %rem80.26, %rem78
  %.pre257 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre258 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then73.26
  %381 = phi i32 [ %367, %if.end.26 ], [ %add90.9.26, %if.then73.26 ]
  %382 = phi i32 [ %rem32.26, %if.end.26 ], [ %.pre258, %if.then73.26 ]
  %383 = phi i32 [ %add33.26, %if.end.26 ], [ %.pre257, %if.then73.26 ]
  %var4.1.26 = phi i32 [ %var4.1.25, %if.end.26 ], [ %mul75.26, %if.then73.26 ]
  %var5.1.26 = phi i32 [ %var5.1.25, %if.end.26 ], [ %rem9, %if.then73.26 ]
  %var1.1.26 = phi i32 [ %var1.1.25, %if.end.26 ], [ %add81.26, %if.then73.26 ]
  %inc101.26 = add nuw nsw i32 %i25.0178, 27
  %mul.27 = mul nsw i32 %383, 3
  %div.27 = sdiv i32 %382, 2
  %sub.27 = sub nsw i32 %mul.27, %div.27
  store i32 %sub.27, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.27 = add nsw i32 %sub.27, %383
  %rem32.27 = srem i32 %add31.27, 100
  store i32 %rem32.27, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.27 = or i32 %rem32.27, 1
  %add33.27 = add nsw i32 %or.27, %rem17
  store i32 %add33.27, i32* @main.hot_data.2, align 4, !tbaa !7
  %384 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %add42.27 = add nsw i32 %add33.27, %384
  store i32 %add42.27, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %rem70.27 = urem i32 %inc101.26, 1000
  %cmp71.27 = icmp eq i32 %rem70.27, 0
  br i1 %cmp71.27, label %if.then73.27, label %if.end.28

if.then73.27:                                     ; preds = %if.end.27
  %add74.27 = add nsw i32 %var1.1.26, %rem13
  %call79.27 = tail call i32 @rand() #2
  %rem80.27 = srem i32 %call79.27, 5
  %call88.27 = tail call i32 @rand() #2
  %rem89.27 = srem i32 %call88.27, 100
  %385 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.27 = add nsw i32 %rem89.27, %385
  store i32 %add90.27, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.27 = tail call i32 @rand() #2
  %rem89.1.27 = srem i32 %call88.1.27, 100
  %386 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.27 = add nsw i32 %rem89.1.27, %386
  store i32 %add90.1.27, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.27 = tail call i32 @rand() #2
  %rem89.2.27 = srem i32 %call88.2.27, 100
  %387 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.27 = add nsw i32 %rem89.2.27, %387
  store i32 %add90.2.27, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.27 = tail call i32 @rand() #2
  %rem89.3.27 = srem i32 %call88.3.27, 100
  %388 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.27 = add nsw i32 %rem89.3.27, %388
  store i32 %add90.3.27, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.27 = tail call i32 @rand() #2
  %rem89.4.27 = srem i32 %call88.4.27, 100
  %389 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.27 = add nsw i32 %rem89.4.27, %389
  store i32 %add90.4.27, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.27 = tail call i32 @rand() #2
  %rem89.5.27 = srem i32 %call88.5.27, 100
  %390 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.27 = add nsw i32 %rem89.5.27, %390
  store i32 %add90.5.27, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.27 = tail call i32 @rand() #2
  %rem89.6.27 = srem i32 %call88.6.27, 100
  %391 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.27 = add nsw i32 %rem89.6.27, %391
  store i32 %add90.6.27, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.27 = tail call i32 @rand() #2
  %rem89.7.27 = srem i32 %call88.7.27, 100
  %392 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.27 = add nsw i32 %rem89.7.27, %392
  store i32 %add90.7.27, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.27 = tail call i32 @rand() #2
  %rem89.8.27 = srem i32 %call88.8.27, 100
  %393 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.27 = add nsw i32 %rem89.8.27, %393
  store i32 %add90.8.27, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.27 = tail call i32 @rand() #2
  %rem89.9.27 = srem i32 %call88.9.27, 100
  %394 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.27 = add nsw i32 %rem89.9.27, %394
  store i32 %add90.9.27, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.27 = mul nsw i32 %add74.27, %rem15
  %add81.27 = add nsw i32 %rem80.27, %rem78
  %.pre259 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre260 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then73.27
  %395 = phi i32 [ %381, %if.end.27 ], [ %add90.9.27, %if.then73.27 ]
  %396 = phi i32 [ %rem32.27, %if.end.27 ], [ %.pre260, %if.then73.27 ]
  %397 = phi i32 [ %add33.27, %if.end.27 ], [ %.pre259, %if.then73.27 ]
  %var4.1.27 = phi i32 [ %var4.1.26, %if.end.27 ], [ %mul75.27, %if.then73.27 ]
  %var5.1.27 = phi i32 [ %var5.1.26, %if.end.27 ], [ %rem9, %if.then73.27 ]
  %var1.1.27 = phi i32 [ %var1.1.26, %if.end.27 ], [ %add81.27, %if.then73.27 ]
  %inc101.27 = add nuw nsw i32 %i25.0178, 28
  %mul.28 = mul nsw i32 %397, 3
  %div.28 = sdiv i32 %396, 2
  %sub.28 = sub nsw i32 %mul.28, %div.28
  store i32 %sub.28, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.28 = add nsw i32 %sub.28, %397
  %rem32.28 = srem i32 %add31.28, 100
  store i32 %rem32.28, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.28 = or i32 %rem32.28, 1
  %add33.28 = add nsw i32 %or.28, %rem17
  store i32 %add33.28, i32* @main.hot_data.2, align 4, !tbaa !7
  %398 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %add42.28 = add nsw i32 %add33.28, %398
  store i32 %add42.28, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %rem70.28 = urem i32 %inc101.27, 1000
  %cmp71.28 = icmp eq i32 %rem70.28, 0
  br i1 %cmp71.28, label %if.then73.28, label %if.end.29

if.then73.28:                                     ; preds = %if.end.28
  %add74.28 = add nsw i32 %var1.1.27, %rem13
  %call79.28 = tail call i32 @rand() #2
  %rem80.28 = srem i32 %call79.28, 5
  %call88.28 = tail call i32 @rand() #2
  %rem89.28 = srem i32 %call88.28, 100
  %399 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.28 = add nsw i32 %rem89.28, %399
  store i32 %add90.28, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.28 = tail call i32 @rand() #2
  %rem89.1.28 = srem i32 %call88.1.28, 100
  %400 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.28 = add nsw i32 %rem89.1.28, %400
  store i32 %add90.1.28, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.28 = tail call i32 @rand() #2
  %rem89.2.28 = srem i32 %call88.2.28, 100
  %401 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.28 = add nsw i32 %rem89.2.28, %401
  store i32 %add90.2.28, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.28 = tail call i32 @rand() #2
  %rem89.3.28 = srem i32 %call88.3.28, 100
  %402 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.28 = add nsw i32 %rem89.3.28, %402
  store i32 %add90.3.28, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.28 = tail call i32 @rand() #2
  %rem89.4.28 = srem i32 %call88.4.28, 100
  %403 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.28 = add nsw i32 %rem89.4.28, %403
  store i32 %add90.4.28, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.28 = tail call i32 @rand() #2
  %rem89.5.28 = srem i32 %call88.5.28, 100
  %404 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.28 = add nsw i32 %rem89.5.28, %404
  store i32 %add90.5.28, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.28 = tail call i32 @rand() #2
  %rem89.6.28 = srem i32 %call88.6.28, 100
  %405 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.28 = add nsw i32 %rem89.6.28, %405
  store i32 %add90.6.28, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.28 = tail call i32 @rand() #2
  %rem89.7.28 = srem i32 %call88.7.28, 100
  %406 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.28 = add nsw i32 %rem89.7.28, %406
  store i32 %add90.7.28, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.28 = tail call i32 @rand() #2
  %rem89.8.28 = srem i32 %call88.8.28, 100
  %407 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.28 = add nsw i32 %rem89.8.28, %407
  store i32 %add90.8.28, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.28 = tail call i32 @rand() #2
  %rem89.9.28 = srem i32 %call88.9.28, 100
  %408 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.28 = add nsw i32 %rem89.9.28, %408
  store i32 %add90.9.28, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.28 = mul nsw i32 %add74.28, %rem15
  %add81.28 = add nsw i32 %rem80.28, %rem78
  %.pre261 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre262 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then73.28
  %409 = phi i32 [ %395, %if.end.28 ], [ %add90.9.28, %if.then73.28 ]
  %410 = phi i32 [ %rem32.28, %if.end.28 ], [ %.pre262, %if.then73.28 ]
  %411 = phi i32 [ %add33.28, %if.end.28 ], [ %.pre261, %if.then73.28 ]
  %var4.1.28 = phi i32 [ %var4.1.27, %if.end.28 ], [ %mul75.28, %if.then73.28 ]
  %var5.1.28 = phi i32 [ %var5.1.27, %if.end.28 ], [ %rem9, %if.then73.28 ]
  %var1.1.28 = phi i32 [ %var1.1.27, %if.end.28 ], [ %add81.28, %if.then73.28 ]
  %inc101.28 = add nuw nsw i32 %i25.0178, 29
  %mul.29 = mul nsw i32 %411, 3
  %div.29 = sdiv i32 %410, 2
  %sub.29 = sub nsw i32 %mul.29, %div.29
  store i32 %sub.29, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.29 = add nsw i32 %sub.29, %411
  %rem32.29 = srem i32 %add31.29, 100
  store i32 %rem32.29, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.29 = or i32 %rem32.29, 1
  %add33.29 = add nsw i32 %or.29, %rem17
  store i32 %add33.29, i32* @main.hot_data.2, align 4, !tbaa !7
  %add42.29 = add nsw i32 %add33.29, %409
  store i32 %add42.29, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %rem70.29 = urem i32 %inc101.28, 1000
  %cmp71.29 = icmp eq i32 %rem70.29, 0
  br i1 %cmp71.29, label %if.then73.29, label %if.end.30

if.then73.29:                                     ; preds = %if.end.29
  %add74.29 = add nsw i32 %var1.1.28, %rem13
  %call79.29 = tail call i32 @rand() #2
  %rem80.29 = srem i32 %call79.29, 5
  %call88.29 = tail call i32 @rand() #2
  %rem89.29 = srem i32 %call88.29, 100
  %412 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.29 = add nsw i32 %rem89.29, %412
  store i32 %add90.29, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.29 = tail call i32 @rand() #2
  %rem89.1.29 = srem i32 %call88.1.29, 100
  %413 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.29 = add nsw i32 %rem89.1.29, %413
  store i32 %add90.1.29, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.29 = tail call i32 @rand() #2
  %rem89.2.29 = srem i32 %call88.2.29, 100
  %414 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.29 = add nsw i32 %rem89.2.29, %414
  store i32 %add90.2.29, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.29 = tail call i32 @rand() #2
  %rem89.3.29 = srem i32 %call88.3.29, 100
  %415 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.29 = add nsw i32 %rem89.3.29, %415
  store i32 %add90.3.29, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.29 = tail call i32 @rand() #2
  %rem89.4.29 = srem i32 %call88.4.29, 100
  %416 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.29 = add nsw i32 %rem89.4.29, %416
  store i32 %add90.4.29, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.29 = tail call i32 @rand() #2
  %rem89.5.29 = srem i32 %call88.5.29, 100
  %417 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.29 = add nsw i32 %rem89.5.29, %417
  store i32 %add90.5.29, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.29 = tail call i32 @rand() #2
  %rem89.6.29 = srem i32 %call88.6.29, 100
  %418 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.29 = add nsw i32 %rem89.6.29, %418
  store i32 %add90.6.29, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.29 = tail call i32 @rand() #2
  %rem89.7.29 = srem i32 %call88.7.29, 100
  %419 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.29 = add nsw i32 %rem89.7.29, %419
  store i32 %add90.7.29, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.29 = tail call i32 @rand() #2
  %rem89.8.29 = srem i32 %call88.8.29, 100
  %420 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.29 = add nsw i32 %rem89.8.29, %420
  store i32 %add90.8.29, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.29 = tail call i32 @rand() #2
  %rem89.9.29 = srem i32 %call88.9.29, 100
  %421 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.29 = add nsw i32 %rem89.9.29, %421
  store i32 %add90.9.29, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.29 = mul nsw i32 %add74.29, %rem15
  %add81.29 = add nsw i32 %rem80.29, %rem78
  %.pre263 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre264 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then73.29
  %422 = phi i32 [ %add42.29, %if.end.29 ], [ %add90.9.29, %if.then73.29 ]
  %423 = phi i32 [ %rem32.29, %if.end.29 ], [ %.pre264, %if.then73.29 ]
  %424 = phi i32 [ %add33.29, %if.end.29 ], [ %.pre263, %if.then73.29 ]
  %var4.1.29 = phi i32 [ %var4.1.28, %if.end.29 ], [ %mul75.29, %if.then73.29 ]
  %var5.1.29 = phi i32 [ %var5.1.28, %if.end.29 ], [ %rem9, %if.then73.29 ]
  %var1.1.29 = phi i32 [ %var1.1.28, %if.end.29 ], [ %add81.29, %if.then73.29 ]
  %inc101.29 = add nuw nsw i32 %i25.0178, 30
  %mul.30 = mul nsw i32 %424, 3
  %div.30 = sdiv i32 %423, 2
  %sub.30 = sub nsw i32 %mul.30, %div.30
  store i32 %sub.30, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.30 = add nsw i32 %sub.30, %424
  %rem32.30 = srem i32 %add31.30, 100
  store i32 %rem32.30, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.30 = or i32 %rem32.30, 1
  %add33.30 = add nsw i32 %or.30, %rem17
  store i32 %add33.30, i32* @main.hot_data.2, align 4, !tbaa !7
  %425 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %add42.30 = add nsw i32 %add33.30, %425
  store i32 %add42.30, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %rem70.30 = urem i32 %inc101.29, 1000
  %cmp71.30 = icmp eq i32 %rem70.30, 0
  br i1 %cmp71.30, label %if.then73.30, label %if.end.31

if.then73.30:                                     ; preds = %if.end.30
  %add74.30 = add nsw i32 %var1.1.29, %rem13
  %call79.30 = tail call i32 @rand() #2
  %rem80.30 = srem i32 %call79.30, 5
  %call88.30 = tail call i32 @rand() #2
  %rem89.30 = srem i32 %call88.30, 100
  %426 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.30 = add nsw i32 %rem89.30, %426
  store i32 %add90.30, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.30 = tail call i32 @rand() #2
  %rem89.1.30 = srem i32 %call88.1.30, 100
  %427 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.30 = add nsw i32 %rem89.1.30, %427
  store i32 %add90.1.30, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.30 = tail call i32 @rand() #2
  %rem89.2.30 = srem i32 %call88.2.30, 100
  %428 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.30 = add nsw i32 %rem89.2.30, %428
  store i32 %add90.2.30, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.30 = tail call i32 @rand() #2
  %rem89.3.30 = srem i32 %call88.3.30, 100
  %429 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.30 = add nsw i32 %rem89.3.30, %429
  store i32 %add90.3.30, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.30 = tail call i32 @rand() #2
  %rem89.4.30 = srem i32 %call88.4.30, 100
  %430 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.30 = add nsw i32 %rem89.4.30, %430
  store i32 %add90.4.30, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.30 = tail call i32 @rand() #2
  %rem89.5.30 = srem i32 %call88.5.30, 100
  %431 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.30 = add nsw i32 %rem89.5.30, %431
  store i32 %add90.5.30, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.30 = tail call i32 @rand() #2
  %rem89.6.30 = srem i32 %call88.6.30, 100
  %432 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.30 = add nsw i32 %rem89.6.30, %432
  store i32 %add90.6.30, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.30 = tail call i32 @rand() #2
  %rem89.7.30 = srem i32 %call88.7.30, 100
  %433 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.30 = add nsw i32 %rem89.7.30, %433
  store i32 %add90.7.30, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.30 = tail call i32 @rand() #2
  %rem89.8.30 = srem i32 %call88.8.30, 100
  %434 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.30 = add nsw i32 %rem89.8.30, %434
  store i32 %add90.8.30, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.30 = tail call i32 @rand() #2
  %rem89.9.30 = srem i32 %call88.9.30, 100
  %435 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.30 = add nsw i32 %rem89.9.30, %435
  store i32 %add90.9.30, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.30 = mul nsw i32 %add74.30, %rem15
  %add81.30 = add nsw i32 %rem80.30, %rem78
  %.pre265 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre266 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then73.30
  %436 = phi i32 [ %422, %if.end.30 ], [ %add90.9.30, %if.then73.30 ]
  %437 = phi i32 [ %rem32.30, %if.end.30 ], [ %.pre266, %if.then73.30 ]
  %438 = phi i32 [ %add33.30, %if.end.30 ], [ %.pre265, %if.then73.30 ]
  %var4.1.30 = phi i32 [ %var4.1.29, %if.end.30 ], [ %mul75.30, %if.then73.30 ]
  %var5.1.30 = phi i32 [ %var5.1.29, %if.end.30 ], [ %rem9, %if.then73.30 ]
  %var1.1.30 = phi i32 [ %var1.1.29, %if.end.30 ], [ %add81.30, %if.then73.30 ]
  %inc101.30 = add nuw nsw i32 %i25.0178, 31
  %mul.31 = mul nsw i32 %438, 3
  %div.31 = sdiv i32 %437, 2
  %sub.31 = sub nsw i32 %mul.31, %div.31
  store i32 %sub.31, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.31 = add nsw i32 %sub.31, %438
  %rem32.31 = srem i32 %add31.31, 100
  store i32 %rem32.31, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.31 = or i32 %rem32.31, 1
  %add33.31 = add nsw i32 %or.31, %rem17
  store i32 %add33.31, i32* @main.hot_data.2, align 4, !tbaa !7
  %439 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %add42.31 = add nsw i32 %add33.31, %439
  store i32 %add42.31, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %rem70.31 = urem i32 %inc101.30, 1000
  %cmp71.31 = icmp eq i32 %rem70.31, 0
  br i1 %cmp71.31, label %if.then73.31, label %if.end.32

if.then73.31:                                     ; preds = %if.end.31
  %add74.31 = add nsw i32 %var1.1.30, %rem13
  %call79.31 = tail call i32 @rand() #2
  %rem80.31 = srem i32 %call79.31, 5
  %call88.31 = tail call i32 @rand() #2
  %rem89.31 = srem i32 %call88.31, 100
  %440 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.31 = add nsw i32 %rem89.31, %440
  store i32 %add90.31, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.31 = tail call i32 @rand() #2
  %rem89.1.31 = srem i32 %call88.1.31, 100
  %441 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.31 = add nsw i32 %rem89.1.31, %441
  store i32 %add90.1.31, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.31 = tail call i32 @rand() #2
  %rem89.2.31 = srem i32 %call88.2.31, 100
  %442 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.31 = add nsw i32 %rem89.2.31, %442
  store i32 %add90.2.31, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.31 = tail call i32 @rand() #2
  %rem89.3.31 = srem i32 %call88.3.31, 100
  %443 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.31 = add nsw i32 %rem89.3.31, %443
  store i32 %add90.3.31, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.31 = tail call i32 @rand() #2
  %rem89.4.31 = srem i32 %call88.4.31, 100
  %444 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.31 = add nsw i32 %rem89.4.31, %444
  store i32 %add90.4.31, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.31 = tail call i32 @rand() #2
  %rem89.5.31 = srem i32 %call88.5.31, 100
  %445 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.31 = add nsw i32 %rem89.5.31, %445
  store i32 %add90.5.31, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.31 = tail call i32 @rand() #2
  %rem89.6.31 = srem i32 %call88.6.31, 100
  %446 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.31 = add nsw i32 %rem89.6.31, %446
  store i32 %add90.6.31, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.31 = tail call i32 @rand() #2
  %rem89.7.31 = srem i32 %call88.7.31, 100
  %447 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.31 = add nsw i32 %rem89.7.31, %447
  store i32 %add90.7.31, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.31 = tail call i32 @rand() #2
  %rem89.8.31 = srem i32 %call88.8.31, 100
  %448 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.31 = add nsw i32 %rem89.8.31, %448
  store i32 %add90.8.31, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.31 = tail call i32 @rand() #2
  %rem89.9.31 = srem i32 %call88.9.31, 100
  %449 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.31 = add nsw i32 %rem89.9.31, %449
  store i32 %add90.9.31, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.31 = mul nsw i32 %add74.31, %rem15
  %add81.31 = add nsw i32 %rem80.31, %rem78
  %.pre267 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre268 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then73.31
  %450 = phi i32 [ %436, %if.end.31 ], [ %add90.9.31, %if.then73.31 ]
  %451 = phi i32 [ %rem32.31, %if.end.31 ], [ %.pre268, %if.then73.31 ]
  %452 = phi i32 [ %add33.31, %if.end.31 ], [ %.pre267, %if.then73.31 ]
  %var4.1.31 = phi i32 [ %var4.1.30, %if.end.31 ], [ %mul75.31, %if.then73.31 ]
  %var5.1.31 = phi i32 [ %var5.1.30, %if.end.31 ], [ %rem9, %if.then73.31 ]
  %var1.1.31 = phi i32 [ %var1.1.30, %if.end.31 ], [ %add81.31, %if.then73.31 ]
  %inc101.31 = add nuw nsw i32 %i25.0178, 32
  %mul.32 = mul nsw i32 %452, 3
  %div.32 = sdiv i32 %451, 2
  %sub.32 = sub nsw i32 %mul.32, %div.32
  store i32 %sub.32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.32 = add nsw i32 %sub.32, %452
  %rem32.32 = srem i32 %add31.32, 100
  store i32 %rem32.32, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.32 = or i32 %rem32.32, 1
  %add33.32 = add nsw i32 %or.32, %rem17
  store i32 %add33.32, i32* @main.hot_data.2, align 4, !tbaa !7
  %453 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %add42.32 = add nsw i32 %add33.32, %453
  store i32 %add42.32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %rem70.32 = urem i32 %inc101.31, 1000
  %cmp71.32 = icmp eq i32 %rem70.32, 0
  br i1 %cmp71.32, label %if.then73.32, label %if.end.33

if.then73.32:                                     ; preds = %if.end.32
  %add74.32 = add nsw i32 %var1.1.31, %rem13
  %call79.32 = tail call i32 @rand() #2
  %rem80.32 = srem i32 %call79.32, 5
  %call88.32 = tail call i32 @rand() #2
  %rem89.32 = srem i32 %call88.32, 100
  %454 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.32 = add nsw i32 %rem89.32, %454
  store i32 %add90.32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.32 = tail call i32 @rand() #2
  %rem89.1.32 = srem i32 %call88.1.32, 100
  %455 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.32 = add nsw i32 %rem89.1.32, %455
  store i32 %add90.1.32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.32 = tail call i32 @rand() #2
  %rem89.2.32 = srem i32 %call88.2.32, 100
  %456 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.32 = add nsw i32 %rem89.2.32, %456
  store i32 %add90.2.32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.32 = tail call i32 @rand() #2
  %rem89.3.32 = srem i32 %call88.3.32, 100
  %457 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.32 = add nsw i32 %rem89.3.32, %457
  store i32 %add90.3.32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.32 = tail call i32 @rand() #2
  %rem89.4.32 = srem i32 %call88.4.32, 100
  %458 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.32 = add nsw i32 %rem89.4.32, %458
  store i32 %add90.4.32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.32 = tail call i32 @rand() #2
  %rem89.5.32 = srem i32 %call88.5.32, 100
  %459 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.32 = add nsw i32 %rem89.5.32, %459
  store i32 %add90.5.32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.32 = tail call i32 @rand() #2
  %rem89.6.32 = srem i32 %call88.6.32, 100
  %460 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.32 = add nsw i32 %rem89.6.32, %460
  store i32 %add90.6.32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.32 = tail call i32 @rand() #2
  %rem89.7.32 = srem i32 %call88.7.32, 100
  %461 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.32 = add nsw i32 %rem89.7.32, %461
  store i32 %add90.7.32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.32 = tail call i32 @rand() #2
  %rem89.8.32 = srem i32 %call88.8.32, 100
  %462 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.32 = add nsw i32 %rem89.8.32, %462
  store i32 %add90.8.32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.32 = tail call i32 @rand() #2
  %rem89.9.32 = srem i32 %call88.9.32, 100
  %463 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.32 = add nsw i32 %rem89.9.32, %463
  store i32 %add90.9.32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.32 = mul nsw i32 %add74.32, %rem15
  %add81.32 = add nsw i32 %rem80.32, %rem78
  %.pre269 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre270 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then73.32
  %464 = phi i32 [ %450, %if.end.32 ], [ %add90.9.32, %if.then73.32 ]
  %465 = phi i32 [ %rem32.32, %if.end.32 ], [ %.pre270, %if.then73.32 ]
  %466 = phi i32 [ %add33.32, %if.end.32 ], [ %.pre269, %if.then73.32 ]
  %var4.1.32 = phi i32 [ %var4.1.31, %if.end.32 ], [ %mul75.32, %if.then73.32 ]
  %var5.1.32 = phi i32 [ %var5.1.31, %if.end.32 ], [ %rem9, %if.then73.32 ]
  %var1.1.32 = phi i32 [ %var1.1.31, %if.end.32 ], [ %add81.32, %if.then73.32 ]
  %inc101.32 = add nuw nsw i32 %i25.0178, 33
  %mul.33 = mul nsw i32 %466, 3
  %div.33 = sdiv i32 %465, 2
  %sub.33 = sub nsw i32 %mul.33, %div.33
  store i32 %sub.33, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.33 = add nsw i32 %sub.33, %466
  %rem32.33 = srem i32 %add31.33, 100
  store i32 %rem32.33, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.33 = or i32 %rem32.33, 1
  %add33.33 = add nsw i32 %or.33, %rem17
  store i32 %add33.33, i32* @main.hot_data.2, align 4, !tbaa !7
  %467 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %add42.33 = add nsw i32 %add33.33, %467
  store i32 %add42.33, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %rem70.33 = urem i32 %inc101.32, 1000
  %cmp71.33 = icmp eq i32 %rem70.33, 0
  br i1 %cmp71.33, label %if.then73.33, label %if.end.34

if.then73.33:                                     ; preds = %if.end.33
  %add74.33 = add nsw i32 %var1.1.32, %rem13
  %call79.33 = tail call i32 @rand() #2
  %rem80.33 = srem i32 %call79.33, 5
  %call88.33 = tail call i32 @rand() #2
  %rem89.33 = srem i32 %call88.33, 100
  %468 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.33 = add nsw i32 %rem89.33, %468
  store i32 %add90.33, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.33 = tail call i32 @rand() #2
  %rem89.1.33 = srem i32 %call88.1.33, 100
  %469 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.33 = add nsw i32 %rem89.1.33, %469
  store i32 %add90.1.33, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.33 = tail call i32 @rand() #2
  %rem89.2.33 = srem i32 %call88.2.33, 100
  %470 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.33 = add nsw i32 %rem89.2.33, %470
  store i32 %add90.2.33, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.33 = tail call i32 @rand() #2
  %rem89.3.33 = srem i32 %call88.3.33, 100
  %471 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.33 = add nsw i32 %rem89.3.33, %471
  store i32 %add90.3.33, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.33 = tail call i32 @rand() #2
  %rem89.4.33 = srem i32 %call88.4.33, 100
  %472 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.33 = add nsw i32 %rem89.4.33, %472
  store i32 %add90.4.33, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.33 = tail call i32 @rand() #2
  %rem89.5.33 = srem i32 %call88.5.33, 100
  %473 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.33 = add nsw i32 %rem89.5.33, %473
  store i32 %add90.5.33, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.33 = tail call i32 @rand() #2
  %rem89.6.33 = srem i32 %call88.6.33, 100
  %474 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.33 = add nsw i32 %rem89.6.33, %474
  store i32 %add90.6.33, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.33 = tail call i32 @rand() #2
  %rem89.7.33 = srem i32 %call88.7.33, 100
  %475 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.33 = add nsw i32 %rem89.7.33, %475
  store i32 %add90.7.33, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.33 = tail call i32 @rand() #2
  %rem89.8.33 = srem i32 %call88.8.33, 100
  %476 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.33 = add nsw i32 %rem89.8.33, %476
  store i32 %add90.8.33, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.33 = tail call i32 @rand() #2
  %rem89.9.33 = srem i32 %call88.9.33, 100
  %477 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.33 = add nsw i32 %rem89.9.33, %477
  store i32 %add90.9.33, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.33 = mul nsw i32 %add74.33, %rem15
  %add81.33 = add nsw i32 %rem80.33, %rem78
  %.pre271 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre272 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then73.33
  %478 = phi i32 [ %464, %if.end.33 ], [ %add90.9.33, %if.then73.33 ]
  %479 = phi i32 [ %rem32.33, %if.end.33 ], [ %.pre272, %if.then73.33 ]
  %480 = phi i32 [ %add33.33, %if.end.33 ], [ %.pre271, %if.then73.33 ]
  %var4.1.33 = phi i32 [ %var4.1.32, %if.end.33 ], [ %mul75.33, %if.then73.33 ]
  %var5.1.33 = phi i32 [ %var5.1.32, %if.end.33 ], [ %rem9, %if.then73.33 ]
  %var1.1.33 = phi i32 [ %var1.1.32, %if.end.33 ], [ %add81.33, %if.then73.33 ]
  %inc101.33 = add nuw nsw i32 %i25.0178, 34
  %mul.34 = mul nsw i32 %480, 3
  %div.34 = sdiv i32 %479, 2
  %sub.34 = sub nsw i32 %mul.34, %div.34
  store i32 %sub.34, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.34 = add nsw i32 %sub.34, %480
  %rem32.34 = srem i32 %add31.34, 100
  store i32 %rem32.34, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.34 = or i32 %rem32.34, 1
  %add33.34 = add nsw i32 %or.34, %rem17
  store i32 %add33.34, i32* @main.hot_data.2, align 4, !tbaa !7
  %481 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %add42.34 = add nsw i32 %add33.34, %481
  store i32 %add42.34, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %rem70.34 = urem i32 %inc101.33, 1000
  %cmp71.34 = icmp eq i32 %rem70.34, 0
  br i1 %cmp71.34, label %if.then73.34, label %if.end.35

if.then73.34:                                     ; preds = %if.end.34
  %add74.34 = add nsw i32 %var1.1.33, %rem13
  %call79.34 = tail call i32 @rand() #2
  %rem80.34 = srem i32 %call79.34, 5
  %call88.34 = tail call i32 @rand() #2
  %rem89.34 = srem i32 %call88.34, 100
  %482 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.34 = add nsw i32 %rem89.34, %482
  store i32 %add90.34, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.34 = tail call i32 @rand() #2
  %rem89.1.34 = srem i32 %call88.1.34, 100
  %483 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.34 = add nsw i32 %rem89.1.34, %483
  store i32 %add90.1.34, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.34 = tail call i32 @rand() #2
  %rem89.2.34 = srem i32 %call88.2.34, 100
  %484 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.34 = add nsw i32 %rem89.2.34, %484
  store i32 %add90.2.34, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.34 = tail call i32 @rand() #2
  %rem89.3.34 = srem i32 %call88.3.34, 100
  %485 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.34 = add nsw i32 %rem89.3.34, %485
  store i32 %add90.3.34, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.34 = tail call i32 @rand() #2
  %rem89.4.34 = srem i32 %call88.4.34, 100
  %486 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.34 = add nsw i32 %rem89.4.34, %486
  store i32 %add90.4.34, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.34 = tail call i32 @rand() #2
  %rem89.5.34 = srem i32 %call88.5.34, 100
  %487 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.34 = add nsw i32 %rem89.5.34, %487
  store i32 %add90.5.34, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.34 = tail call i32 @rand() #2
  %rem89.6.34 = srem i32 %call88.6.34, 100
  %488 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.34 = add nsw i32 %rem89.6.34, %488
  store i32 %add90.6.34, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.34 = tail call i32 @rand() #2
  %rem89.7.34 = srem i32 %call88.7.34, 100
  %489 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.34 = add nsw i32 %rem89.7.34, %489
  store i32 %add90.7.34, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.34 = tail call i32 @rand() #2
  %rem89.8.34 = srem i32 %call88.8.34, 100
  %490 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.34 = add nsw i32 %rem89.8.34, %490
  store i32 %add90.8.34, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.34 = tail call i32 @rand() #2
  %rem89.9.34 = srem i32 %call88.9.34, 100
  %491 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.34 = add nsw i32 %rem89.9.34, %491
  store i32 %add90.9.34, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.34 = mul nsw i32 %add74.34, %rem15
  %add81.34 = add nsw i32 %rem80.34, %rem78
  %.pre273 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre274 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then73.34
  %492 = phi i32 [ %478, %if.end.34 ], [ %add90.9.34, %if.then73.34 ]
  %493 = phi i32 [ %rem32.34, %if.end.34 ], [ %.pre274, %if.then73.34 ]
  %494 = phi i32 [ %add33.34, %if.end.34 ], [ %.pre273, %if.then73.34 ]
  %var4.1.34 = phi i32 [ %var4.1.33, %if.end.34 ], [ %mul75.34, %if.then73.34 ]
  %var5.1.34 = phi i32 [ %var5.1.33, %if.end.34 ], [ %rem9, %if.then73.34 ]
  %var1.1.34 = phi i32 [ %var1.1.33, %if.end.34 ], [ %add81.34, %if.then73.34 ]
  %inc101.34 = add nuw nsw i32 %i25.0178, 35
  %mul.35 = mul nsw i32 %494, 3
  %div.35 = sdiv i32 %493, 2
  %sub.35 = sub nsw i32 %mul.35, %div.35
  store i32 %sub.35, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.35 = add nsw i32 %sub.35, %494
  %rem32.35 = srem i32 %add31.35, 100
  store i32 %rem32.35, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.35 = or i32 %rem32.35, 1
  %add33.35 = add nsw i32 %or.35, %rem17
  store i32 %add33.35, i32* @main.hot_data.2, align 4, !tbaa !7
  %495 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %add42.35 = add nsw i32 %add33.35, %495
  store i32 %add42.35, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %rem70.35 = urem i32 %inc101.34, 1000
  %cmp71.35 = icmp eq i32 %rem70.35, 0
  br i1 %cmp71.35, label %if.then73.35, label %if.end.36

if.then73.35:                                     ; preds = %if.end.35
  %add74.35 = add nsw i32 %var1.1.34, %rem13
  %call79.35 = tail call i32 @rand() #2
  %rem80.35 = srem i32 %call79.35, 5
  %call88.35 = tail call i32 @rand() #2
  %rem89.35 = srem i32 %call88.35, 100
  %496 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.35 = add nsw i32 %rem89.35, %496
  store i32 %add90.35, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.35 = tail call i32 @rand() #2
  %rem89.1.35 = srem i32 %call88.1.35, 100
  %497 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.35 = add nsw i32 %rem89.1.35, %497
  store i32 %add90.1.35, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.35 = tail call i32 @rand() #2
  %rem89.2.35 = srem i32 %call88.2.35, 100
  %498 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.35 = add nsw i32 %rem89.2.35, %498
  store i32 %add90.2.35, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.35 = tail call i32 @rand() #2
  %rem89.3.35 = srem i32 %call88.3.35, 100
  %499 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.35 = add nsw i32 %rem89.3.35, %499
  store i32 %add90.3.35, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.35 = tail call i32 @rand() #2
  %rem89.4.35 = srem i32 %call88.4.35, 100
  %500 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.35 = add nsw i32 %rem89.4.35, %500
  store i32 %add90.4.35, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.35 = tail call i32 @rand() #2
  %rem89.5.35 = srem i32 %call88.5.35, 100
  %501 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.35 = add nsw i32 %rem89.5.35, %501
  store i32 %add90.5.35, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.35 = tail call i32 @rand() #2
  %rem89.6.35 = srem i32 %call88.6.35, 100
  %502 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.35 = add nsw i32 %rem89.6.35, %502
  store i32 %add90.6.35, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.35 = tail call i32 @rand() #2
  %rem89.7.35 = srem i32 %call88.7.35, 100
  %503 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.35 = add nsw i32 %rem89.7.35, %503
  store i32 %add90.7.35, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.35 = tail call i32 @rand() #2
  %rem89.8.35 = srem i32 %call88.8.35, 100
  %504 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.35 = add nsw i32 %rem89.8.35, %504
  store i32 %add90.8.35, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.35 = tail call i32 @rand() #2
  %rem89.9.35 = srem i32 %call88.9.35, 100
  %505 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.35 = add nsw i32 %rem89.9.35, %505
  store i32 %add90.9.35, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.35 = mul nsw i32 %add74.35, %rem15
  %add81.35 = add nsw i32 %rem80.35, %rem78
  %.pre275 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre276 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then73.35
  %506 = phi i32 [ %492, %if.end.35 ], [ %add90.9.35, %if.then73.35 ]
  %507 = phi i32 [ %rem32.35, %if.end.35 ], [ %.pre276, %if.then73.35 ]
  %508 = phi i32 [ %add33.35, %if.end.35 ], [ %.pre275, %if.then73.35 ]
  %var4.1.35 = phi i32 [ %var4.1.34, %if.end.35 ], [ %mul75.35, %if.then73.35 ]
  %var5.1.35 = phi i32 [ %var5.1.34, %if.end.35 ], [ %rem9, %if.then73.35 ]
  %var1.1.35 = phi i32 [ %var1.1.34, %if.end.35 ], [ %add81.35, %if.then73.35 ]
  %inc101.35 = add nuw nsw i32 %i25.0178, 36
  %mul.36 = mul nsw i32 %508, 3
  %div.36 = sdiv i32 %507, 2
  %sub.36 = sub nsw i32 %mul.36, %div.36
  store i32 %sub.36, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.36 = add nsw i32 %sub.36, %508
  %rem32.36 = srem i32 %add31.36, 100
  store i32 %rem32.36, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.36 = or i32 %rem32.36, 1
  %add33.36 = add nsw i32 %or.36, %rem17
  store i32 %add33.36, i32* @main.hot_data.2, align 4, !tbaa !7
  %509 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %add42.36 = add nsw i32 %add33.36, %509
  store i32 %add42.36, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %rem70.36 = urem i32 %inc101.35, 1000
  %cmp71.36 = icmp eq i32 %rem70.36, 0
  br i1 %cmp71.36, label %if.then73.36, label %if.end.37

if.then73.36:                                     ; preds = %if.end.36
  %add74.36 = add nsw i32 %var1.1.35, %rem13
  %call79.36 = tail call i32 @rand() #2
  %rem80.36 = srem i32 %call79.36, 5
  %call88.36 = tail call i32 @rand() #2
  %rem89.36 = srem i32 %call88.36, 100
  %510 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.36 = add nsw i32 %rem89.36, %510
  store i32 %add90.36, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.36 = tail call i32 @rand() #2
  %rem89.1.36 = srem i32 %call88.1.36, 100
  %511 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.36 = add nsw i32 %rem89.1.36, %511
  store i32 %add90.1.36, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.36 = tail call i32 @rand() #2
  %rem89.2.36 = srem i32 %call88.2.36, 100
  %512 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.36 = add nsw i32 %rem89.2.36, %512
  store i32 %add90.2.36, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.36 = tail call i32 @rand() #2
  %rem89.3.36 = srem i32 %call88.3.36, 100
  %513 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.36 = add nsw i32 %rem89.3.36, %513
  store i32 %add90.3.36, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.36 = tail call i32 @rand() #2
  %rem89.4.36 = srem i32 %call88.4.36, 100
  %514 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.36 = add nsw i32 %rem89.4.36, %514
  store i32 %add90.4.36, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.36 = tail call i32 @rand() #2
  %rem89.5.36 = srem i32 %call88.5.36, 100
  %515 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.36 = add nsw i32 %rem89.5.36, %515
  store i32 %add90.5.36, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.36 = tail call i32 @rand() #2
  %rem89.6.36 = srem i32 %call88.6.36, 100
  %516 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.36 = add nsw i32 %rem89.6.36, %516
  store i32 %add90.6.36, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.36 = tail call i32 @rand() #2
  %rem89.7.36 = srem i32 %call88.7.36, 100
  %517 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.36 = add nsw i32 %rem89.7.36, %517
  store i32 %add90.7.36, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.36 = tail call i32 @rand() #2
  %rem89.8.36 = srem i32 %call88.8.36, 100
  %518 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.36 = add nsw i32 %rem89.8.36, %518
  store i32 %add90.8.36, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.36 = tail call i32 @rand() #2
  %rem89.9.36 = srem i32 %call88.9.36, 100
  %519 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.36 = add nsw i32 %rem89.9.36, %519
  store i32 %add90.9.36, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.36 = mul nsw i32 %add74.36, %rem15
  %add81.36 = add nsw i32 %rem80.36, %rem78
  %.pre277 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre278 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.then73.36
  %520 = phi i32 [ %506, %if.end.36 ], [ %add90.9.36, %if.then73.36 ]
  %521 = phi i32 [ %rem32.36, %if.end.36 ], [ %.pre278, %if.then73.36 ]
  %522 = phi i32 [ %add33.36, %if.end.36 ], [ %.pre277, %if.then73.36 ]
  %var4.1.36 = phi i32 [ %var4.1.35, %if.end.36 ], [ %mul75.36, %if.then73.36 ]
  %var5.1.36 = phi i32 [ %var5.1.35, %if.end.36 ], [ %rem9, %if.then73.36 ]
  %var1.1.36 = phi i32 [ %var1.1.35, %if.end.36 ], [ %add81.36, %if.then73.36 ]
  %inc101.36 = add nuw nsw i32 %i25.0178, 37
  %mul.37 = mul nsw i32 %522, 3
  %div.37 = sdiv i32 %521, 2
  %sub.37 = sub nsw i32 %mul.37, %div.37
  store i32 %sub.37, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.37 = add nsw i32 %sub.37, %522
  %rem32.37 = srem i32 %add31.37, 100
  store i32 %rem32.37, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.37 = or i32 %rem32.37, 1
  %add33.37 = add nsw i32 %or.37, %rem17
  store i32 %add33.37, i32* @main.hot_data.2, align 4, !tbaa !7
  %523 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %add42.37 = add nsw i32 %add33.37, %523
  store i32 %add42.37, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %rem70.37 = urem i32 %inc101.36, 1000
  %cmp71.37 = icmp eq i32 %rem70.37, 0
  br i1 %cmp71.37, label %if.then73.37, label %if.end.38

if.then73.37:                                     ; preds = %if.end.37
  %add74.37 = add nsw i32 %var1.1.36, %rem13
  %call79.37 = tail call i32 @rand() #2
  %rem80.37 = srem i32 %call79.37, 5
  %call88.37 = tail call i32 @rand() #2
  %rem89.37 = srem i32 %call88.37, 100
  %524 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.37 = add nsw i32 %rem89.37, %524
  store i32 %add90.37, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.37 = tail call i32 @rand() #2
  %rem89.1.37 = srem i32 %call88.1.37, 100
  %525 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.37 = add nsw i32 %rem89.1.37, %525
  store i32 %add90.1.37, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.37 = tail call i32 @rand() #2
  %rem89.2.37 = srem i32 %call88.2.37, 100
  %526 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.37 = add nsw i32 %rem89.2.37, %526
  store i32 %add90.2.37, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.37 = tail call i32 @rand() #2
  %rem89.3.37 = srem i32 %call88.3.37, 100
  %527 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.37 = add nsw i32 %rem89.3.37, %527
  store i32 %add90.3.37, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.37 = tail call i32 @rand() #2
  %rem89.4.37 = srem i32 %call88.4.37, 100
  %528 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.37 = add nsw i32 %rem89.4.37, %528
  store i32 %add90.4.37, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.37 = tail call i32 @rand() #2
  %rem89.5.37 = srem i32 %call88.5.37, 100
  %529 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.37 = add nsw i32 %rem89.5.37, %529
  store i32 %add90.5.37, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.37 = tail call i32 @rand() #2
  %rem89.6.37 = srem i32 %call88.6.37, 100
  %530 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.37 = add nsw i32 %rem89.6.37, %530
  store i32 %add90.6.37, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.37 = tail call i32 @rand() #2
  %rem89.7.37 = srem i32 %call88.7.37, 100
  %531 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.37 = add nsw i32 %rem89.7.37, %531
  store i32 %add90.7.37, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.37 = tail call i32 @rand() #2
  %rem89.8.37 = srem i32 %call88.8.37, 100
  %532 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.37 = add nsw i32 %rem89.8.37, %532
  store i32 %add90.8.37, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.37 = tail call i32 @rand() #2
  %rem89.9.37 = srem i32 %call88.9.37, 100
  %533 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.37 = add nsw i32 %rem89.9.37, %533
  store i32 %add90.9.37, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.37 = mul nsw i32 %add74.37, %rem15
  %add81.37 = add nsw i32 %rem80.37, %rem78
  %.pre279 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre280 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then73.37
  %534 = phi i32 [ %520, %if.end.37 ], [ %add90.9.37, %if.then73.37 ]
  %535 = phi i32 [ %rem32.37, %if.end.37 ], [ %.pre280, %if.then73.37 ]
  %536 = phi i32 [ %add33.37, %if.end.37 ], [ %.pre279, %if.then73.37 ]
  %var4.1.37 = phi i32 [ %var4.1.36, %if.end.37 ], [ %mul75.37, %if.then73.37 ]
  %var5.1.37 = phi i32 [ %var5.1.36, %if.end.37 ], [ %rem9, %if.then73.37 ]
  %var1.1.37 = phi i32 [ %var1.1.36, %if.end.37 ], [ %add81.37, %if.then73.37 ]
  %inc101.37 = add nuw nsw i32 %i25.0178, 38
  %mul.38 = mul nsw i32 %536, 3
  %div.38 = sdiv i32 %535, 2
  %sub.38 = sub nsw i32 %mul.38, %div.38
  store i32 %sub.38, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.38 = add nsw i32 %sub.38, %536
  %rem32.38 = srem i32 %add31.38, 100
  store i32 %rem32.38, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.38 = or i32 %rem32.38, 1
  %add33.38 = add nsw i32 %or.38, %rem17
  store i32 %add33.38, i32* @main.hot_data.2, align 4, !tbaa !7
  %537 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %add42.38 = add nsw i32 %add33.38, %537
  store i32 %add42.38, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %rem70.38 = urem i32 %inc101.37, 1000
  %cmp71.38 = icmp eq i32 %rem70.38, 0
  br i1 %cmp71.38, label %if.then73.38, label %if.end.39

if.then73.38:                                     ; preds = %if.end.38
  %add74.38 = add nsw i32 %var1.1.37, %rem13
  %call79.38 = tail call i32 @rand() #2
  %rem80.38 = srem i32 %call79.38, 5
  %call88.38 = tail call i32 @rand() #2
  %rem89.38 = srem i32 %call88.38, 100
  %538 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.38 = add nsw i32 %rem89.38, %538
  store i32 %add90.38, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.38 = tail call i32 @rand() #2
  %rem89.1.38 = srem i32 %call88.1.38, 100
  %539 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.38 = add nsw i32 %rem89.1.38, %539
  store i32 %add90.1.38, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.38 = tail call i32 @rand() #2
  %rem89.2.38 = srem i32 %call88.2.38, 100
  %540 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.38 = add nsw i32 %rem89.2.38, %540
  store i32 %add90.2.38, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.38 = tail call i32 @rand() #2
  %rem89.3.38 = srem i32 %call88.3.38, 100
  %541 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.38 = add nsw i32 %rem89.3.38, %541
  store i32 %add90.3.38, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.38 = tail call i32 @rand() #2
  %rem89.4.38 = srem i32 %call88.4.38, 100
  %542 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.38 = add nsw i32 %rem89.4.38, %542
  store i32 %add90.4.38, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.38 = tail call i32 @rand() #2
  %rem89.5.38 = srem i32 %call88.5.38, 100
  %543 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.38 = add nsw i32 %rem89.5.38, %543
  store i32 %add90.5.38, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.38 = tail call i32 @rand() #2
  %rem89.6.38 = srem i32 %call88.6.38, 100
  %544 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.38 = add nsw i32 %rem89.6.38, %544
  store i32 %add90.6.38, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.38 = tail call i32 @rand() #2
  %rem89.7.38 = srem i32 %call88.7.38, 100
  %545 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.38 = add nsw i32 %rem89.7.38, %545
  store i32 %add90.7.38, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.38 = tail call i32 @rand() #2
  %rem89.8.38 = srem i32 %call88.8.38, 100
  %546 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.38 = add nsw i32 %rem89.8.38, %546
  store i32 %add90.8.38, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.38 = tail call i32 @rand() #2
  %rem89.9.38 = srem i32 %call88.9.38, 100
  %547 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.38 = add nsw i32 %rem89.9.38, %547
  store i32 %add90.9.38, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.38 = mul nsw i32 %add74.38, %rem15
  %add81.38 = add nsw i32 %rem80.38, %rem78
  %.pre281 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre282 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then73.38
  %548 = phi i32 [ %534, %if.end.38 ], [ %add90.9.38, %if.then73.38 ]
  %549 = phi i32 [ %rem32.38, %if.end.38 ], [ %.pre282, %if.then73.38 ]
  %550 = phi i32 [ %add33.38, %if.end.38 ], [ %.pre281, %if.then73.38 ]
  %var4.1.38 = phi i32 [ %var4.1.37, %if.end.38 ], [ %mul75.38, %if.then73.38 ]
  %var5.1.38 = phi i32 [ %var5.1.37, %if.end.38 ], [ %rem9, %if.then73.38 ]
  %var1.1.38 = phi i32 [ %var1.1.37, %if.end.38 ], [ %add81.38, %if.then73.38 ]
  %inc101.38 = add nuw nsw i32 %i25.0178, 39
  %mul.39 = mul nsw i32 %550, 3
  %div.39 = sdiv i32 %549, 2
  %sub.39 = sub nsw i32 %mul.39, %div.39
  store i32 %sub.39, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.39 = add nsw i32 %sub.39, %550
  %rem32.39 = srem i32 %add31.39, 100
  store i32 %rem32.39, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.39 = or i32 %rem32.39, 1
  %add33.39 = add nsw i32 %or.39, %rem17
  store i32 %add33.39, i32* @main.hot_data.2, align 4, !tbaa !7
  %add42.39 = add nsw i32 %add33.39, %548
  store i32 %add42.39, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %rem70.39 = urem i32 %inc101.38, 1000
  %cmp71.39 = icmp eq i32 %rem70.39, 0
  br i1 %cmp71.39, label %if.then73.39, label %if.end.40

if.then73.39:                                     ; preds = %if.end.39
  %add74.39 = add nsw i32 %var1.1.38, %rem13
  %call79.39 = tail call i32 @rand() #2
  %rem80.39 = srem i32 %call79.39, 5
  %call88.39 = tail call i32 @rand() #2
  %rem89.39 = srem i32 %call88.39, 100
  %551 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.39 = add nsw i32 %rem89.39, %551
  store i32 %add90.39, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.39 = tail call i32 @rand() #2
  %rem89.1.39 = srem i32 %call88.1.39, 100
  %552 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.39 = add nsw i32 %rem89.1.39, %552
  store i32 %add90.1.39, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.39 = tail call i32 @rand() #2
  %rem89.2.39 = srem i32 %call88.2.39, 100
  %553 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.39 = add nsw i32 %rem89.2.39, %553
  store i32 %add90.2.39, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.39 = tail call i32 @rand() #2
  %rem89.3.39 = srem i32 %call88.3.39, 100
  %554 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.39 = add nsw i32 %rem89.3.39, %554
  store i32 %add90.3.39, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.39 = tail call i32 @rand() #2
  %rem89.4.39 = srem i32 %call88.4.39, 100
  %555 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.39 = add nsw i32 %rem89.4.39, %555
  store i32 %add90.4.39, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.39 = tail call i32 @rand() #2
  %rem89.5.39 = srem i32 %call88.5.39, 100
  %556 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.39 = add nsw i32 %rem89.5.39, %556
  store i32 %add90.5.39, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.39 = tail call i32 @rand() #2
  %rem89.6.39 = srem i32 %call88.6.39, 100
  %557 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.39 = add nsw i32 %rem89.6.39, %557
  store i32 %add90.6.39, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.39 = tail call i32 @rand() #2
  %rem89.7.39 = srem i32 %call88.7.39, 100
  %558 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.39 = add nsw i32 %rem89.7.39, %558
  store i32 %add90.7.39, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.39 = tail call i32 @rand() #2
  %rem89.8.39 = srem i32 %call88.8.39, 100
  %559 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.39 = add nsw i32 %rem89.8.39, %559
  store i32 %add90.8.39, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.39 = tail call i32 @rand() #2
  %rem89.9.39 = srem i32 %call88.9.39, 100
  %560 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.39 = add nsw i32 %rem89.9.39, %560
  store i32 %add90.9.39, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.39 = mul nsw i32 %add74.39, %rem15
  %add81.39 = add nsw i32 %rem80.39, %rem78
  %.pre283 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre284 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then73.39
  %561 = phi i32 [ %add42.39, %if.end.39 ], [ %add90.9.39, %if.then73.39 ]
  %562 = phi i32 [ %rem32.39, %if.end.39 ], [ %.pre284, %if.then73.39 ]
  %563 = phi i32 [ %add33.39, %if.end.39 ], [ %.pre283, %if.then73.39 ]
  %var4.1.39 = phi i32 [ %var4.1.38, %if.end.39 ], [ %mul75.39, %if.then73.39 ]
  %var5.1.39 = phi i32 [ %var5.1.38, %if.end.39 ], [ %rem9, %if.then73.39 ]
  %var1.1.39 = phi i32 [ %var1.1.38, %if.end.39 ], [ %add81.39, %if.then73.39 ]
  %inc101.39 = add nuw nsw i32 %i25.0178, 40
  %mul.40 = mul nsw i32 %563, 3
  %div.40 = sdiv i32 %562, 2
  %sub.40 = sub nsw i32 %mul.40, %div.40
  store i32 %sub.40, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.40 = add nsw i32 %sub.40, %563
  %rem32.40 = srem i32 %add31.40, 100
  store i32 %rem32.40, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.40 = or i32 %rem32.40, 1
  %add33.40 = add nsw i32 %or.40, %rem17
  store i32 %add33.40, i32* @main.hot_data.2, align 4, !tbaa !7
  %564 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %add42.40 = add nsw i32 %add33.40, %564
  store i32 %add42.40, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %rem70.40 = urem i32 %inc101.39, 1000
  %cmp71.40 = icmp eq i32 %rem70.40, 0
  br i1 %cmp71.40, label %if.then73.40, label %if.end.41

if.then73.40:                                     ; preds = %if.end.40
  %add74.40 = add nsw i32 %var1.1.39, %rem13
  %call79.40 = tail call i32 @rand() #2
  %rem80.40 = srem i32 %call79.40, 5
  %call88.40 = tail call i32 @rand() #2
  %rem89.40 = srem i32 %call88.40, 100
  %565 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.40 = add nsw i32 %rem89.40, %565
  store i32 %add90.40, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.40 = tail call i32 @rand() #2
  %rem89.1.40 = srem i32 %call88.1.40, 100
  %566 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.40 = add nsw i32 %rem89.1.40, %566
  store i32 %add90.1.40, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.40 = tail call i32 @rand() #2
  %rem89.2.40 = srem i32 %call88.2.40, 100
  %567 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.40 = add nsw i32 %rem89.2.40, %567
  store i32 %add90.2.40, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.40 = tail call i32 @rand() #2
  %rem89.3.40 = srem i32 %call88.3.40, 100
  %568 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.40 = add nsw i32 %rem89.3.40, %568
  store i32 %add90.3.40, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.40 = tail call i32 @rand() #2
  %rem89.4.40 = srem i32 %call88.4.40, 100
  %569 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.40 = add nsw i32 %rem89.4.40, %569
  store i32 %add90.4.40, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.40 = tail call i32 @rand() #2
  %rem89.5.40 = srem i32 %call88.5.40, 100
  %570 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.40 = add nsw i32 %rem89.5.40, %570
  store i32 %add90.5.40, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.40 = tail call i32 @rand() #2
  %rem89.6.40 = srem i32 %call88.6.40, 100
  %571 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.40 = add nsw i32 %rem89.6.40, %571
  store i32 %add90.6.40, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.40 = tail call i32 @rand() #2
  %rem89.7.40 = srem i32 %call88.7.40, 100
  %572 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.40 = add nsw i32 %rem89.7.40, %572
  store i32 %add90.7.40, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.40 = tail call i32 @rand() #2
  %rem89.8.40 = srem i32 %call88.8.40, 100
  %573 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.40 = add nsw i32 %rem89.8.40, %573
  store i32 %add90.8.40, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.40 = tail call i32 @rand() #2
  %rem89.9.40 = srem i32 %call88.9.40, 100
  %574 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.40 = add nsw i32 %rem89.9.40, %574
  store i32 %add90.9.40, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.40 = mul nsw i32 %add74.40, %rem15
  %add81.40 = add nsw i32 %rem80.40, %rem78
  %.pre285 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre286 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then73.40
  %575 = phi i32 [ %561, %if.end.40 ], [ %add90.9.40, %if.then73.40 ]
  %576 = phi i32 [ %rem32.40, %if.end.40 ], [ %.pre286, %if.then73.40 ]
  %577 = phi i32 [ %add33.40, %if.end.40 ], [ %.pre285, %if.then73.40 ]
  %var4.1.40 = phi i32 [ %var4.1.39, %if.end.40 ], [ %mul75.40, %if.then73.40 ]
  %var5.1.40 = phi i32 [ %var5.1.39, %if.end.40 ], [ %rem9, %if.then73.40 ]
  %var1.1.40 = phi i32 [ %var1.1.39, %if.end.40 ], [ %add81.40, %if.then73.40 ]
  %inc101.40 = add nuw nsw i32 %i25.0178, 41
  %mul.41 = mul nsw i32 %577, 3
  %div.41 = sdiv i32 %576, 2
  %sub.41 = sub nsw i32 %mul.41, %div.41
  store i32 %sub.41, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.41 = add nsw i32 %sub.41, %577
  %rem32.41 = srem i32 %add31.41, 100
  store i32 %rem32.41, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.41 = or i32 %rem32.41, 1
  %add33.41 = add nsw i32 %or.41, %rem17
  store i32 %add33.41, i32* @main.hot_data.2, align 4, !tbaa !7
  %578 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %add42.41 = add nsw i32 %add33.41, %578
  store i32 %add42.41, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %rem70.41 = urem i32 %inc101.40, 1000
  %cmp71.41 = icmp eq i32 %rem70.41, 0
  br i1 %cmp71.41, label %if.then73.41, label %if.end.42

if.then73.41:                                     ; preds = %if.end.41
  %add74.41 = add nsw i32 %var1.1.40, %rem13
  %call79.41 = tail call i32 @rand() #2
  %rem80.41 = srem i32 %call79.41, 5
  %call88.41 = tail call i32 @rand() #2
  %rem89.41 = srem i32 %call88.41, 100
  %579 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.41 = add nsw i32 %rem89.41, %579
  store i32 %add90.41, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.41 = tail call i32 @rand() #2
  %rem89.1.41 = srem i32 %call88.1.41, 100
  %580 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.41 = add nsw i32 %rem89.1.41, %580
  store i32 %add90.1.41, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.41 = tail call i32 @rand() #2
  %rem89.2.41 = srem i32 %call88.2.41, 100
  %581 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.41 = add nsw i32 %rem89.2.41, %581
  store i32 %add90.2.41, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.41 = tail call i32 @rand() #2
  %rem89.3.41 = srem i32 %call88.3.41, 100
  %582 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.41 = add nsw i32 %rem89.3.41, %582
  store i32 %add90.3.41, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.41 = tail call i32 @rand() #2
  %rem89.4.41 = srem i32 %call88.4.41, 100
  %583 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.41 = add nsw i32 %rem89.4.41, %583
  store i32 %add90.4.41, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.41 = tail call i32 @rand() #2
  %rem89.5.41 = srem i32 %call88.5.41, 100
  %584 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.41 = add nsw i32 %rem89.5.41, %584
  store i32 %add90.5.41, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.41 = tail call i32 @rand() #2
  %rem89.6.41 = srem i32 %call88.6.41, 100
  %585 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.41 = add nsw i32 %rem89.6.41, %585
  store i32 %add90.6.41, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.41 = tail call i32 @rand() #2
  %rem89.7.41 = srem i32 %call88.7.41, 100
  %586 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.41 = add nsw i32 %rem89.7.41, %586
  store i32 %add90.7.41, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.41 = tail call i32 @rand() #2
  %rem89.8.41 = srem i32 %call88.8.41, 100
  %587 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.41 = add nsw i32 %rem89.8.41, %587
  store i32 %add90.8.41, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.41 = tail call i32 @rand() #2
  %rem89.9.41 = srem i32 %call88.9.41, 100
  %588 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.41 = add nsw i32 %rem89.9.41, %588
  store i32 %add90.9.41, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.41 = mul nsw i32 %add74.41, %rem15
  %add81.41 = add nsw i32 %rem80.41, %rem78
  %.pre287 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre288 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then73.41
  %589 = phi i32 [ %575, %if.end.41 ], [ %add90.9.41, %if.then73.41 ]
  %590 = phi i32 [ %rem32.41, %if.end.41 ], [ %.pre288, %if.then73.41 ]
  %591 = phi i32 [ %add33.41, %if.end.41 ], [ %.pre287, %if.then73.41 ]
  %var4.1.41 = phi i32 [ %var4.1.40, %if.end.41 ], [ %mul75.41, %if.then73.41 ]
  %var5.1.41 = phi i32 [ %var5.1.40, %if.end.41 ], [ %rem9, %if.then73.41 ]
  %var1.1.41 = phi i32 [ %var1.1.40, %if.end.41 ], [ %add81.41, %if.then73.41 ]
  %inc101.41 = add nuw nsw i32 %i25.0178, 42
  %mul.42 = mul nsw i32 %591, 3
  %div.42 = sdiv i32 %590, 2
  %sub.42 = sub nsw i32 %mul.42, %div.42
  store i32 %sub.42, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.42 = add nsw i32 %sub.42, %591
  %rem32.42 = srem i32 %add31.42, 100
  store i32 %rem32.42, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.42 = or i32 %rem32.42, 1
  %add33.42 = add nsw i32 %or.42, %rem17
  store i32 %add33.42, i32* @main.hot_data.2, align 4, !tbaa !7
  %592 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %add42.42 = add nsw i32 %add33.42, %592
  store i32 %add42.42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %rem70.42 = urem i32 %inc101.41, 1000
  %cmp71.42 = icmp eq i32 %rem70.42, 0
  br i1 %cmp71.42, label %if.then73.42, label %if.end.43

if.then73.42:                                     ; preds = %if.end.42
  %add74.42 = add nsw i32 %var1.1.41, %rem13
  %call79.42 = tail call i32 @rand() #2
  %rem80.42 = srem i32 %call79.42, 5
  %call88.42 = tail call i32 @rand() #2
  %rem89.42 = srem i32 %call88.42, 100
  %593 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.42 = add nsw i32 %rem89.42, %593
  store i32 %add90.42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.42 = tail call i32 @rand() #2
  %rem89.1.42 = srem i32 %call88.1.42, 100
  %594 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.42 = add nsw i32 %rem89.1.42, %594
  store i32 %add90.1.42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.42 = tail call i32 @rand() #2
  %rem89.2.42 = srem i32 %call88.2.42, 100
  %595 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.42 = add nsw i32 %rem89.2.42, %595
  store i32 %add90.2.42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.42 = tail call i32 @rand() #2
  %rem89.3.42 = srem i32 %call88.3.42, 100
  %596 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.42 = add nsw i32 %rem89.3.42, %596
  store i32 %add90.3.42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.42 = tail call i32 @rand() #2
  %rem89.4.42 = srem i32 %call88.4.42, 100
  %597 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.42 = add nsw i32 %rem89.4.42, %597
  store i32 %add90.4.42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.42 = tail call i32 @rand() #2
  %rem89.5.42 = srem i32 %call88.5.42, 100
  %598 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.42 = add nsw i32 %rem89.5.42, %598
  store i32 %add90.5.42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.42 = tail call i32 @rand() #2
  %rem89.6.42 = srem i32 %call88.6.42, 100
  %599 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.42 = add nsw i32 %rem89.6.42, %599
  store i32 %add90.6.42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.42 = tail call i32 @rand() #2
  %rem89.7.42 = srem i32 %call88.7.42, 100
  %600 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.42 = add nsw i32 %rem89.7.42, %600
  store i32 %add90.7.42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.42 = tail call i32 @rand() #2
  %rem89.8.42 = srem i32 %call88.8.42, 100
  %601 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.42 = add nsw i32 %rem89.8.42, %601
  store i32 %add90.8.42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.42 = tail call i32 @rand() #2
  %rem89.9.42 = srem i32 %call88.9.42, 100
  %602 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.42 = add nsw i32 %rem89.9.42, %602
  store i32 %add90.9.42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.42 = mul nsw i32 %add74.42, %rem15
  %add81.42 = add nsw i32 %rem80.42, %rem78
  %.pre289 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre290 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then73.42
  %603 = phi i32 [ %589, %if.end.42 ], [ %add90.9.42, %if.then73.42 ]
  %604 = phi i32 [ %rem32.42, %if.end.42 ], [ %.pre290, %if.then73.42 ]
  %605 = phi i32 [ %add33.42, %if.end.42 ], [ %.pre289, %if.then73.42 ]
  %var4.1.42 = phi i32 [ %var4.1.41, %if.end.42 ], [ %mul75.42, %if.then73.42 ]
  %var5.1.42 = phi i32 [ %var5.1.41, %if.end.42 ], [ %rem9, %if.then73.42 ]
  %var1.1.42 = phi i32 [ %var1.1.41, %if.end.42 ], [ %add81.42, %if.then73.42 ]
  %inc101.42 = add nuw nsw i32 %i25.0178, 43
  %mul.43 = mul nsw i32 %605, 3
  %div.43 = sdiv i32 %604, 2
  %sub.43 = sub nsw i32 %mul.43, %div.43
  store i32 %sub.43, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.43 = add nsw i32 %sub.43, %605
  %rem32.43 = srem i32 %add31.43, 100
  store i32 %rem32.43, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.43 = or i32 %rem32.43, 1
  %add33.43 = add nsw i32 %or.43, %rem17
  store i32 %add33.43, i32* @main.hot_data.2, align 4, !tbaa !7
  %606 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %add42.43 = add nsw i32 %add33.43, %606
  store i32 %add42.43, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %rem70.43 = urem i32 %inc101.42, 1000
  %cmp71.43 = icmp eq i32 %rem70.43, 0
  br i1 %cmp71.43, label %if.then73.43, label %if.end.44

if.then73.43:                                     ; preds = %if.end.43
  %add74.43 = add nsw i32 %var1.1.42, %rem13
  %call79.43 = tail call i32 @rand() #2
  %rem80.43 = srem i32 %call79.43, 5
  %call88.43 = tail call i32 @rand() #2
  %rem89.43 = srem i32 %call88.43, 100
  %607 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.43 = add nsw i32 %rem89.43, %607
  store i32 %add90.43, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.43 = tail call i32 @rand() #2
  %rem89.1.43 = srem i32 %call88.1.43, 100
  %608 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.43 = add nsw i32 %rem89.1.43, %608
  store i32 %add90.1.43, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.43 = tail call i32 @rand() #2
  %rem89.2.43 = srem i32 %call88.2.43, 100
  %609 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.43 = add nsw i32 %rem89.2.43, %609
  store i32 %add90.2.43, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.43 = tail call i32 @rand() #2
  %rem89.3.43 = srem i32 %call88.3.43, 100
  %610 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.43 = add nsw i32 %rem89.3.43, %610
  store i32 %add90.3.43, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.43 = tail call i32 @rand() #2
  %rem89.4.43 = srem i32 %call88.4.43, 100
  %611 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.43 = add nsw i32 %rem89.4.43, %611
  store i32 %add90.4.43, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.43 = tail call i32 @rand() #2
  %rem89.5.43 = srem i32 %call88.5.43, 100
  %612 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.43 = add nsw i32 %rem89.5.43, %612
  store i32 %add90.5.43, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.43 = tail call i32 @rand() #2
  %rem89.6.43 = srem i32 %call88.6.43, 100
  %613 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.43 = add nsw i32 %rem89.6.43, %613
  store i32 %add90.6.43, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.43 = tail call i32 @rand() #2
  %rem89.7.43 = srem i32 %call88.7.43, 100
  %614 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.43 = add nsw i32 %rem89.7.43, %614
  store i32 %add90.7.43, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.43 = tail call i32 @rand() #2
  %rem89.8.43 = srem i32 %call88.8.43, 100
  %615 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.43 = add nsw i32 %rem89.8.43, %615
  store i32 %add90.8.43, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.43 = tail call i32 @rand() #2
  %rem89.9.43 = srem i32 %call88.9.43, 100
  %616 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.43 = add nsw i32 %rem89.9.43, %616
  store i32 %add90.9.43, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.43 = mul nsw i32 %add74.43, %rem15
  %add81.43 = add nsw i32 %rem80.43, %rem78
  %.pre291 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre292 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then73.43
  %617 = phi i32 [ %603, %if.end.43 ], [ %add90.9.43, %if.then73.43 ]
  %618 = phi i32 [ %rem32.43, %if.end.43 ], [ %.pre292, %if.then73.43 ]
  %619 = phi i32 [ %add33.43, %if.end.43 ], [ %.pre291, %if.then73.43 ]
  %var4.1.43 = phi i32 [ %var4.1.42, %if.end.43 ], [ %mul75.43, %if.then73.43 ]
  %var5.1.43 = phi i32 [ %var5.1.42, %if.end.43 ], [ %rem9, %if.then73.43 ]
  %var1.1.43 = phi i32 [ %var1.1.42, %if.end.43 ], [ %add81.43, %if.then73.43 ]
  %inc101.43 = add nuw nsw i32 %i25.0178, 44
  %mul.44 = mul nsw i32 %619, 3
  %div.44 = sdiv i32 %618, 2
  %sub.44 = sub nsw i32 %mul.44, %div.44
  store i32 %sub.44, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.44 = add nsw i32 %sub.44, %619
  %rem32.44 = srem i32 %add31.44, 100
  store i32 %rem32.44, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.44 = or i32 %rem32.44, 1
  %add33.44 = add nsw i32 %or.44, %rem17
  store i32 %add33.44, i32* @main.hot_data.2, align 4, !tbaa !7
  %620 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %add42.44 = add nsw i32 %add33.44, %620
  store i32 %add42.44, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %rem70.44 = urem i32 %inc101.43, 1000
  %cmp71.44 = icmp eq i32 %rem70.44, 0
  br i1 %cmp71.44, label %if.then73.44, label %if.end.45

if.then73.44:                                     ; preds = %if.end.44
  %add74.44 = add nsw i32 %var1.1.43, %rem13
  %call79.44 = tail call i32 @rand() #2
  %rem80.44 = srem i32 %call79.44, 5
  %call88.44 = tail call i32 @rand() #2
  %rem89.44 = srem i32 %call88.44, 100
  %621 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.44 = add nsw i32 %rem89.44, %621
  store i32 %add90.44, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.44 = tail call i32 @rand() #2
  %rem89.1.44 = srem i32 %call88.1.44, 100
  %622 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.44 = add nsw i32 %rem89.1.44, %622
  store i32 %add90.1.44, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.44 = tail call i32 @rand() #2
  %rem89.2.44 = srem i32 %call88.2.44, 100
  %623 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.44 = add nsw i32 %rem89.2.44, %623
  store i32 %add90.2.44, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.44 = tail call i32 @rand() #2
  %rem89.3.44 = srem i32 %call88.3.44, 100
  %624 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.44 = add nsw i32 %rem89.3.44, %624
  store i32 %add90.3.44, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.44 = tail call i32 @rand() #2
  %rem89.4.44 = srem i32 %call88.4.44, 100
  %625 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.44 = add nsw i32 %rem89.4.44, %625
  store i32 %add90.4.44, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.44 = tail call i32 @rand() #2
  %rem89.5.44 = srem i32 %call88.5.44, 100
  %626 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.44 = add nsw i32 %rem89.5.44, %626
  store i32 %add90.5.44, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.44 = tail call i32 @rand() #2
  %rem89.6.44 = srem i32 %call88.6.44, 100
  %627 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.44 = add nsw i32 %rem89.6.44, %627
  store i32 %add90.6.44, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.44 = tail call i32 @rand() #2
  %rem89.7.44 = srem i32 %call88.7.44, 100
  %628 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.44 = add nsw i32 %rem89.7.44, %628
  store i32 %add90.7.44, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.44 = tail call i32 @rand() #2
  %rem89.8.44 = srem i32 %call88.8.44, 100
  %629 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.44 = add nsw i32 %rem89.8.44, %629
  store i32 %add90.8.44, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.44 = tail call i32 @rand() #2
  %rem89.9.44 = srem i32 %call88.9.44, 100
  %630 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.44 = add nsw i32 %rem89.9.44, %630
  store i32 %add90.9.44, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.44 = mul nsw i32 %add74.44, %rem15
  %add81.44 = add nsw i32 %rem80.44, %rem78
  %.pre293 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre294 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then73.44
  %631 = phi i32 [ %617, %if.end.44 ], [ %add90.9.44, %if.then73.44 ]
  %632 = phi i32 [ %rem32.44, %if.end.44 ], [ %.pre294, %if.then73.44 ]
  %633 = phi i32 [ %add33.44, %if.end.44 ], [ %.pre293, %if.then73.44 ]
  %var4.1.44 = phi i32 [ %var4.1.43, %if.end.44 ], [ %mul75.44, %if.then73.44 ]
  %var5.1.44 = phi i32 [ %var5.1.43, %if.end.44 ], [ %rem9, %if.then73.44 ]
  %var1.1.44 = phi i32 [ %var1.1.43, %if.end.44 ], [ %add81.44, %if.then73.44 ]
  %inc101.44 = add nuw nsw i32 %i25.0178, 45
  %mul.45 = mul nsw i32 %633, 3
  %div.45 = sdiv i32 %632, 2
  %sub.45 = sub nsw i32 %mul.45, %div.45
  store i32 %sub.45, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.45 = add nsw i32 %sub.45, %633
  %rem32.45 = srem i32 %add31.45, 100
  store i32 %rem32.45, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.45 = or i32 %rem32.45, 1
  %add33.45 = add nsw i32 %or.45, %rem17
  store i32 %add33.45, i32* @main.hot_data.2, align 4, !tbaa !7
  %634 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %add42.45 = add nsw i32 %add33.45, %634
  store i32 %add42.45, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %rem70.45 = urem i32 %inc101.44, 1000
  %cmp71.45 = icmp eq i32 %rem70.45, 0
  br i1 %cmp71.45, label %if.then73.45, label %if.end.46

if.then73.45:                                     ; preds = %if.end.45
  %add74.45 = add nsw i32 %var1.1.44, %rem13
  %call79.45 = tail call i32 @rand() #2
  %rem80.45 = srem i32 %call79.45, 5
  %call88.45 = tail call i32 @rand() #2
  %rem89.45 = srem i32 %call88.45, 100
  %635 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.45 = add nsw i32 %rem89.45, %635
  store i32 %add90.45, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.45 = tail call i32 @rand() #2
  %rem89.1.45 = srem i32 %call88.1.45, 100
  %636 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.45 = add nsw i32 %rem89.1.45, %636
  store i32 %add90.1.45, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.45 = tail call i32 @rand() #2
  %rem89.2.45 = srem i32 %call88.2.45, 100
  %637 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.45 = add nsw i32 %rem89.2.45, %637
  store i32 %add90.2.45, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.45 = tail call i32 @rand() #2
  %rem89.3.45 = srem i32 %call88.3.45, 100
  %638 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.45 = add nsw i32 %rem89.3.45, %638
  store i32 %add90.3.45, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.45 = tail call i32 @rand() #2
  %rem89.4.45 = srem i32 %call88.4.45, 100
  %639 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.45 = add nsw i32 %rem89.4.45, %639
  store i32 %add90.4.45, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.45 = tail call i32 @rand() #2
  %rem89.5.45 = srem i32 %call88.5.45, 100
  %640 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.45 = add nsw i32 %rem89.5.45, %640
  store i32 %add90.5.45, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.45 = tail call i32 @rand() #2
  %rem89.6.45 = srem i32 %call88.6.45, 100
  %641 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.45 = add nsw i32 %rem89.6.45, %641
  store i32 %add90.6.45, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.45 = tail call i32 @rand() #2
  %rem89.7.45 = srem i32 %call88.7.45, 100
  %642 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.45 = add nsw i32 %rem89.7.45, %642
  store i32 %add90.7.45, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.45 = tail call i32 @rand() #2
  %rem89.8.45 = srem i32 %call88.8.45, 100
  %643 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.45 = add nsw i32 %rem89.8.45, %643
  store i32 %add90.8.45, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.45 = tail call i32 @rand() #2
  %rem89.9.45 = srem i32 %call88.9.45, 100
  %644 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.45 = add nsw i32 %rem89.9.45, %644
  store i32 %add90.9.45, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.45 = mul nsw i32 %add74.45, %rem15
  %add81.45 = add nsw i32 %rem80.45, %rem78
  %.pre295 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre296 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then73.45
  %645 = phi i32 [ %631, %if.end.45 ], [ %add90.9.45, %if.then73.45 ]
  %646 = phi i32 [ %rem32.45, %if.end.45 ], [ %.pre296, %if.then73.45 ]
  %647 = phi i32 [ %add33.45, %if.end.45 ], [ %.pre295, %if.then73.45 ]
  %var4.1.45 = phi i32 [ %var4.1.44, %if.end.45 ], [ %mul75.45, %if.then73.45 ]
  %var5.1.45 = phi i32 [ %var5.1.44, %if.end.45 ], [ %rem9, %if.then73.45 ]
  %var1.1.45 = phi i32 [ %var1.1.44, %if.end.45 ], [ %add81.45, %if.then73.45 ]
  %inc101.45 = add nuw nsw i32 %i25.0178, 46
  %mul.46 = mul nsw i32 %647, 3
  %div.46 = sdiv i32 %646, 2
  %sub.46 = sub nsw i32 %mul.46, %div.46
  store i32 %sub.46, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.46 = add nsw i32 %sub.46, %647
  %rem32.46 = srem i32 %add31.46, 100
  store i32 %rem32.46, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.46 = or i32 %rem32.46, 1
  %add33.46 = add nsw i32 %or.46, %rem17
  store i32 %add33.46, i32* @main.hot_data.2, align 4, !tbaa !7
  %648 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %add42.46 = add nsw i32 %add33.46, %648
  store i32 %add42.46, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %rem70.46 = urem i32 %inc101.45, 1000
  %cmp71.46 = icmp eq i32 %rem70.46, 0
  br i1 %cmp71.46, label %if.then73.46, label %if.end.47

if.then73.46:                                     ; preds = %if.end.46
  %add74.46 = add nsw i32 %var1.1.45, %rem13
  %call79.46 = tail call i32 @rand() #2
  %rem80.46 = srem i32 %call79.46, 5
  %call88.46 = tail call i32 @rand() #2
  %rem89.46 = srem i32 %call88.46, 100
  %649 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.46 = add nsw i32 %rem89.46, %649
  store i32 %add90.46, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.46 = tail call i32 @rand() #2
  %rem89.1.46 = srem i32 %call88.1.46, 100
  %650 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.46 = add nsw i32 %rem89.1.46, %650
  store i32 %add90.1.46, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.46 = tail call i32 @rand() #2
  %rem89.2.46 = srem i32 %call88.2.46, 100
  %651 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.46 = add nsw i32 %rem89.2.46, %651
  store i32 %add90.2.46, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.46 = tail call i32 @rand() #2
  %rem89.3.46 = srem i32 %call88.3.46, 100
  %652 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.46 = add nsw i32 %rem89.3.46, %652
  store i32 %add90.3.46, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.46 = tail call i32 @rand() #2
  %rem89.4.46 = srem i32 %call88.4.46, 100
  %653 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.46 = add nsw i32 %rem89.4.46, %653
  store i32 %add90.4.46, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.46 = tail call i32 @rand() #2
  %rem89.5.46 = srem i32 %call88.5.46, 100
  %654 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.46 = add nsw i32 %rem89.5.46, %654
  store i32 %add90.5.46, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.46 = tail call i32 @rand() #2
  %rem89.6.46 = srem i32 %call88.6.46, 100
  %655 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.46 = add nsw i32 %rem89.6.46, %655
  store i32 %add90.6.46, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.46 = tail call i32 @rand() #2
  %rem89.7.46 = srem i32 %call88.7.46, 100
  %656 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.46 = add nsw i32 %rem89.7.46, %656
  store i32 %add90.7.46, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.46 = tail call i32 @rand() #2
  %rem89.8.46 = srem i32 %call88.8.46, 100
  %657 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.46 = add nsw i32 %rem89.8.46, %657
  store i32 %add90.8.46, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.46 = tail call i32 @rand() #2
  %rem89.9.46 = srem i32 %call88.9.46, 100
  %658 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.46 = add nsw i32 %rem89.9.46, %658
  store i32 %add90.9.46, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.46 = mul nsw i32 %add74.46, %rem15
  %add81.46 = add nsw i32 %rem80.46, %rem78
  %.pre297 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre298 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then73.46
  %659 = phi i32 [ %645, %if.end.46 ], [ %add90.9.46, %if.then73.46 ]
  %660 = phi i32 [ %rem32.46, %if.end.46 ], [ %.pre298, %if.then73.46 ]
  %661 = phi i32 [ %add33.46, %if.end.46 ], [ %.pre297, %if.then73.46 ]
  %var4.1.46 = phi i32 [ %var4.1.45, %if.end.46 ], [ %mul75.46, %if.then73.46 ]
  %var5.1.46 = phi i32 [ %var5.1.45, %if.end.46 ], [ %rem9, %if.then73.46 ]
  %var1.1.46 = phi i32 [ %var1.1.45, %if.end.46 ], [ %add81.46, %if.then73.46 ]
  %inc101.46 = add nuw nsw i32 %i25.0178, 47
  %mul.47 = mul nsw i32 %661, 3
  %div.47 = sdiv i32 %660, 2
  %sub.47 = sub nsw i32 %mul.47, %div.47
  store i32 %sub.47, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.47 = add nsw i32 %sub.47, %661
  %rem32.47 = srem i32 %add31.47, 100
  store i32 %rem32.47, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.47 = or i32 %rem32.47, 1
  %add33.47 = add nsw i32 %or.47, %rem17
  store i32 %add33.47, i32* @main.hot_data.2, align 4, !tbaa !7
  %662 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %add42.47 = add nsw i32 %add33.47, %662
  store i32 %add42.47, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %rem70.47 = urem i32 %inc101.46, 1000
  %cmp71.47 = icmp eq i32 %rem70.47, 0
  br i1 %cmp71.47, label %if.then73.47, label %if.end.48

if.then73.47:                                     ; preds = %if.end.47
  %add74.47 = add nsw i32 %var1.1.46, %rem13
  %call79.47 = tail call i32 @rand() #2
  %rem80.47 = srem i32 %call79.47, 5
  %call88.47 = tail call i32 @rand() #2
  %rem89.47 = srem i32 %call88.47, 100
  %663 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.47 = add nsw i32 %rem89.47, %663
  store i32 %add90.47, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.47 = tail call i32 @rand() #2
  %rem89.1.47 = srem i32 %call88.1.47, 100
  %664 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.47 = add nsw i32 %rem89.1.47, %664
  store i32 %add90.1.47, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.47 = tail call i32 @rand() #2
  %rem89.2.47 = srem i32 %call88.2.47, 100
  %665 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.47 = add nsw i32 %rem89.2.47, %665
  store i32 %add90.2.47, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.47 = tail call i32 @rand() #2
  %rem89.3.47 = srem i32 %call88.3.47, 100
  %666 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.47 = add nsw i32 %rem89.3.47, %666
  store i32 %add90.3.47, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.47 = tail call i32 @rand() #2
  %rem89.4.47 = srem i32 %call88.4.47, 100
  %667 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.47 = add nsw i32 %rem89.4.47, %667
  store i32 %add90.4.47, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.47 = tail call i32 @rand() #2
  %rem89.5.47 = srem i32 %call88.5.47, 100
  %668 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.47 = add nsw i32 %rem89.5.47, %668
  store i32 %add90.5.47, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.47 = tail call i32 @rand() #2
  %rem89.6.47 = srem i32 %call88.6.47, 100
  %669 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.47 = add nsw i32 %rem89.6.47, %669
  store i32 %add90.6.47, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.47 = tail call i32 @rand() #2
  %rem89.7.47 = srem i32 %call88.7.47, 100
  %670 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.47 = add nsw i32 %rem89.7.47, %670
  store i32 %add90.7.47, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.47 = tail call i32 @rand() #2
  %rem89.8.47 = srem i32 %call88.8.47, 100
  %671 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.47 = add nsw i32 %rem89.8.47, %671
  store i32 %add90.8.47, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.47 = tail call i32 @rand() #2
  %rem89.9.47 = srem i32 %call88.9.47, 100
  %672 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.47 = add nsw i32 %rem89.9.47, %672
  store i32 %add90.9.47, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.47 = mul nsw i32 %add74.47, %rem15
  %add81.47 = add nsw i32 %rem80.47, %rem78
  %.pre299 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre300 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then73.47
  %673 = phi i32 [ %659, %if.end.47 ], [ %add90.9.47, %if.then73.47 ]
  %674 = phi i32 [ %rem32.47, %if.end.47 ], [ %.pre300, %if.then73.47 ]
  %675 = phi i32 [ %add33.47, %if.end.47 ], [ %.pre299, %if.then73.47 ]
  %var4.1.47 = phi i32 [ %var4.1.46, %if.end.47 ], [ %mul75.47, %if.then73.47 ]
  %var5.1.47 = phi i32 [ %var5.1.46, %if.end.47 ], [ %rem9, %if.then73.47 ]
  %var1.1.47 = phi i32 [ %var1.1.46, %if.end.47 ], [ %add81.47, %if.then73.47 ]
  %inc101.47 = add nuw nsw i32 %i25.0178, 48
  %mul.48 = mul nsw i32 %675, 3
  %div.48 = sdiv i32 %674, 2
  %sub.48 = sub nsw i32 %mul.48, %div.48
  store i32 %sub.48, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.48 = add nsw i32 %sub.48, %675
  %rem32.48 = srem i32 %add31.48, 100
  store i32 %rem32.48, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.48 = or i32 %rem32.48, 1
  %add33.48 = add nsw i32 %or.48, %rem17
  store i32 %add33.48, i32* @main.hot_data.2, align 4, !tbaa !7
  %676 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %add42.48 = add nsw i32 %add33.48, %676
  store i32 %add42.48, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %rem70.48 = urem i32 %inc101.47, 1000
  %cmp71.48 = icmp eq i32 %rem70.48, 0
  br i1 %cmp71.48, label %if.then73.48, label %if.end.49

if.then73.48:                                     ; preds = %if.end.48
  %add74.48 = add nsw i32 %var1.1.47, %rem13
  %call79.48 = tail call i32 @rand() #2
  %rem80.48 = srem i32 %call79.48, 5
  %call88.48 = tail call i32 @rand() #2
  %rem89.48 = srem i32 %call88.48, 100
  %677 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.48 = add nsw i32 %rem89.48, %677
  store i32 %add90.48, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.48 = tail call i32 @rand() #2
  %rem89.1.48 = srem i32 %call88.1.48, 100
  %678 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.48 = add nsw i32 %rem89.1.48, %678
  store i32 %add90.1.48, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.48 = tail call i32 @rand() #2
  %rem89.2.48 = srem i32 %call88.2.48, 100
  %679 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.48 = add nsw i32 %rem89.2.48, %679
  store i32 %add90.2.48, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.48 = tail call i32 @rand() #2
  %rem89.3.48 = srem i32 %call88.3.48, 100
  %680 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.48 = add nsw i32 %rem89.3.48, %680
  store i32 %add90.3.48, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.48 = tail call i32 @rand() #2
  %rem89.4.48 = srem i32 %call88.4.48, 100
  %681 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.48 = add nsw i32 %rem89.4.48, %681
  store i32 %add90.4.48, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.48 = tail call i32 @rand() #2
  %rem89.5.48 = srem i32 %call88.5.48, 100
  %682 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.48 = add nsw i32 %rem89.5.48, %682
  store i32 %add90.5.48, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.48 = tail call i32 @rand() #2
  %rem89.6.48 = srem i32 %call88.6.48, 100
  %683 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.48 = add nsw i32 %rem89.6.48, %683
  store i32 %add90.6.48, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.48 = tail call i32 @rand() #2
  %rem89.7.48 = srem i32 %call88.7.48, 100
  %684 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.48 = add nsw i32 %rem89.7.48, %684
  store i32 %add90.7.48, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.48 = tail call i32 @rand() #2
  %rem89.8.48 = srem i32 %call88.8.48, 100
  %685 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.48 = add nsw i32 %rem89.8.48, %685
  store i32 %add90.8.48, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.48 = tail call i32 @rand() #2
  %rem89.9.48 = srem i32 %call88.9.48, 100
  %686 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.48 = add nsw i32 %rem89.9.48, %686
  store i32 %add90.9.48, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.48 = mul nsw i32 %add74.48, %rem15
  %add81.48 = add nsw i32 %rem80.48, %rem78
  %.pre301 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre302 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then73.48
  %687 = phi i32 [ %673, %if.end.48 ], [ %add90.9.48, %if.then73.48 ]
  %688 = phi i32 [ %rem32.48, %if.end.48 ], [ %.pre302, %if.then73.48 ]
  %689 = phi i32 [ %add33.48, %if.end.48 ], [ %.pre301, %if.then73.48 ]
  %var4.1.48 = phi i32 [ %var4.1.47, %if.end.48 ], [ %mul75.48, %if.then73.48 ]
  %var5.1.48 = phi i32 [ %var5.1.47, %if.end.48 ], [ %rem9, %if.then73.48 ]
  %var1.1.48 = phi i32 [ %var1.1.47, %if.end.48 ], [ %add81.48, %if.then73.48 ]
  %inc101.48 = add nuw nsw i32 %i25.0178, 49
  %mul.49 = mul nsw i32 %689, 3
  %div.49 = sdiv i32 %688, 2
  %sub.49 = sub nsw i32 %mul.49, %div.49
  store i32 %sub.49, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.49 = add nsw i32 %sub.49, %689
  %rem32.49 = srem i32 %add31.49, 100
  store i32 %rem32.49, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.49 = or i32 %rem32.49, 1
  %add33.49 = add nsw i32 %or.49, %rem17
  store i32 %add33.49, i32* @main.hot_data.2, align 4, !tbaa !7
  %add42.49 = add nsw i32 %add33.49, %687
  store i32 %add42.49, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %rem70.49 = urem i32 %inc101.48, 1000
  %cmp71.49 = icmp eq i32 %rem70.49, 0
  br i1 %cmp71.49, label %if.then73.49, label %if.end.50

if.then73.49:                                     ; preds = %if.end.49
  %add74.49 = add nsw i32 %var1.1.48, %rem13
  %call79.49 = tail call i32 @rand() #2
  %rem80.49 = srem i32 %call79.49, 5
  %call88.49 = tail call i32 @rand() #2
  %rem89.49 = srem i32 %call88.49, 100
  %690 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.49 = add nsw i32 %rem89.49, %690
  store i32 %add90.49, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.49 = tail call i32 @rand() #2
  %rem89.1.49 = srem i32 %call88.1.49, 100
  %691 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.49 = add nsw i32 %rem89.1.49, %691
  store i32 %add90.1.49, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.49 = tail call i32 @rand() #2
  %rem89.2.49 = srem i32 %call88.2.49, 100
  %692 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.49 = add nsw i32 %rem89.2.49, %692
  store i32 %add90.2.49, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.49 = tail call i32 @rand() #2
  %rem89.3.49 = srem i32 %call88.3.49, 100
  %693 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.49 = add nsw i32 %rem89.3.49, %693
  store i32 %add90.3.49, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.49 = tail call i32 @rand() #2
  %rem89.4.49 = srem i32 %call88.4.49, 100
  %694 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.49 = add nsw i32 %rem89.4.49, %694
  store i32 %add90.4.49, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.49 = tail call i32 @rand() #2
  %rem89.5.49 = srem i32 %call88.5.49, 100
  %695 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.49 = add nsw i32 %rem89.5.49, %695
  store i32 %add90.5.49, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.49 = tail call i32 @rand() #2
  %rem89.6.49 = srem i32 %call88.6.49, 100
  %696 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.49 = add nsw i32 %rem89.6.49, %696
  store i32 %add90.6.49, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.49 = tail call i32 @rand() #2
  %rem89.7.49 = srem i32 %call88.7.49, 100
  %697 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.49 = add nsw i32 %rem89.7.49, %697
  store i32 %add90.7.49, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.49 = tail call i32 @rand() #2
  %rem89.8.49 = srem i32 %call88.8.49, 100
  %698 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.49 = add nsw i32 %rem89.8.49, %698
  store i32 %add90.8.49, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.49 = tail call i32 @rand() #2
  %rem89.9.49 = srem i32 %call88.9.49, 100
  %699 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.49 = add nsw i32 %rem89.9.49, %699
  store i32 %add90.9.49, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.49 = mul nsw i32 %add74.49, %rem15
  %add81.49 = add nsw i32 %rem80.49, %rem78
  %.pre303 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre304 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then73.49
  %700 = phi i32 [ %add42.49, %if.end.49 ], [ %add90.9.49, %if.then73.49 ]
  %701 = phi i32 [ %rem32.49, %if.end.49 ], [ %.pre304, %if.then73.49 ]
  %702 = phi i32 [ %add33.49, %if.end.49 ], [ %.pre303, %if.then73.49 ]
  %var4.1.49 = phi i32 [ %var4.1.48, %if.end.49 ], [ %mul75.49, %if.then73.49 ]
  %var5.1.49 = phi i32 [ %var5.1.48, %if.end.49 ], [ %rem9, %if.then73.49 ]
  %var1.1.49 = phi i32 [ %var1.1.48, %if.end.49 ], [ %add81.49, %if.then73.49 ]
  %inc101.49 = add nuw nsw i32 %i25.0178, 50
  %mul.50 = mul nsw i32 %702, 3
  %div.50 = sdiv i32 %701, 2
  %sub.50 = sub nsw i32 %mul.50, %div.50
  store i32 %sub.50, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.50 = add nsw i32 %sub.50, %702
  %rem32.50 = srem i32 %add31.50, 100
  store i32 %rem32.50, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.50 = or i32 %rem32.50, 1
  %add33.50 = add nsw i32 %or.50, %rem17
  store i32 %add33.50, i32* @main.hot_data.2, align 4, !tbaa !7
  %703 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %add42.50 = add nsw i32 %add33.50, %703
  store i32 %add42.50, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %rem70.50 = urem i32 %inc101.49, 1000
  %cmp71.50 = icmp eq i32 %rem70.50, 0
  br i1 %cmp71.50, label %if.then73.50, label %if.end.51

if.then73.50:                                     ; preds = %if.end.50
  %add74.50 = add nsw i32 %var1.1.49, %rem13
  %call79.50 = tail call i32 @rand() #2
  %rem80.50 = srem i32 %call79.50, 5
  %call88.50 = tail call i32 @rand() #2
  %rem89.50 = srem i32 %call88.50, 100
  %704 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.50 = add nsw i32 %rem89.50, %704
  store i32 %add90.50, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.50 = tail call i32 @rand() #2
  %rem89.1.50 = srem i32 %call88.1.50, 100
  %705 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.50 = add nsw i32 %rem89.1.50, %705
  store i32 %add90.1.50, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.50 = tail call i32 @rand() #2
  %rem89.2.50 = srem i32 %call88.2.50, 100
  %706 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.50 = add nsw i32 %rem89.2.50, %706
  store i32 %add90.2.50, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.50 = tail call i32 @rand() #2
  %rem89.3.50 = srem i32 %call88.3.50, 100
  %707 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.50 = add nsw i32 %rem89.3.50, %707
  store i32 %add90.3.50, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.50 = tail call i32 @rand() #2
  %rem89.4.50 = srem i32 %call88.4.50, 100
  %708 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.50 = add nsw i32 %rem89.4.50, %708
  store i32 %add90.4.50, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.50 = tail call i32 @rand() #2
  %rem89.5.50 = srem i32 %call88.5.50, 100
  %709 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.50 = add nsw i32 %rem89.5.50, %709
  store i32 %add90.5.50, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.50 = tail call i32 @rand() #2
  %rem89.6.50 = srem i32 %call88.6.50, 100
  %710 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.50 = add nsw i32 %rem89.6.50, %710
  store i32 %add90.6.50, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.50 = tail call i32 @rand() #2
  %rem89.7.50 = srem i32 %call88.7.50, 100
  %711 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.50 = add nsw i32 %rem89.7.50, %711
  store i32 %add90.7.50, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.50 = tail call i32 @rand() #2
  %rem89.8.50 = srem i32 %call88.8.50, 100
  %712 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.50 = add nsw i32 %rem89.8.50, %712
  store i32 %add90.8.50, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.50 = tail call i32 @rand() #2
  %rem89.9.50 = srem i32 %call88.9.50, 100
  %713 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.50 = add nsw i32 %rem89.9.50, %713
  store i32 %add90.9.50, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.50 = mul nsw i32 %add74.50, %rem15
  %add81.50 = add nsw i32 %rem80.50, %rem78
  %.pre305 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre306 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then73.50
  %714 = phi i32 [ %700, %if.end.50 ], [ %add90.9.50, %if.then73.50 ]
  %715 = phi i32 [ %rem32.50, %if.end.50 ], [ %.pre306, %if.then73.50 ]
  %716 = phi i32 [ %add33.50, %if.end.50 ], [ %.pre305, %if.then73.50 ]
  %var4.1.50 = phi i32 [ %var4.1.49, %if.end.50 ], [ %mul75.50, %if.then73.50 ]
  %var5.1.50 = phi i32 [ %var5.1.49, %if.end.50 ], [ %rem9, %if.then73.50 ]
  %var1.1.50 = phi i32 [ %var1.1.49, %if.end.50 ], [ %add81.50, %if.then73.50 ]
  %inc101.50 = add nuw nsw i32 %i25.0178, 51
  %mul.51 = mul nsw i32 %716, 3
  %div.51 = sdiv i32 %715, 2
  %sub.51 = sub nsw i32 %mul.51, %div.51
  store i32 %sub.51, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.51 = add nsw i32 %sub.51, %716
  %rem32.51 = srem i32 %add31.51, 100
  store i32 %rem32.51, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.51 = or i32 %rem32.51, 1
  %add33.51 = add nsw i32 %or.51, %rem17
  store i32 %add33.51, i32* @main.hot_data.2, align 4, !tbaa !7
  %717 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %add42.51 = add nsw i32 %add33.51, %717
  store i32 %add42.51, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %rem70.51 = urem i32 %inc101.50, 1000
  %cmp71.51 = icmp eq i32 %rem70.51, 0
  br i1 %cmp71.51, label %if.then73.51, label %if.end.52

if.then73.51:                                     ; preds = %if.end.51
  %add74.51 = add nsw i32 %var1.1.50, %rem13
  %call79.51 = tail call i32 @rand() #2
  %rem80.51 = srem i32 %call79.51, 5
  %call88.51 = tail call i32 @rand() #2
  %rem89.51 = srem i32 %call88.51, 100
  %718 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.51 = add nsw i32 %rem89.51, %718
  store i32 %add90.51, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.51 = tail call i32 @rand() #2
  %rem89.1.51 = srem i32 %call88.1.51, 100
  %719 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.51 = add nsw i32 %rem89.1.51, %719
  store i32 %add90.1.51, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.51 = tail call i32 @rand() #2
  %rem89.2.51 = srem i32 %call88.2.51, 100
  %720 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.51 = add nsw i32 %rem89.2.51, %720
  store i32 %add90.2.51, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.51 = tail call i32 @rand() #2
  %rem89.3.51 = srem i32 %call88.3.51, 100
  %721 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.51 = add nsw i32 %rem89.3.51, %721
  store i32 %add90.3.51, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.51 = tail call i32 @rand() #2
  %rem89.4.51 = srem i32 %call88.4.51, 100
  %722 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.51 = add nsw i32 %rem89.4.51, %722
  store i32 %add90.4.51, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.51 = tail call i32 @rand() #2
  %rem89.5.51 = srem i32 %call88.5.51, 100
  %723 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.51 = add nsw i32 %rem89.5.51, %723
  store i32 %add90.5.51, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.51 = tail call i32 @rand() #2
  %rem89.6.51 = srem i32 %call88.6.51, 100
  %724 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.51 = add nsw i32 %rem89.6.51, %724
  store i32 %add90.6.51, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.51 = tail call i32 @rand() #2
  %rem89.7.51 = srem i32 %call88.7.51, 100
  %725 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.51 = add nsw i32 %rem89.7.51, %725
  store i32 %add90.7.51, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.51 = tail call i32 @rand() #2
  %rem89.8.51 = srem i32 %call88.8.51, 100
  %726 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.51 = add nsw i32 %rem89.8.51, %726
  store i32 %add90.8.51, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.51 = tail call i32 @rand() #2
  %rem89.9.51 = srem i32 %call88.9.51, 100
  %727 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.51 = add nsw i32 %rem89.9.51, %727
  store i32 %add90.9.51, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.51 = mul nsw i32 %add74.51, %rem15
  %add81.51 = add nsw i32 %rem80.51, %rem78
  %.pre307 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre308 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then73.51
  %728 = phi i32 [ %714, %if.end.51 ], [ %add90.9.51, %if.then73.51 ]
  %729 = phi i32 [ %rem32.51, %if.end.51 ], [ %.pre308, %if.then73.51 ]
  %730 = phi i32 [ %add33.51, %if.end.51 ], [ %.pre307, %if.then73.51 ]
  %var4.1.51 = phi i32 [ %var4.1.50, %if.end.51 ], [ %mul75.51, %if.then73.51 ]
  %var5.1.51 = phi i32 [ %var5.1.50, %if.end.51 ], [ %rem9, %if.then73.51 ]
  %var1.1.51 = phi i32 [ %var1.1.50, %if.end.51 ], [ %add81.51, %if.then73.51 ]
  %inc101.51 = add nuw nsw i32 %i25.0178, 52
  %mul.52 = mul nsw i32 %730, 3
  %div.52 = sdiv i32 %729, 2
  %sub.52 = sub nsw i32 %mul.52, %div.52
  store i32 %sub.52, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.52 = add nsw i32 %sub.52, %730
  %rem32.52 = srem i32 %add31.52, 100
  store i32 %rem32.52, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.52 = or i32 %rem32.52, 1
  %add33.52 = add nsw i32 %or.52, %rem17
  store i32 %add33.52, i32* @main.hot_data.2, align 4, !tbaa !7
  %731 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %add42.52 = add nsw i32 %add33.52, %731
  store i32 %add42.52, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %rem70.52 = urem i32 %inc101.51, 1000
  %cmp71.52 = icmp eq i32 %rem70.52, 0
  br i1 %cmp71.52, label %if.then73.52, label %if.end.53

if.then73.52:                                     ; preds = %if.end.52
  %add74.52 = add nsw i32 %var1.1.51, %rem13
  %call79.52 = tail call i32 @rand() #2
  %rem80.52 = srem i32 %call79.52, 5
  %call88.52 = tail call i32 @rand() #2
  %rem89.52 = srem i32 %call88.52, 100
  %732 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.52 = add nsw i32 %rem89.52, %732
  store i32 %add90.52, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.52 = tail call i32 @rand() #2
  %rem89.1.52 = srem i32 %call88.1.52, 100
  %733 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.52 = add nsw i32 %rem89.1.52, %733
  store i32 %add90.1.52, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.52 = tail call i32 @rand() #2
  %rem89.2.52 = srem i32 %call88.2.52, 100
  %734 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.52 = add nsw i32 %rem89.2.52, %734
  store i32 %add90.2.52, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.52 = tail call i32 @rand() #2
  %rem89.3.52 = srem i32 %call88.3.52, 100
  %735 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.52 = add nsw i32 %rem89.3.52, %735
  store i32 %add90.3.52, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.52 = tail call i32 @rand() #2
  %rem89.4.52 = srem i32 %call88.4.52, 100
  %736 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.52 = add nsw i32 %rem89.4.52, %736
  store i32 %add90.4.52, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.52 = tail call i32 @rand() #2
  %rem89.5.52 = srem i32 %call88.5.52, 100
  %737 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.52 = add nsw i32 %rem89.5.52, %737
  store i32 %add90.5.52, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.52 = tail call i32 @rand() #2
  %rem89.6.52 = srem i32 %call88.6.52, 100
  %738 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.52 = add nsw i32 %rem89.6.52, %738
  store i32 %add90.6.52, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.52 = tail call i32 @rand() #2
  %rem89.7.52 = srem i32 %call88.7.52, 100
  %739 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.52 = add nsw i32 %rem89.7.52, %739
  store i32 %add90.7.52, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.52 = tail call i32 @rand() #2
  %rem89.8.52 = srem i32 %call88.8.52, 100
  %740 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.52 = add nsw i32 %rem89.8.52, %740
  store i32 %add90.8.52, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.52 = tail call i32 @rand() #2
  %rem89.9.52 = srem i32 %call88.9.52, 100
  %741 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.52 = add nsw i32 %rem89.9.52, %741
  store i32 %add90.9.52, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.52 = mul nsw i32 %add74.52, %rem15
  %add81.52 = add nsw i32 %rem80.52, %rem78
  %.pre309 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre310 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then73.52
  %742 = phi i32 [ %728, %if.end.52 ], [ %add90.9.52, %if.then73.52 ]
  %743 = phi i32 [ %rem32.52, %if.end.52 ], [ %.pre310, %if.then73.52 ]
  %744 = phi i32 [ %add33.52, %if.end.52 ], [ %.pre309, %if.then73.52 ]
  %var4.1.52 = phi i32 [ %var4.1.51, %if.end.52 ], [ %mul75.52, %if.then73.52 ]
  %var5.1.52 = phi i32 [ %var5.1.51, %if.end.52 ], [ %rem9, %if.then73.52 ]
  %var1.1.52 = phi i32 [ %var1.1.51, %if.end.52 ], [ %add81.52, %if.then73.52 ]
  %inc101.52 = add nuw nsw i32 %i25.0178, 53
  %mul.53 = mul nsw i32 %744, 3
  %div.53 = sdiv i32 %743, 2
  %sub.53 = sub nsw i32 %mul.53, %div.53
  store i32 %sub.53, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.53 = add nsw i32 %sub.53, %744
  %rem32.53 = srem i32 %add31.53, 100
  store i32 %rem32.53, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.53 = or i32 %rem32.53, 1
  %add33.53 = add nsw i32 %or.53, %rem17
  store i32 %add33.53, i32* @main.hot_data.2, align 4, !tbaa !7
  %745 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %add42.53 = add nsw i32 %add33.53, %745
  store i32 %add42.53, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %rem70.53 = urem i32 %inc101.52, 1000
  %cmp71.53 = icmp eq i32 %rem70.53, 0
  br i1 %cmp71.53, label %if.then73.53, label %if.end.54

if.then73.53:                                     ; preds = %if.end.53
  %add74.53 = add nsw i32 %var1.1.52, %rem13
  %call79.53 = tail call i32 @rand() #2
  %rem80.53 = srem i32 %call79.53, 5
  %call88.53 = tail call i32 @rand() #2
  %rem89.53 = srem i32 %call88.53, 100
  %746 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.53 = add nsw i32 %rem89.53, %746
  store i32 %add90.53, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.53 = tail call i32 @rand() #2
  %rem89.1.53 = srem i32 %call88.1.53, 100
  %747 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.53 = add nsw i32 %rem89.1.53, %747
  store i32 %add90.1.53, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.53 = tail call i32 @rand() #2
  %rem89.2.53 = srem i32 %call88.2.53, 100
  %748 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.53 = add nsw i32 %rem89.2.53, %748
  store i32 %add90.2.53, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.53 = tail call i32 @rand() #2
  %rem89.3.53 = srem i32 %call88.3.53, 100
  %749 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.53 = add nsw i32 %rem89.3.53, %749
  store i32 %add90.3.53, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.53 = tail call i32 @rand() #2
  %rem89.4.53 = srem i32 %call88.4.53, 100
  %750 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.53 = add nsw i32 %rem89.4.53, %750
  store i32 %add90.4.53, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.53 = tail call i32 @rand() #2
  %rem89.5.53 = srem i32 %call88.5.53, 100
  %751 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.53 = add nsw i32 %rem89.5.53, %751
  store i32 %add90.5.53, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.53 = tail call i32 @rand() #2
  %rem89.6.53 = srem i32 %call88.6.53, 100
  %752 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.53 = add nsw i32 %rem89.6.53, %752
  store i32 %add90.6.53, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.53 = tail call i32 @rand() #2
  %rem89.7.53 = srem i32 %call88.7.53, 100
  %753 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.53 = add nsw i32 %rem89.7.53, %753
  store i32 %add90.7.53, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.53 = tail call i32 @rand() #2
  %rem89.8.53 = srem i32 %call88.8.53, 100
  %754 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.53 = add nsw i32 %rem89.8.53, %754
  store i32 %add90.8.53, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.53 = tail call i32 @rand() #2
  %rem89.9.53 = srem i32 %call88.9.53, 100
  %755 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.53 = add nsw i32 %rem89.9.53, %755
  store i32 %add90.9.53, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.53 = mul nsw i32 %add74.53, %rem15
  %add81.53 = add nsw i32 %rem80.53, %rem78
  %.pre311 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre312 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then73.53
  %756 = phi i32 [ %742, %if.end.53 ], [ %add90.9.53, %if.then73.53 ]
  %757 = phi i32 [ %rem32.53, %if.end.53 ], [ %.pre312, %if.then73.53 ]
  %758 = phi i32 [ %add33.53, %if.end.53 ], [ %.pre311, %if.then73.53 ]
  %var4.1.53 = phi i32 [ %var4.1.52, %if.end.53 ], [ %mul75.53, %if.then73.53 ]
  %var5.1.53 = phi i32 [ %var5.1.52, %if.end.53 ], [ %rem9, %if.then73.53 ]
  %var1.1.53 = phi i32 [ %var1.1.52, %if.end.53 ], [ %add81.53, %if.then73.53 ]
  %inc101.53 = add nuw nsw i32 %i25.0178, 54
  %mul.54 = mul nsw i32 %758, 3
  %div.54 = sdiv i32 %757, 2
  %sub.54 = sub nsw i32 %mul.54, %div.54
  store i32 %sub.54, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.54 = add nsw i32 %sub.54, %758
  %rem32.54 = srem i32 %add31.54, 100
  store i32 %rem32.54, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.54 = or i32 %rem32.54, 1
  %add33.54 = add nsw i32 %or.54, %rem17
  store i32 %add33.54, i32* @main.hot_data.2, align 4, !tbaa !7
  %759 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %add42.54 = add nsw i32 %add33.54, %759
  store i32 %add42.54, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %rem70.54 = urem i32 %inc101.53, 1000
  %cmp71.54 = icmp eq i32 %rem70.54, 0
  br i1 %cmp71.54, label %if.then73.54, label %if.end.55

if.then73.54:                                     ; preds = %if.end.54
  %add74.54 = add nsw i32 %var1.1.53, %rem13
  %call79.54 = tail call i32 @rand() #2
  %rem80.54 = srem i32 %call79.54, 5
  %call88.54 = tail call i32 @rand() #2
  %rem89.54 = srem i32 %call88.54, 100
  %760 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.54 = add nsw i32 %rem89.54, %760
  store i32 %add90.54, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.54 = tail call i32 @rand() #2
  %rem89.1.54 = srem i32 %call88.1.54, 100
  %761 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.54 = add nsw i32 %rem89.1.54, %761
  store i32 %add90.1.54, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.54 = tail call i32 @rand() #2
  %rem89.2.54 = srem i32 %call88.2.54, 100
  %762 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.54 = add nsw i32 %rem89.2.54, %762
  store i32 %add90.2.54, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.54 = tail call i32 @rand() #2
  %rem89.3.54 = srem i32 %call88.3.54, 100
  %763 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.54 = add nsw i32 %rem89.3.54, %763
  store i32 %add90.3.54, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.54 = tail call i32 @rand() #2
  %rem89.4.54 = srem i32 %call88.4.54, 100
  %764 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.54 = add nsw i32 %rem89.4.54, %764
  store i32 %add90.4.54, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.54 = tail call i32 @rand() #2
  %rem89.5.54 = srem i32 %call88.5.54, 100
  %765 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.54 = add nsw i32 %rem89.5.54, %765
  store i32 %add90.5.54, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.54 = tail call i32 @rand() #2
  %rem89.6.54 = srem i32 %call88.6.54, 100
  %766 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.54 = add nsw i32 %rem89.6.54, %766
  store i32 %add90.6.54, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.54 = tail call i32 @rand() #2
  %rem89.7.54 = srem i32 %call88.7.54, 100
  %767 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.54 = add nsw i32 %rem89.7.54, %767
  store i32 %add90.7.54, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.54 = tail call i32 @rand() #2
  %rem89.8.54 = srem i32 %call88.8.54, 100
  %768 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.54 = add nsw i32 %rem89.8.54, %768
  store i32 %add90.8.54, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.54 = tail call i32 @rand() #2
  %rem89.9.54 = srem i32 %call88.9.54, 100
  %769 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.54 = add nsw i32 %rem89.9.54, %769
  store i32 %add90.9.54, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.54 = mul nsw i32 %add74.54, %rem15
  %add81.54 = add nsw i32 %rem80.54, %rem78
  %.pre313 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre314 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then73.54
  %770 = phi i32 [ %756, %if.end.54 ], [ %add90.9.54, %if.then73.54 ]
  %771 = phi i32 [ %rem32.54, %if.end.54 ], [ %.pre314, %if.then73.54 ]
  %772 = phi i32 [ %add33.54, %if.end.54 ], [ %.pre313, %if.then73.54 ]
  %var4.1.54 = phi i32 [ %var4.1.53, %if.end.54 ], [ %mul75.54, %if.then73.54 ]
  %var5.1.54 = phi i32 [ %var5.1.53, %if.end.54 ], [ %rem9, %if.then73.54 ]
  %var1.1.54 = phi i32 [ %var1.1.53, %if.end.54 ], [ %add81.54, %if.then73.54 ]
  %inc101.54 = add nuw nsw i32 %i25.0178, 55
  %mul.55 = mul nsw i32 %772, 3
  %div.55 = sdiv i32 %771, 2
  %sub.55 = sub nsw i32 %mul.55, %div.55
  store i32 %sub.55, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.55 = add nsw i32 %sub.55, %772
  %rem32.55 = srem i32 %add31.55, 100
  store i32 %rem32.55, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.55 = or i32 %rem32.55, 1
  %add33.55 = add nsw i32 %or.55, %rem17
  store i32 %add33.55, i32* @main.hot_data.2, align 4, !tbaa !7
  %773 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %add42.55 = add nsw i32 %add33.55, %773
  store i32 %add42.55, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %rem70.55 = urem i32 %inc101.54, 1000
  %cmp71.55 = icmp eq i32 %rem70.55, 0
  br i1 %cmp71.55, label %if.then73.55, label %if.end.56

if.then73.55:                                     ; preds = %if.end.55
  %add74.55 = add nsw i32 %var1.1.54, %rem13
  %call79.55 = tail call i32 @rand() #2
  %rem80.55 = srem i32 %call79.55, 5
  %call88.55 = tail call i32 @rand() #2
  %rem89.55 = srem i32 %call88.55, 100
  %774 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.55 = add nsw i32 %rem89.55, %774
  store i32 %add90.55, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.55 = tail call i32 @rand() #2
  %rem89.1.55 = srem i32 %call88.1.55, 100
  %775 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.55 = add nsw i32 %rem89.1.55, %775
  store i32 %add90.1.55, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.55 = tail call i32 @rand() #2
  %rem89.2.55 = srem i32 %call88.2.55, 100
  %776 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.55 = add nsw i32 %rem89.2.55, %776
  store i32 %add90.2.55, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.55 = tail call i32 @rand() #2
  %rem89.3.55 = srem i32 %call88.3.55, 100
  %777 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.55 = add nsw i32 %rem89.3.55, %777
  store i32 %add90.3.55, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.55 = tail call i32 @rand() #2
  %rem89.4.55 = srem i32 %call88.4.55, 100
  %778 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.55 = add nsw i32 %rem89.4.55, %778
  store i32 %add90.4.55, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.55 = tail call i32 @rand() #2
  %rem89.5.55 = srem i32 %call88.5.55, 100
  %779 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.55 = add nsw i32 %rem89.5.55, %779
  store i32 %add90.5.55, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.55 = tail call i32 @rand() #2
  %rem89.6.55 = srem i32 %call88.6.55, 100
  %780 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.55 = add nsw i32 %rem89.6.55, %780
  store i32 %add90.6.55, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.55 = tail call i32 @rand() #2
  %rem89.7.55 = srem i32 %call88.7.55, 100
  %781 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.55 = add nsw i32 %rem89.7.55, %781
  store i32 %add90.7.55, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.55 = tail call i32 @rand() #2
  %rem89.8.55 = srem i32 %call88.8.55, 100
  %782 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.55 = add nsw i32 %rem89.8.55, %782
  store i32 %add90.8.55, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.55 = tail call i32 @rand() #2
  %rem89.9.55 = srem i32 %call88.9.55, 100
  %783 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.55 = add nsw i32 %rem89.9.55, %783
  store i32 %add90.9.55, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.55 = mul nsw i32 %add74.55, %rem15
  %add81.55 = add nsw i32 %rem80.55, %rem78
  %.pre315 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre316 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then73.55
  %784 = phi i32 [ %770, %if.end.55 ], [ %add90.9.55, %if.then73.55 ]
  %785 = phi i32 [ %rem32.55, %if.end.55 ], [ %.pre316, %if.then73.55 ]
  %786 = phi i32 [ %add33.55, %if.end.55 ], [ %.pre315, %if.then73.55 ]
  %var4.1.55 = phi i32 [ %var4.1.54, %if.end.55 ], [ %mul75.55, %if.then73.55 ]
  %var5.1.55 = phi i32 [ %var5.1.54, %if.end.55 ], [ %rem9, %if.then73.55 ]
  %var1.1.55 = phi i32 [ %var1.1.54, %if.end.55 ], [ %add81.55, %if.then73.55 ]
  %inc101.55 = add nuw nsw i32 %i25.0178, 56
  %mul.56 = mul nsw i32 %786, 3
  %div.56 = sdiv i32 %785, 2
  %sub.56 = sub nsw i32 %mul.56, %div.56
  store i32 %sub.56, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.56 = add nsw i32 %sub.56, %786
  %rem32.56 = srem i32 %add31.56, 100
  store i32 %rem32.56, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.56 = or i32 %rem32.56, 1
  %add33.56 = add nsw i32 %or.56, %rem17
  store i32 %add33.56, i32* @main.hot_data.2, align 4, !tbaa !7
  %787 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %add42.56 = add nsw i32 %add33.56, %787
  store i32 %add42.56, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %rem70.56 = urem i32 %inc101.55, 1000
  %cmp71.56 = icmp eq i32 %rem70.56, 0
  br i1 %cmp71.56, label %if.then73.56, label %if.end.57

if.then73.56:                                     ; preds = %if.end.56
  %add74.56 = add nsw i32 %var1.1.55, %rem13
  %call79.56 = tail call i32 @rand() #2
  %rem80.56 = srem i32 %call79.56, 5
  %call88.56 = tail call i32 @rand() #2
  %rem89.56 = srem i32 %call88.56, 100
  %788 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.56 = add nsw i32 %rem89.56, %788
  store i32 %add90.56, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.56 = tail call i32 @rand() #2
  %rem89.1.56 = srem i32 %call88.1.56, 100
  %789 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.56 = add nsw i32 %rem89.1.56, %789
  store i32 %add90.1.56, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.56 = tail call i32 @rand() #2
  %rem89.2.56 = srem i32 %call88.2.56, 100
  %790 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.56 = add nsw i32 %rem89.2.56, %790
  store i32 %add90.2.56, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.56 = tail call i32 @rand() #2
  %rem89.3.56 = srem i32 %call88.3.56, 100
  %791 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.56 = add nsw i32 %rem89.3.56, %791
  store i32 %add90.3.56, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.56 = tail call i32 @rand() #2
  %rem89.4.56 = srem i32 %call88.4.56, 100
  %792 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.56 = add nsw i32 %rem89.4.56, %792
  store i32 %add90.4.56, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.56 = tail call i32 @rand() #2
  %rem89.5.56 = srem i32 %call88.5.56, 100
  %793 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.56 = add nsw i32 %rem89.5.56, %793
  store i32 %add90.5.56, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.56 = tail call i32 @rand() #2
  %rem89.6.56 = srem i32 %call88.6.56, 100
  %794 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.56 = add nsw i32 %rem89.6.56, %794
  store i32 %add90.6.56, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.56 = tail call i32 @rand() #2
  %rem89.7.56 = srem i32 %call88.7.56, 100
  %795 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.56 = add nsw i32 %rem89.7.56, %795
  store i32 %add90.7.56, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.56 = tail call i32 @rand() #2
  %rem89.8.56 = srem i32 %call88.8.56, 100
  %796 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.56 = add nsw i32 %rem89.8.56, %796
  store i32 %add90.8.56, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.56 = tail call i32 @rand() #2
  %rem89.9.56 = srem i32 %call88.9.56, 100
  %797 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.56 = add nsw i32 %rem89.9.56, %797
  store i32 %add90.9.56, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.56 = mul nsw i32 %add74.56, %rem15
  %add81.56 = add nsw i32 %rem80.56, %rem78
  %.pre317 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre318 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then73.56
  %798 = phi i32 [ %784, %if.end.56 ], [ %add90.9.56, %if.then73.56 ]
  %799 = phi i32 [ %rem32.56, %if.end.56 ], [ %.pre318, %if.then73.56 ]
  %800 = phi i32 [ %add33.56, %if.end.56 ], [ %.pre317, %if.then73.56 ]
  %var4.1.56 = phi i32 [ %var4.1.55, %if.end.56 ], [ %mul75.56, %if.then73.56 ]
  %var5.1.56 = phi i32 [ %var5.1.55, %if.end.56 ], [ %rem9, %if.then73.56 ]
  %var1.1.56 = phi i32 [ %var1.1.55, %if.end.56 ], [ %add81.56, %if.then73.56 ]
  %inc101.56 = add nuw nsw i32 %i25.0178, 57
  %mul.57 = mul nsw i32 %800, 3
  %div.57 = sdiv i32 %799, 2
  %sub.57 = sub nsw i32 %mul.57, %div.57
  store i32 %sub.57, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.57 = add nsw i32 %sub.57, %800
  %rem32.57 = srem i32 %add31.57, 100
  store i32 %rem32.57, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.57 = or i32 %rem32.57, 1
  %add33.57 = add nsw i32 %or.57, %rem17
  store i32 %add33.57, i32* @main.hot_data.2, align 4, !tbaa !7
  %801 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %add42.57 = add nsw i32 %add33.57, %801
  store i32 %add42.57, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %rem70.57 = urem i32 %inc101.56, 1000
  %cmp71.57 = icmp eq i32 %rem70.57, 0
  br i1 %cmp71.57, label %if.then73.57, label %if.end.58

if.then73.57:                                     ; preds = %if.end.57
  %add74.57 = add nsw i32 %var1.1.56, %rem13
  %call79.57 = tail call i32 @rand() #2
  %rem80.57 = srem i32 %call79.57, 5
  %call88.57 = tail call i32 @rand() #2
  %rem89.57 = srem i32 %call88.57, 100
  %802 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.57 = add nsw i32 %rem89.57, %802
  store i32 %add90.57, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.57 = tail call i32 @rand() #2
  %rem89.1.57 = srem i32 %call88.1.57, 100
  %803 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.57 = add nsw i32 %rem89.1.57, %803
  store i32 %add90.1.57, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.57 = tail call i32 @rand() #2
  %rem89.2.57 = srem i32 %call88.2.57, 100
  %804 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.57 = add nsw i32 %rem89.2.57, %804
  store i32 %add90.2.57, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.57 = tail call i32 @rand() #2
  %rem89.3.57 = srem i32 %call88.3.57, 100
  %805 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.57 = add nsw i32 %rem89.3.57, %805
  store i32 %add90.3.57, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.57 = tail call i32 @rand() #2
  %rem89.4.57 = srem i32 %call88.4.57, 100
  %806 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.57 = add nsw i32 %rem89.4.57, %806
  store i32 %add90.4.57, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.57 = tail call i32 @rand() #2
  %rem89.5.57 = srem i32 %call88.5.57, 100
  %807 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.57 = add nsw i32 %rem89.5.57, %807
  store i32 %add90.5.57, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.57 = tail call i32 @rand() #2
  %rem89.6.57 = srem i32 %call88.6.57, 100
  %808 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.57 = add nsw i32 %rem89.6.57, %808
  store i32 %add90.6.57, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.57 = tail call i32 @rand() #2
  %rem89.7.57 = srem i32 %call88.7.57, 100
  %809 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.57 = add nsw i32 %rem89.7.57, %809
  store i32 %add90.7.57, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.57 = tail call i32 @rand() #2
  %rem89.8.57 = srem i32 %call88.8.57, 100
  %810 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.57 = add nsw i32 %rem89.8.57, %810
  store i32 %add90.8.57, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.57 = tail call i32 @rand() #2
  %rem89.9.57 = srem i32 %call88.9.57, 100
  %811 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.57 = add nsw i32 %rem89.9.57, %811
  store i32 %add90.9.57, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.57 = mul nsw i32 %add74.57, %rem15
  %add81.57 = add nsw i32 %rem80.57, %rem78
  %.pre319 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre320 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then73.57
  %812 = phi i32 [ %798, %if.end.57 ], [ %add90.9.57, %if.then73.57 ]
  %813 = phi i32 [ %rem32.57, %if.end.57 ], [ %.pre320, %if.then73.57 ]
  %814 = phi i32 [ %add33.57, %if.end.57 ], [ %.pre319, %if.then73.57 ]
  %var4.1.57 = phi i32 [ %var4.1.56, %if.end.57 ], [ %mul75.57, %if.then73.57 ]
  %var5.1.57 = phi i32 [ %var5.1.56, %if.end.57 ], [ %rem9, %if.then73.57 ]
  %var1.1.57 = phi i32 [ %var1.1.56, %if.end.57 ], [ %add81.57, %if.then73.57 ]
  %inc101.57 = add nuw nsw i32 %i25.0178, 58
  %mul.58 = mul nsw i32 %814, 3
  %div.58 = sdiv i32 %813, 2
  %sub.58 = sub nsw i32 %mul.58, %div.58
  store i32 %sub.58, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.58 = add nsw i32 %sub.58, %814
  %rem32.58 = srem i32 %add31.58, 100
  store i32 %rem32.58, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.58 = or i32 %rem32.58, 1
  %add33.58 = add nsw i32 %or.58, %rem17
  store i32 %add33.58, i32* @main.hot_data.2, align 4, !tbaa !7
  %815 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %add42.58 = add nsw i32 %add33.58, %815
  store i32 %add42.58, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %rem70.58 = urem i32 %inc101.57, 1000
  %cmp71.58 = icmp eq i32 %rem70.58, 0
  br i1 %cmp71.58, label %if.then73.58, label %if.end.59

if.then73.58:                                     ; preds = %if.end.58
  %add74.58 = add nsw i32 %var1.1.57, %rem13
  %call79.58 = tail call i32 @rand() #2
  %rem80.58 = srem i32 %call79.58, 5
  %call88.58 = tail call i32 @rand() #2
  %rem89.58 = srem i32 %call88.58, 100
  %816 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.58 = add nsw i32 %rem89.58, %816
  store i32 %add90.58, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.58 = tail call i32 @rand() #2
  %rem89.1.58 = srem i32 %call88.1.58, 100
  %817 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.58 = add nsw i32 %rem89.1.58, %817
  store i32 %add90.1.58, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.58 = tail call i32 @rand() #2
  %rem89.2.58 = srem i32 %call88.2.58, 100
  %818 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.58 = add nsw i32 %rem89.2.58, %818
  store i32 %add90.2.58, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.58 = tail call i32 @rand() #2
  %rem89.3.58 = srem i32 %call88.3.58, 100
  %819 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.58 = add nsw i32 %rem89.3.58, %819
  store i32 %add90.3.58, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.58 = tail call i32 @rand() #2
  %rem89.4.58 = srem i32 %call88.4.58, 100
  %820 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.58 = add nsw i32 %rem89.4.58, %820
  store i32 %add90.4.58, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.58 = tail call i32 @rand() #2
  %rem89.5.58 = srem i32 %call88.5.58, 100
  %821 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.58 = add nsw i32 %rem89.5.58, %821
  store i32 %add90.5.58, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.58 = tail call i32 @rand() #2
  %rem89.6.58 = srem i32 %call88.6.58, 100
  %822 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.58 = add nsw i32 %rem89.6.58, %822
  store i32 %add90.6.58, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.58 = tail call i32 @rand() #2
  %rem89.7.58 = srem i32 %call88.7.58, 100
  %823 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.58 = add nsw i32 %rem89.7.58, %823
  store i32 %add90.7.58, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.58 = tail call i32 @rand() #2
  %rem89.8.58 = srem i32 %call88.8.58, 100
  %824 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.58 = add nsw i32 %rem89.8.58, %824
  store i32 %add90.8.58, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.58 = tail call i32 @rand() #2
  %rem89.9.58 = srem i32 %call88.9.58, 100
  %825 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.58 = add nsw i32 %rem89.9.58, %825
  store i32 %add90.9.58, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.58 = mul nsw i32 %add74.58, %rem15
  %add81.58 = add nsw i32 %rem80.58, %rem78
  %.pre321 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre322 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then73.58
  %826 = phi i32 [ %812, %if.end.58 ], [ %add90.9.58, %if.then73.58 ]
  %827 = phi i32 [ %rem32.58, %if.end.58 ], [ %.pre322, %if.then73.58 ]
  %828 = phi i32 [ %add33.58, %if.end.58 ], [ %.pre321, %if.then73.58 ]
  %var4.1.58 = phi i32 [ %var4.1.57, %if.end.58 ], [ %mul75.58, %if.then73.58 ]
  %var5.1.58 = phi i32 [ %var5.1.57, %if.end.58 ], [ %rem9, %if.then73.58 ]
  %var1.1.58 = phi i32 [ %var1.1.57, %if.end.58 ], [ %add81.58, %if.then73.58 ]
  %inc101.58 = add nuw nsw i32 %i25.0178, 59
  %mul.59 = mul nsw i32 %828, 3
  %div.59 = sdiv i32 %827, 2
  %sub.59 = sub nsw i32 %mul.59, %div.59
  store i32 %sub.59, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.59 = add nsw i32 %sub.59, %828
  %rem32.59 = srem i32 %add31.59, 100
  store i32 %rem32.59, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.59 = or i32 %rem32.59, 1
  %add33.59 = add nsw i32 %or.59, %rem17
  store i32 %add33.59, i32* @main.hot_data.2, align 4, !tbaa !7
  %add42.59 = add nsw i32 %add33.59, %826
  store i32 %add42.59, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %rem70.59 = urem i32 %inc101.58, 1000
  %cmp71.59 = icmp eq i32 %rem70.59, 0
  br i1 %cmp71.59, label %if.then73.59, label %if.end.60

if.then73.59:                                     ; preds = %if.end.59
  %add74.59 = add nsw i32 %var1.1.58, %rem13
  %call79.59 = tail call i32 @rand() #2
  %rem80.59 = srem i32 %call79.59, 5
  %call88.59 = tail call i32 @rand() #2
  %rem89.59 = srem i32 %call88.59, 100
  %829 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.59 = add nsw i32 %rem89.59, %829
  store i32 %add90.59, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.59 = tail call i32 @rand() #2
  %rem89.1.59 = srem i32 %call88.1.59, 100
  %830 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.59 = add nsw i32 %rem89.1.59, %830
  store i32 %add90.1.59, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.59 = tail call i32 @rand() #2
  %rem89.2.59 = srem i32 %call88.2.59, 100
  %831 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.59 = add nsw i32 %rem89.2.59, %831
  store i32 %add90.2.59, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.59 = tail call i32 @rand() #2
  %rem89.3.59 = srem i32 %call88.3.59, 100
  %832 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.59 = add nsw i32 %rem89.3.59, %832
  store i32 %add90.3.59, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.59 = tail call i32 @rand() #2
  %rem89.4.59 = srem i32 %call88.4.59, 100
  %833 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.59 = add nsw i32 %rem89.4.59, %833
  store i32 %add90.4.59, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.59 = tail call i32 @rand() #2
  %rem89.5.59 = srem i32 %call88.5.59, 100
  %834 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.59 = add nsw i32 %rem89.5.59, %834
  store i32 %add90.5.59, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.59 = tail call i32 @rand() #2
  %rem89.6.59 = srem i32 %call88.6.59, 100
  %835 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.59 = add nsw i32 %rem89.6.59, %835
  store i32 %add90.6.59, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.59 = tail call i32 @rand() #2
  %rem89.7.59 = srem i32 %call88.7.59, 100
  %836 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.59 = add nsw i32 %rem89.7.59, %836
  store i32 %add90.7.59, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.59 = tail call i32 @rand() #2
  %rem89.8.59 = srem i32 %call88.8.59, 100
  %837 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.59 = add nsw i32 %rem89.8.59, %837
  store i32 %add90.8.59, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.59 = tail call i32 @rand() #2
  %rem89.9.59 = srem i32 %call88.9.59, 100
  %838 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.59 = add nsw i32 %rem89.9.59, %838
  store i32 %add90.9.59, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.59 = mul nsw i32 %add74.59, %rem15
  %add81.59 = add nsw i32 %rem80.59, %rem78
  %.pre323 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre324 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then73.59
  %839 = phi i32 [ %add42.59, %if.end.59 ], [ %add90.9.59, %if.then73.59 ]
  %840 = phi i32 [ %rem32.59, %if.end.59 ], [ %.pre324, %if.then73.59 ]
  %841 = phi i32 [ %add33.59, %if.end.59 ], [ %.pre323, %if.then73.59 ]
  %var4.1.59 = phi i32 [ %var4.1.58, %if.end.59 ], [ %mul75.59, %if.then73.59 ]
  %var5.1.59 = phi i32 [ %var5.1.58, %if.end.59 ], [ %rem9, %if.then73.59 ]
  %var1.1.59 = phi i32 [ %var1.1.58, %if.end.59 ], [ %add81.59, %if.then73.59 ]
  %inc101.59 = add nuw nsw i32 %i25.0178, 60
  %mul.60 = mul nsw i32 %841, 3
  %div.60 = sdiv i32 %840, 2
  %sub.60 = sub nsw i32 %mul.60, %div.60
  store i32 %sub.60, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.60 = add nsw i32 %sub.60, %841
  %rem32.60 = srem i32 %add31.60, 100
  store i32 %rem32.60, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.60 = or i32 %rem32.60, 1
  %add33.60 = add nsw i32 %or.60, %rem17
  store i32 %add33.60, i32* @main.hot_data.2, align 4, !tbaa !7
  %842 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %add42.60 = add nsw i32 %add33.60, %842
  store i32 %add42.60, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %rem70.60 = urem i32 %inc101.59, 1000
  %cmp71.60 = icmp eq i32 %rem70.60, 0
  br i1 %cmp71.60, label %if.then73.60, label %if.end.61

if.then73.60:                                     ; preds = %if.end.60
  %add74.60 = add nsw i32 %var1.1.59, %rem13
  %call79.60 = tail call i32 @rand() #2
  %rem80.60 = srem i32 %call79.60, 5
  %call88.60 = tail call i32 @rand() #2
  %rem89.60 = srem i32 %call88.60, 100
  %843 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.60 = add nsw i32 %rem89.60, %843
  store i32 %add90.60, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.60 = tail call i32 @rand() #2
  %rem89.1.60 = srem i32 %call88.1.60, 100
  %844 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.60 = add nsw i32 %rem89.1.60, %844
  store i32 %add90.1.60, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.60 = tail call i32 @rand() #2
  %rem89.2.60 = srem i32 %call88.2.60, 100
  %845 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.60 = add nsw i32 %rem89.2.60, %845
  store i32 %add90.2.60, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.60 = tail call i32 @rand() #2
  %rem89.3.60 = srem i32 %call88.3.60, 100
  %846 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.60 = add nsw i32 %rem89.3.60, %846
  store i32 %add90.3.60, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.60 = tail call i32 @rand() #2
  %rem89.4.60 = srem i32 %call88.4.60, 100
  %847 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.60 = add nsw i32 %rem89.4.60, %847
  store i32 %add90.4.60, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.60 = tail call i32 @rand() #2
  %rem89.5.60 = srem i32 %call88.5.60, 100
  %848 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.60 = add nsw i32 %rem89.5.60, %848
  store i32 %add90.5.60, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.60 = tail call i32 @rand() #2
  %rem89.6.60 = srem i32 %call88.6.60, 100
  %849 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.60 = add nsw i32 %rem89.6.60, %849
  store i32 %add90.6.60, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.60 = tail call i32 @rand() #2
  %rem89.7.60 = srem i32 %call88.7.60, 100
  %850 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.60 = add nsw i32 %rem89.7.60, %850
  store i32 %add90.7.60, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.60 = tail call i32 @rand() #2
  %rem89.8.60 = srem i32 %call88.8.60, 100
  %851 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.60 = add nsw i32 %rem89.8.60, %851
  store i32 %add90.8.60, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.60 = tail call i32 @rand() #2
  %rem89.9.60 = srem i32 %call88.9.60, 100
  %852 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.60 = add nsw i32 %rem89.9.60, %852
  store i32 %add90.9.60, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.60 = mul nsw i32 %add74.60, %rem15
  %add81.60 = add nsw i32 %rem80.60, %rem78
  %.pre325 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre326 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then73.60
  %853 = phi i32 [ %839, %if.end.60 ], [ %add90.9.60, %if.then73.60 ]
  %854 = phi i32 [ %rem32.60, %if.end.60 ], [ %.pre326, %if.then73.60 ]
  %855 = phi i32 [ %add33.60, %if.end.60 ], [ %.pre325, %if.then73.60 ]
  %var4.1.60 = phi i32 [ %var4.1.59, %if.end.60 ], [ %mul75.60, %if.then73.60 ]
  %var5.1.60 = phi i32 [ %var5.1.59, %if.end.60 ], [ %rem9, %if.then73.60 ]
  %var1.1.60 = phi i32 [ %var1.1.59, %if.end.60 ], [ %add81.60, %if.then73.60 ]
  %inc101.60 = add nuw nsw i32 %i25.0178, 61
  %mul.61 = mul nsw i32 %855, 3
  %div.61 = sdiv i32 %854, 2
  %sub.61 = sub nsw i32 %mul.61, %div.61
  store i32 %sub.61, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.61 = add nsw i32 %sub.61, %855
  %rem32.61 = srem i32 %add31.61, 100
  store i32 %rem32.61, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.61 = or i32 %rem32.61, 1
  %add33.61 = add nsw i32 %or.61, %rem17
  store i32 %add33.61, i32* @main.hot_data.2, align 4, !tbaa !7
  %856 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %add42.61 = add nsw i32 %add33.61, %856
  store i32 %add42.61, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %rem70.61 = urem i32 %inc101.60, 1000
  %cmp71.61 = icmp eq i32 %rem70.61, 0
  br i1 %cmp71.61, label %if.then73.61, label %if.end.62

if.then73.61:                                     ; preds = %if.end.61
  %add74.61 = add nsw i32 %var1.1.60, %rem13
  %call79.61 = tail call i32 @rand() #2
  %rem80.61 = srem i32 %call79.61, 5
  %call88.61 = tail call i32 @rand() #2
  %rem89.61 = srem i32 %call88.61, 100
  %857 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.61 = add nsw i32 %rem89.61, %857
  store i32 %add90.61, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.61 = tail call i32 @rand() #2
  %rem89.1.61 = srem i32 %call88.1.61, 100
  %858 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.61 = add nsw i32 %rem89.1.61, %858
  store i32 %add90.1.61, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.61 = tail call i32 @rand() #2
  %rem89.2.61 = srem i32 %call88.2.61, 100
  %859 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.61 = add nsw i32 %rem89.2.61, %859
  store i32 %add90.2.61, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.61 = tail call i32 @rand() #2
  %rem89.3.61 = srem i32 %call88.3.61, 100
  %860 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.61 = add nsw i32 %rem89.3.61, %860
  store i32 %add90.3.61, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.61 = tail call i32 @rand() #2
  %rem89.4.61 = srem i32 %call88.4.61, 100
  %861 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.61 = add nsw i32 %rem89.4.61, %861
  store i32 %add90.4.61, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.61 = tail call i32 @rand() #2
  %rem89.5.61 = srem i32 %call88.5.61, 100
  %862 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.61 = add nsw i32 %rem89.5.61, %862
  store i32 %add90.5.61, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.61 = tail call i32 @rand() #2
  %rem89.6.61 = srem i32 %call88.6.61, 100
  %863 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.61 = add nsw i32 %rem89.6.61, %863
  store i32 %add90.6.61, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.61 = tail call i32 @rand() #2
  %rem89.7.61 = srem i32 %call88.7.61, 100
  %864 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.61 = add nsw i32 %rem89.7.61, %864
  store i32 %add90.7.61, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.61 = tail call i32 @rand() #2
  %rem89.8.61 = srem i32 %call88.8.61, 100
  %865 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.61 = add nsw i32 %rem89.8.61, %865
  store i32 %add90.8.61, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.61 = tail call i32 @rand() #2
  %rem89.9.61 = srem i32 %call88.9.61, 100
  %866 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.61 = add nsw i32 %rem89.9.61, %866
  store i32 %add90.9.61, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.61 = mul nsw i32 %add74.61, %rem15
  %add81.61 = add nsw i32 %rem80.61, %rem78
  %.pre327 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre328 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then73.61
  %867 = phi i32 [ %853, %if.end.61 ], [ %add90.9.61, %if.then73.61 ]
  %868 = phi i32 [ %rem32.61, %if.end.61 ], [ %.pre328, %if.then73.61 ]
  %869 = phi i32 [ %add33.61, %if.end.61 ], [ %.pre327, %if.then73.61 ]
  %var4.1.61 = phi i32 [ %var4.1.60, %if.end.61 ], [ %mul75.61, %if.then73.61 ]
  %var5.1.61 = phi i32 [ %var5.1.60, %if.end.61 ], [ %rem9, %if.then73.61 ]
  %var1.1.61 = phi i32 [ %var1.1.60, %if.end.61 ], [ %add81.61, %if.then73.61 ]
  %inc101.61 = add nuw nsw i32 %i25.0178, 62
  %mul.62 = mul nsw i32 %869, 3
  %div.62 = sdiv i32 %868, 2
  %sub.62 = sub nsw i32 %mul.62, %div.62
  store i32 %sub.62, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.62 = add nsw i32 %sub.62, %869
  %rem32.62 = srem i32 %add31.62, 100
  store i32 %rem32.62, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.62 = or i32 %rem32.62, 1
  %add33.62 = add nsw i32 %or.62, %rem17
  store i32 %add33.62, i32* @main.hot_data.2, align 4, !tbaa !7
  %870 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %add42.62 = add nsw i32 %add33.62, %870
  store i32 %add42.62, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %rem70.62 = urem i32 %inc101.61, 1000
  %cmp71.62 = icmp eq i32 %rem70.62, 0
  br i1 %cmp71.62, label %if.then73.62, label %if.end.63

if.then73.62:                                     ; preds = %if.end.62
  %add74.62 = add nsw i32 %var1.1.61, %rem13
  %call79.62 = tail call i32 @rand() #2
  %rem80.62 = srem i32 %call79.62, 5
  %call88.62 = tail call i32 @rand() #2
  %rem89.62 = srem i32 %call88.62, 100
  %871 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.62 = add nsw i32 %rem89.62, %871
  store i32 %add90.62, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.62 = tail call i32 @rand() #2
  %rem89.1.62 = srem i32 %call88.1.62, 100
  %872 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.62 = add nsw i32 %rem89.1.62, %872
  store i32 %add90.1.62, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.62 = tail call i32 @rand() #2
  %rem89.2.62 = srem i32 %call88.2.62, 100
  %873 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.62 = add nsw i32 %rem89.2.62, %873
  store i32 %add90.2.62, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.62 = tail call i32 @rand() #2
  %rem89.3.62 = srem i32 %call88.3.62, 100
  %874 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.62 = add nsw i32 %rem89.3.62, %874
  store i32 %add90.3.62, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.62 = tail call i32 @rand() #2
  %rem89.4.62 = srem i32 %call88.4.62, 100
  %875 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.62 = add nsw i32 %rem89.4.62, %875
  store i32 %add90.4.62, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.62 = tail call i32 @rand() #2
  %rem89.5.62 = srem i32 %call88.5.62, 100
  %876 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.62 = add nsw i32 %rem89.5.62, %876
  store i32 %add90.5.62, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.62 = tail call i32 @rand() #2
  %rem89.6.62 = srem i32 %call88.6.62, 100
  %877 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.62 = add nsw i32 %rem89.6.62, %877
  store i32 %add90.6.62, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.62 = tail call i32 @rand() #2
  %rem89.7.62 = srem i32 %call88.7.62, 100
  %878 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.62 = add nsw i32 %rem89.7.62, %878
  store i32 %add90.7.62, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.62 = tail call i32 @rand() #2
  %rem89.8.62 = srem i32 %call88.8.62, 100
  %879 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.62 = add nsw i32 %rem89.8.62, %879
  store i32 %add90.8.62, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.62 = tail call i32 @rand() #2
  %rem89.9.62 = srem i32 %call88.9.62, 100
  %880 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.62 = add nsw i32 %rem89.9.62, %880
  store i32 %add90.9.62, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.62 = mul nsw i32 %add74.62, %rem15
  %add81.62 = add nsw i32 %rem80.62, %rem78
  %.pre329 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre330 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then73.62
  %881 = phi i32 [ %867, %if.end.62 ], [ %add90.9.62, %if.then73.62 ]
  %882 = phi i32 [ %rem32.62, %if.end.62 ], [ %.pre330, %if.then73.62 ]
  %883 = phi i32 [ %add33.62, %if.end.62 ], [ %.pre329, %if.then73.62 ]
  %var4.1.62 = phi i32 [ %var4.1.61, %if.end.62 ], [ %mul75.62, %if.then73.62 ]
  %var5.1.62 = phi i32 [ %var5.1.61, %if.end.62 ], [ %rem9, %if.then73.62 ]
  %var1.1.62 = phi i32 [ %var1.1.61, %if.end.62 ], [ %add81.62, %if.then73.62 ]
  %inc101.62 = add nuw nsw i32 %i25.0178, 63
  %mul.63 = mul nsw i32 %883, 3
  %div.63 = sdiv i32 %882, 2
  %sub.63 = sub nsw i32 %mul.63, %div.63
  store i32 %sub.63, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.63 = add nsw i32 %sub.63, %883
  %rem32.63 = srem i32 %add31.63, 100
  store i32 %rem32.63, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.63 = or i32 %rem32.63, 1
  %add33.63 = add nsw i32 %or.63, %rem17
  store i32 %add33.63, i32* @main.hot_data.2, align 4, !tbaa !7
  %884 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %add42.63 = add nsw i32 %add33.63, %884
  store i32 %add42.63, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %rem70.63 = urem i32 %inc101.62, 1000
  %cmp71.63 = icmp eq i32 %rem70.63, 0
  br i1 %cmp71.63, label %if.then73.63, label %if.end.64

if.then73.63:                                     ; preds = %if.end.63
  %add74.63 = add nsw i32 %var1.1.62, %rem13
  %call79.63 = tail call i32 @rand() #2
  %rem80.63 = srem i32 %call79.63, 5
  %call88.63 = tail call i32 @rand() #2
  %rem89.63 = srem i32 %call88.63, 100
  %885 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.63 = add nsw i32 %rem89.63, %885
  store i32 %add90.63, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.63 = tail call i32 @rand() #2
  %rem89.1.63 = srem i32 %call88.1.63, 100
  %886 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.63 = add nsw i32 %rem89.1.63, %886
  store i32 %add90.1.63, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.63 = tail call i32 @rand() #2
  %rem89.2.63 = srem i32 %call88.2.63, 100
  %887 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.63 = add nsw i32 %rem89.2.63, %887
  store i32 %add90.2.63, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.63 = tail call i32 @rand() #2
  %rem89.3.63 = srem i32 %call88.3.63, 100
  %888 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.63 = add nsw i32 %rem89.3.63, %888
  store i32 %add90.3.63, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.63 = tail call i32 @rand() #2
  %rem89.4.63 = srem i32 %call88.4.63, 100
  %889 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.63 = add nsw i32 %rem89.4.63, %889
  store i32 %add90.4.63, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.63 = tail call i32 @rand() #2
  %rem89.5.63 = srem i32 %call88.5.63, 100
  %890 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.63 = add nsw i32 %rem89.5.63, %890
  store i32 %add90.5.63, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.63 = tail call i32 @rand() #2
  %rem89.6.63 = srem i32 %call88.6.63, 100
  %891 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.63 = add nsw i32 %rem89.6.63, %891
  store i32 %add90.6.63, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.63 = tail call i32 @rand() #2
  %rem89.7.63 = srem i32 %call88.7.63, 100
  %892 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.63 = add nsw i32 %rem89.7.63, %892
  store i32 %add90.7.63, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.63 = tail call i32 @rand() #2
  %rem89.8.63 = srem i32 %call88.8.63, 100
  %893 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.63 = add nsw i32 %rem89.8.63, %893
  store i32 %add90.8.63, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.63 = tail call i32 @rand() #2
  %rem89.9.63 = srem i32 %call88.9.63, 100
  %894 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.63 = add nsw i32 %rem89.9.63, %894
  store i32 %add90.9.63, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.63 = mul nsw i32 %add74.63, %rem15
  %add81.63 = add nsw i32 %rem80.63, %rem78
  %.pre331 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre332 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then73.63
  %895 = phi i32 [ %881, %if.end.63 ], [ %add90.9.63, %if.then73.63 ]
  %896 = phi i32 [ %rem32.63, %if.end.63 ], [ %.pre332, %if.then73.63 ]
  %897 = phi i32 [ %add33.63, %if.end.63 ], [ %.pre331, %if.then73.63 ]
  %var4.1.63 = phi i32 [ %var4.1.62, %if.end.63 ], [ %mul75.63, %if.then73.63 ]
  %var5.1.63 = phi i32 [ %var5.1.62, %if.end.63 ], [ %rem9, %if.then73.63 ]
  %var1.1.63 = phi i32 [ %var1.1.62, %if.end.63 ], [ %add81.63, %if.then73.63 ]
  %inc101.63 = add nuw nsw i32 %i25.0178, 64
  %mul.64 = mul nsw i32 %897, 3
  %div.64 = sdiv i32 %896, 2
  %sub.64 = sub nsw i32 %mul.64, %div.64
  store i32 %sub.64, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.64 = add nsw i32 %sub.64, %897
  %rem32.64 = srem i32 %add31.64, 100
  store i32 %rem32.64, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.64 = or i32 %rem32.64, 1
  %add33.64 = add nsw i32 %or.64, %rem17
  store i32 %add33.64, i32* @main.hot_data.2, align 4, !tbaa !7
  %898 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %add42.64 = add nsw i32 %add33.64, %898
  store i32 %add42.64, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %rem70.64 = urem i32 %inc101.63, 1000
  %cmp71.64 = icmp eq i32 %rem70.64, 0
  br i1 %cmp71.64, label %if.then73.64, label %if.end.65

if.then73.64:                                     ; preds = %if.end.64
  %add74.64 = add nsw i32 %var1.1.63, %rem13
  %call79.64 = tail call i32 @rand() #2
  %rem80.64 = srem i32 %call79.64, 5
  %call88.64 = tail call i32 @rand() #2
  %rem89.64 = srem i32 %call88.64, 100
  %899 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.64 = add nsw i32 %rem89.64, %899
  store i32 %add90.64, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.64 = tail call i32 @rand() #2
  %rem89.1.64 = srem i32 %call88.1.64, 100
  %900 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.64 = add nsw i32 %rem89.1.64, %900
  store i32 %add90.1.64, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.64 = tail call i32 @rand() #2
  %rem89.2.64 = srem i32 %call88.2.64, 100
  %901 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.64 = add nsw i32 %rem89.2.64, %901
  store i32 %add90.2.64, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.64 = tail call i32 @rand() #2
  %rem89.3.64 = srem i32 %call88.3.64, 100
  %902 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.64 = add nsw i32 %rem89.3.64, %902
  store i32 %add90.3.64, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.64 = tail call i32 @rand() #2
  %rem89.4.64 = srem i32 %call88.4.64, 100
  %903 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.64 = add nsw i32 %rem89.4.64, %903
  store i32 %add90.4.64, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.64 = tail call i32 @rand() #2
  %rem89.5.64 = srem i32 %call88.5.64, 100
  %904 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.64 = add nsw i32 %rem89.5.64, %904
  store i32 %add90.5.64, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.64 = tail call i32 @rand() #2
  %rem89.6.64 = srem i32 %call88.6.64, 100
  %905 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.64 = add nsw i32 %rem89.6.64, %905
  store i32 %add90.6.64, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.64 = tail call i32 @rand() #2
  %rem89.7.64 = srem i32 %call88.7.64, 100
  %906 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.64 = add nsw i32 %rem89.7.64, %906
  store i32 %add90.7.64, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.64 = tail call i32 @rand() #2
  %rem89.8.64 = srem i32 %call88.8.64, 100
  %907 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.64 = add nsw i32 %rem89.8.64, %907
  store i32 %add90.8.64, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.64 = tail call i32 @rand() #2
  %rem89.9.64 = srem i32 %call88.9.64, 100
  %908 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.64 = add nsw i32 %rem89.9.64, %908
  store i32 %add90.9.64, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.64 = mul nsw i32 %add74.64, %rem15
  %add81.64 = add nsw i32 %rem80.64, %rem78
  %.pre333 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre334 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then73.64
  %909 = phi i32 [ %895, %if.end.64 ], [ %add90.9.64, %if.then73.64 ]
  %910 = phi i32 [ %rem32.64, %if.end.64 ], [ %.pre334, %if.then73.64 ]
  %911 = phi i32 [ %add33.64, %if.end.64 ], [ %.pre333, %if.then73.64 ]
  %var4.1.64 = phi i32 [ %var4.1.63, %if.end.64 ], [ %mul75.64, %if.then73.64 ]
  %var5.1.64 = phi i32 [ %var5.1.63, %if.end.64 ], [ %rem9, %if.then73.64 ]
  %var1.1.64 = phi i32 [ %var1.1.63, %if.end.64 ], [ %add81.64, %if.then73.64 ]
  %inc101.64 = add nuw nsw i32 %i25.0178, 65
  %mul.65 = mul nsw i32 %911, 3
  %div.65 = sdiv i32 %910, 2
  %sub.65 = sub nsw i32 %mul.65, %div.65
  store i32 %sub.65, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.65 = add nsw i32 %sub.65, %911
  %rem32.65 = srem i32 %add31.65, 100
  store i32 %rem32.65, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.65 = or i32 %rem32.65, 1
  %add33.65 = add nsw i32 %or.65, %rem17
  store i32 %add33.65, i32* @main.hot_data.2, align 4, !tbaa !7
  %912 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %add42.65 = add nsw i32 %add33.65, %912
  store i32 %add42.65, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %rem70.65 = urem i32 %inc101.64, 1000
  %cmp71.65 = icmp eq i32 %rem70.65, 0
  br i1 %cmp71.65, label %if.then73.65, label %if.end.66

if.then73.65:                                     ; preds = %if.end.65
  %add74.65 = add nsw i32 %var1.1.64, %rem13
  %call79.65 = tail call i32 @rand() #2
  %rem80.65 = srem i32 %call79.65, 5
  %call88.65 = tail call i32 @rand() #2
  %rem89.65 = srem i32 %call88.65, 100
  %913 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.65 = add nsw i32 %rem89.65, %913
  store i32 %add90.65, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.65 = tail call i32 @rand() #2
  %rem89.1.65 = srem i32 %call88.1.65, 100
  %914 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.65 = add nsw i32 %rem89.1.65, %914
  store i32 %add90.1.65, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.65 = tail call i32 @rand() #2
  %rem89.2.65 = srem i32 %call88.2.65, 100
  %915 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.65 = add nsw i32 %rem89.2.65, %915
  store i32 %add90.2.65, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.65 = tail call i32 @rand() #2
  %rem89.3.65 = srem i32 %call88.3.65, 100
  %916 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.65 = add nsw i32 %rem89.3.65, %916
  store i32 %add90.3.65, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.65 = tail call i32 @rand() #2
  %rem89.4.65 = srem i32 %call88.4.65, 100
  %917 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.65 = add nsw i32 %rem89.4.65, %917
  store i32 %add90.4.65, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.65 = tail call i32 @rand() #2
  %rem89.5.65 = srem i32 %call88.5.65, 100
  %918 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.65 = add nsw i32 %rem89.5.65, %918
  store i32 %add90.5.65, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.65 = tail call i32 @rand() #2
  %rem89.6.65 = srem i32 %call88.6.65, 100
  %919 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.65 = add nsw i32 %rem89.6.65, %919
  store i32 %add90.6.65, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.65 = tail call i32 @rand() #2
  %rem89.7.65 = srem i32 %call88.7.65, 100
  %920 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.65 = add nsw i32 %rem89.7.65, %920
  store i32 %add90.7.65, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.65 = tail call i32 @rand() #2
  %rem89.8.65 = srem i32 %call88.8.65, 100
  %921 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.65 = add nsw i32 %rem89.8.65, %921
  store i32 %add90.8.65, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.65 = tail call i32 @rand() #2
  %rem89.9.65 = srem i32 %call88.9.65, 100
  %922 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.65 = add nsw i32 %rem89.9.65, %922
  store i32 %add90.9.65, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.65 = mul nsw i32 %add74.65, %rem15
  %add81.65 = add nsw i32 %rem80.65, %rem78
  %.pre335 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre336 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.then73.65
  %923 = phi i32 [ %909, %if.end.65 ], [ %add90.9.65, %if.then73.65 ]
  %924 = phi i32 [ %rem32.65, %if.end.65 ], [ %.pre336, %if.then73.65 ]
  %925 = phi i32 [ %add33.65, %if.end.65 ], [ %.pre335, %if.then73.65 ]
  %var4.1.65 = phi i32 [ %var4.1.64, %if.end.65 ], [ %mul75.65, %if.then73.65 ]
  %var5.1.65 = phi i32 [ %var5.1.64, %if.end.65 ], [ %rem9, %if.then73.65 ]
  %var1.1.65 = phi i32 [ %var1.1.64, %if.end.65 ], [ %add81.65, %if.then73.65 ]
  %inc101.65 = add nuw nsw i32 %i25.0178, 66
  %mul.66 = mul nsw i32 %925, 3
  %div.66 = sdiv i32 %924, 2
  %sub.66 = sub nsw i32 %mul.66, %div.66
  store i32 %sub.66, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.66 = add nsw i32 %sub.66, %925
  %rem32.66 = srem i32 %add31.66, 100
  store i32 %rem32.66, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.66 = or i32 %rem32.66, 1
  %add33.66 = add nsw i32 %or.66, %rem17
  store i32 %add33.66, i32* @main.hot_data.2, align 4, !tbaa !7
  %926 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %add42.66 = add nsw i32 %add33.66, %926
  store i32 %add42.66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %rem70.66 = urem i32 %inc101.65, 1000
  %cmp71.66 = icmp eq i32 %rem70.66, 0
  br i1 %cmp71.66, label %if.then73.66, label %if.end.67

if.then73.66:                                     ; preds = %if.end.66
  %add74.66 = add nsw i32 %var1.1.65, %rem13
  %call79.66 = tail call i32 @rand() #2
  %rem80.66 = srem i32 %call79.66, 5
  %call88.66 = tail call i32 @rand() #2
  %rem89.66 = srem i32 %call88.66, 100
  %927 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.66 = add nsw i32 %rem89.66, %927
  store i32 %add90.66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.66 = tail call i32 @rand() #2
  %rem89.1.66 = srem i32 %call88.1.66, 100
  %928 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.66 = add nsw i32 %rem89.1.66, %928
  store i32 %add90.1.66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.66 = tail call i32 @rand() #2
  %rem89.2.66 = srem i32 %call88.2.66, 100
  %929 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.66 = add nsw i32 %rem89.2.66, %929
  store i32 %add90.2.66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.66 = tail call i32 @rand() #2
  %rem89.3.66 = srem i32 %call88.3.66, 100
  %930 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.66 = add nsw i32 %rem89.3.66, %930
  store i32 %add90.3.66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.66 = tail call i32 @rand() #2
  %rem89.4.66 = srem i32 %call88.4.66, 100
  %931 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.66 = add nsw i32 %rem89.4.66, %931
  store i32 %add90.4.66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.66 = tail call i32 @rand() #2
  %rem89.5.66 = srem i32 %call88.5.66, 100
  %932 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.66 = add nsw i32 %rem89.5.66, %932
  store i32 %add90.5.66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.66 = tail call i32 @rand() #2
  %rem89.6.66 = srem i32 %call88.6.66, 100
  %933 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.66 = add nsw i32 %rem89.6.66, %933
  store i32 %add90.6.66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.66 = tail call i32 @rand() #2
  %rem89.7.66 = srem i32 %call88.7.66, 100
  %934 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.66 = add nsw i32 %rem89.7.66, %934
  store i32 %add90.7.66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.66 = tail call i32 @rand() #2
  %rem89.8.66 = srem i32 %call88.8.66, 100
  %935 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.66 = add nsw i32 %rem89.8.66, %935
  store i32 %add90.8.66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.66 = tail call i32 @rand() #2
  %rem89.9.66 = srem i32 %call88.9.66, 100
  %936 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.66 = add nsw i32 %rem89.9.66, %936
  store i32 %add90.9.66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.66 = mul nsw i32 %add74.66, %rem15
  %add81.66 = add nsw i32 %rem80.66, %rem78
  %.pre337 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre338 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then73.66
  %937 = phi i32 [ %923, %if.end.66 ], [ %add90.9.66, %if.then73.66 ]
  %938 = phi i32 [ %rem32.66, %if.end.66 ], [ %.pre338, %if.then73.66 ]
  %939 = phi i32 [ %add33.66, %if.end.66 ], [ %.pre337, %if.then73.66 ]
  %var4.1.66 = phi i32 [ %var4.1.65, %if.end.66 ], [ %mul75.66, %if.then73.66 ]
  %var5.1.66 = phi i32 [ %var5.1.65, %if.end.66 ], [ %rem9, %if.then73.66 ]
  %var1.1.66 = phi i32 [ %var1.1.65, %if.end.66 ], [ %add81.66, %if.then73.66 ]
  %inc101.66 = add nuw nsw i32 %i25.0178, 67
  %mul.67 = mul nsw i32 %939, 3
  %div.67 = sdiv i32 %938, 2
  %sub.67 = sub nsw i32 %mul.67, %div.67
  store i32 %sub.67, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.67 = add nsw i32 %sub.67, %939
  %rem32.67 = srem i32 %add31.67, 100
  store i32 %rem32.67, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.67 = or i32 %rem32.67, 1
  %add33.67 = add nsw i32 %or.67, %rem17
  store i32 %add33.67, i32* @main.hot_data.2, align 4, !tbaa !7
  %940 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %add42.67 = add nsw i32 %add33.67, %940
  store i32 %add42.67, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %rem70.67 = urem i32 %inc101.66, 1000
  %cmp71.67 = icmp eq i32 %rem70.67, 0
  br i1 %cmp71.67, label %if.then73.67, label %if.end.68

if.then73.67:                                     ; preds = %if.end.67
  %add74.67 = add nsw i32 %var1.1.66, %rem13
  %call79.67 = tail call i32 @rand() #2
  %rem80.67 = srem i32 %call79.67, 5
  %call88.67 = tail call i32 @rand() #2
  %rem89.67 = srem i32 %call88.67, 100
  %941 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.67 = add nsw i32 %rem89.67, %941
  store i32 %add90.67, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.67 = tail call i32 @rand() #2
  %rem89.1.67 = srem i32 %call88.1.67, 100
  %942 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.67 = add nsw i32 %rem89.1.67, %942
  store i32 %add90.1.67, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.67 = tail call i32 @rand() #2
  %rem89.2.67 = srem i32 %call88.2.67, 100
  %943 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.67 = add nsw i32 %rem89.2.67, %943
  store i32 %add90.2.67, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.67 = tail call i32 @rand() #2
  %rem89.3.67 = srem i32 %call88.3.67, 100
  %944 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.67 = add nsw i32 %rem89.3.67, %944
  store i32 %add90.3.67, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.67 = tail call i32 @rand() #2
  %rem89.4.67 = srem i32 %call88.4.67, 100
  %945 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.67 = add nsw i32 %rem89.4.67, %945
  store i32 %add90.4.67, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.67 = tail call i32 @rand() #2
  %rem89.5.67 = srem i32 %call88.5.67, 100
  %946 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.67 = add nsw i32 %rem89.5.67, %946
  store i32 %add90.5.67, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.67 = tail call i32 @rand() #2
  %rem89.6.67 = srem i32 %call88.6.67, 100
  %947 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.67 = add nsw i32 %rem89.6.67, %947
  store i32 %add90.6.67, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.67 = tail call i32 @rand() #2
  %rem89.7.67 = srem i32 %call88.7.67, 100
  %948 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.67 = add nsw i32 %rem89.7.67, %948
  store i32 %add90.7.67, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.67 = tail call i32 @rand() #2
  %rem89.8.67 = srem i32 %call88.8.67, 100
  %949 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.67 = add nsw i32 %rem89.8.67, %949
  store i32 %add90.8.67, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.67 = tail call i32 @rand() #2
  %rem89.9.67 = srem i32 %call88.9.67, 100
  %950 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.67 = add nsw i32 %rem89.9.67, %950
  store i32 %add90.9.67, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.67 = mul nsw i32 %add74.67, %rem15
  %add81.67 = add nsw i32 %rem80.67, %rem78
  %.pre339 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre340 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.then73.67
  %951 = phi i32 [ %937, %if.end.67 ], [ %add90.9.67, %if.then73.67 ]
  %952 = phi i32 [ %rem32.67, %if.end.67 ], [ %.pre340, %if.then73.67 ]
  %953 = phi i32 [ %add33.67, %if.end.67 ], [ %.pre339, %if.then73.67 ]
  %var4.1.67 = phi i32 [ %var4.1.66, %if.end.67 ], [ %mul75.67, %if.then73.67 ]
  %var5.1.67 = phi i32 [ %var5.1.66, %if.end.67 ], [ %rem9, %if.then73.67 ]
  %var1.1.67 = phi i32 [ %var1.1.66, %if.end.67 ], [ %add81.67, %if.then73.67 ]
  %inc101.67 = add nuw nsw i32 %i25.0178, 68
  %mul.68 = mul nsw i32 %953, 3
  %div.68 = sdiv i32 %952, 2
  %sub.68 = sub nsw i32 %mul.68, %div.68
  store i32 %sub.68, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.68 = add nsw i32 %sub.68, %953
  %rem32.68 = srem i32 %add31.68, 100
  store i32 %rem32.68, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.68 = or i32 %rem32.68, 1
  %add33.68 = add nsw i32 %or.68, %rem17
  store i32 %add33.68, i32* @main.hot_data.2, align 4, !tbaa !7
  %954 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %add42.68 = add nsw i32 %add33.68, %954
  store i32 %add42.68, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %rem70.68 = urem i32 %inc101.67, 1000
  %cmp71.68 = icmp eq i32 %rem70.68, 0
  br i1 %cmp71.68, label %if.then73.68, label %if.end.69

if.then73.68:                                     ; preds = %if.end.68
  %add74.68 = add nsw i32 %var1.1.67, %rem13
  %call79.68 = tail call i32 @rand() #2
  %rem80.68 = srem i32 %call79.68, 5
  %call88.68 = tail call i32 @rand() #2
  %rem89.68 = srem i32 %call88.68, 100
  %955 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.68 = add nsw i32 %rem89.68, %955
  store i32 %add90.68, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.68 = tail call i32 @rand() #2
  %rem89.1.68 = srem i32 %call88.1.68, 100
  %956 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.68 = add nsw i32 %rem89.1.68, %956
  store i32 %add90.1.68, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.68 = tail call i32 @rand() #2
  %rem89.2.68 = srem i32 %call88.2.68, 100
  %957 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.68 = add nsw i32 %rem89.2.68, %957
  store i32 %add90.2.68, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.68 = tail call i32 @rand() #2
  %rem89.3.68 = srem i32 %call88.3.68, 100
  %958 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.68 = add nsw i32 %rem89.3.68, %958
  store i32 %add90.3.68, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.68 = tail call i32 @rand() #2
  %rem89.4.68 = srem i32 %call88.4.68, 100
  %959 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.68 = add nsw i32 %rem89.4.68, %959
  store i32 %add90.4.68, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.68 = tail call i32 @rand() #2
  %rem89.5.68 = srem i32 %call88.5.68, 100
  %960 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.68 = add nsw i32 %rem89.5.68, %960
  store i32 %add90.5.68, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.68 = tail call i32 @rand() #2
  %rem89.6.68 = srem i32 %call88.6.68, 100
  %961 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.68 = add nsw i32 %rem89.6.68, %961
  store i32 %add90.6.68, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.68 = tail call i32 @rand() #2
  %rem89.7.68 = srem i32 %call88.7.68, 100
  %962 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.68 = add nsw i32 %rem89.7.68, %962
  store i32 %add90.7.68, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.68 = tail call i32 @rand() #2
  %rem89.8.68 = srem i32 %call88.8.68, 100
  %963 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.68 = add nsw i32 %rem89.8.68, %963
  store i32 %add90.8.68, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.68 = tail call i32 @rand() #2
  %rem89.9.68 = srem i32 %call88.9.68, 100
  %964 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.68 = add nsw i32 %rem89.9.68, %964
  store i32 %add90.9.68, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.68 = mul nsw i32 %add74.68, %rem15
  %add81.68 = add nsw i32 %rem80.68, %rem78
  %.pre341 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre342 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then73.68
  %965 = phi i32 [ %951, %if.end.68 ], [ %add90.9.68, %if.then73.68 ]
  %966 = phi i32 [ %rem32.68, %if.end.68 ], [ %.pre342, %if.then73.68 ]
  %967 = phi i32 [ %add33.68, %if.end.68 ], [ %.pre341, %if.then73.68 ]
  %var4.1.68 = phi i32 [ %var4.1.67, %if.end.68 ], [ %mul75.68, %if.then73.68 ]
  %var5.1.68 = phi i32 [ %var5.1.67, %if.end.68 ], [ %rem9, %if.then73.68 ]
  %var1.1.68 = phi i32 [ %var1.1.67, %if.end.68 ], [ %add81.68, %if.then73.68 ]
  %inc101.68 = add nuw nsw i32 %i25.0178, 69
  %mul.69 = mul nsw i32 %967, 3
  %div.69 = sdiv i32 %966, 2
  %sub.69 = sub nsw i32 %mul.69, %div.69
  store i32 %sub.69, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.69 = add nsw i32 %sub.69, %967
  %rem32.69 = srem i32 %add31.69, 100
  store i32 %rem32.69, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.69 = or i32 %rem32.69, 1
  %add33.69 = add nsw i32 %or.69, %rem17
  store i32 %add33.69, i32* @main.hot_data.2, align 4, !tbaa !7
  %add42.69 = add nsw i32 %add33.69, %965
  store i32 %add42.69, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %rem70.69 = urem i32 %inc101.68, 1000
  %cmp71.69 = icmp eq i32 %rem70.69, 0
  br i1 %cmp71.69, label %if.then73.69, label %if.end.70

if.then73.69:                                     ; preds = %if.end.69
  %add74.69 = add nsw i32 %var1.1.68, %rem13
  %call79.69 = tail call i32 @rand() #2
  %rem80.69 = srem i32 %call79.69, 5
  %call88.69 = tail call i32 @rand() #2
  %rem89.69 = srem i32 %call88.69, 100
  %968 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.69 = add nsw i32 %rem89.69, %968
  store i32 %add90.69, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.69 = tail call i32 @rand() #2
  %rem89.1.69 = srem i32 %call88.1.69, 100
  %969 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.69 = add nsw i32 %rem89.1.69, %969
  store i32 %add90.1.69, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.69 = tail call i32 @rand() #2
  %rem89.2.69 = srem i32 %call88.2.69, 100
  %970 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.69 = add nsw i32 %rem89.2.69, %970
  store i32 %add90.2.69, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.69 = tail call i32 @rand() #2
  %rem89.3.69 = srem i32 %call88.3.69, 100
  %971 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.69 = add nsw i32 %rem89.3.69, %971
  store i32 %add90.3.69, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.69 = tail call i32 @rand() #2
  %rem89.4.69 = srem i32 %call88.4.69, 100
  %972 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.69 = add nsw i32 %rem89.4.69, %972
  store i32 %add90.4.69, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.69 = tail call i32 @rand() #2
  %rem89.5.69 = srem i32 %call88.5.69, 100
  %973 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.69 = add nsw i32 %rem89.5.69, %973
  store i32 %add90.5.69, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.69 = tail call i32 @rand() #2
  %rem89.6.69 = srem i32 %call88.6.69, 100
  %974 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.69 = add nsw i32 %rem89.6.69, %974
  store i32 %add90.6.69, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.69 = tail call i32 @rand() #2
  %rem89.7.69 = srem i32 %call88.7.69, 100
  %975 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.69 = add nsw i32 %rem89.7.69, %975
  store i32 %add90.7.69, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.69 = tail call i32 @rand() #2
  %rem89.8.69 = srem i32 %call88.8.69, 100
  %976 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.69 = add nsw i32 %rem89.8.69, %976
  store i32 %add90.8.69, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.69 = tail call i32 @rand() #2
  %rem89.9.69 = srem i32 %call88.9.69, 100
  %977 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.69 = add nsw i32 %rem89.9.69, %977
  store i32 %add90.9.69, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.69 = mul nsw i32 %add74.69, %rem15
  %add81.69 = add nsw i32 %rem80.69, %rem78
  %.pre343 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre344 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then73.69
  %978 = phi i32 [ %add42.69, %if.end.69 ], [ %add90.9.69, %if.then73.69 ]
  %979 = phi i32 [ %rem32.69, %if.end.69 ], [ %.pre344, %if.then73.69 ]
  %980 = phi i32 [ %add33.69, %if.end.69 ], [ %.pre343, %if.then73.69 ]
  %var4.1.69 = phi i32 [ %var4.1.68, %if.end.69 ], [ %mul75.69, %if.then73.69 ]
  %var5.1.69 = phi i32 [ %var5.1.68, %if.end.69 ], [ %rem9, %if.then73.69 ]
  %var1.1.69 = phi i32 [ %var1.1.68, %if.end.69 ], [ %add81.69, %if.then73.69 ]
  %inc101.69 = add nuw nsw i32 %i25.0178, 70
  %mul.70 = mul nsw i32 %980, 3
  %div.70 = sdiv i32 %979, 2
  %sub.70 = sub nsw i32 %mul.70, %div.70
  store i32 %sub.70, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.70 = add nsw i32 %sub.70, %980
  %rem32.70 = srem i32 %add31.70, 100
  store i32 %rem32.70, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.70 = or i32 %rem32.70, 1
  %add33.70 = add nsw i32 %or.70, %rem17
  store i32 %add33.70, i32* @main.hot_data.2, align 4, !tbaa !7
  %981 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %add42.70 = add nsw i32 %add33.70, %981
  store i32 %add42.70, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %rem70.70 = urem i32 %inc101.69, 1000
  %cmp71.70 = icmp eq i32 %rem70.70, 0
  br i1 %cmp71.70, label %if.then73.70, label %if.end.71

if.then73.70:                                     ; preds = %if.end.70
  %add74.70 = add nsw i32 %var1.1.69, %rem13
  %call79.70 = tail call i32 @rand() #2
  %rem80.70 = srem i32 %call79.70, 5
  %call88.70 = tail call i32 @rand() #2
  %rem89.70 = srem i32 %call88.70, 100
  %982 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.70 = add nsw i32 %rem89.70, %982
  store i32 %add90.70, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.70 = tail call i32 @rand() #2
  %rem89.1.70 = srem i32 %call88.1.70, 100
  %983 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.70 = add nsw i32 %rem89.1.70, %983
  store i32 %add90.1.70, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.70 = tail call i32 @rand() #2
  %rem89.2.70 = srem i32 %call88.2.70, 100
  %984 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.70 = add nsw i32 %rem89.2.70, %984
  store i32 %add90.2.70, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.70 = tail call i32 @rand() #2
  %rem89.3.70 = srem i32 %call88.3.70, 100
  %985 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.70 = add nsw i32 %rem89.3.70, %985
  store i32 %add90.3.70, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.70 = tail call i32 @rand() #2
  %rem89.4.70 = srem i32 %call88.4.70, 100
  %986 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.70 = add nsw i32 %rem89.4.70, %986
  store i32 %add90.4.70, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.70 = tail call i32 @rand() #2
  %rem89.5.70 = srem i32 %call88.5.70, 100
  %987 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.70 = add nsw i32 %rem89.5.70, %987
  store i32 %add90.5.70, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.70 = tail call i32 @rand() #2
  %rem89.6.70 = srem i32 %call88.6.70, 100
  %988 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.70 = add nsw i32 %rem89.6.70, %988
  store i32 %add90.6.70, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.70 = tail call i32 @rand() #2
  %rem89.7.70 = srem i32 %call88.7.70, 100
  %989 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.70 = add nsw i32 %rem89.7.70, %989
  store i32 %add90.7.70, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.70 = tail call i32 @rand() #2
  %rem89.8.70 = srem i32 %call88.8.70, 100
  %990 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.70 = add nsw i32 %rem89.8.70, %990
  store i32 %add90.8.70, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.70 = tail call i32 @rand() #2
  %rem89.9.70 = srem i32 %call88.9.70, 100
  %991 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.70 = add nsw i32 %rem89.9.70, %991
  store i32 %add90.9.70, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.70 = mul nsw i32 %add74.70, %rem15
  %add81.70 = add nsw i32 %rem80.70, %rem78
  %.pre345 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre346 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then73.70
  %992 = phi i32 [ %978, %if.end.70 ], [ %add90.9.70, %if.then73.70 ]
  %993 = phi i32 [ %rem32.70, %if.end.70 ], [ %.pre346, %if.then73.70 ]
  %994 = phi i32 [ %add33.70, %if.end.70 ], [ %.pre345, %if.then73.70 ]
  %var4.1.70 = phi i32 [ %var4.1.69, %if.end.70 ], [ %mul75.70, %if.then73.70 ]
  %var5.1.70 = phi i32 [ %var5.1.69, %if.end.70 ], [ %rem9, %if.then73.70 ]
  %var1.1.70 = phi i32 [ %var1.1.69, %if.end.70 ], [ %add81.70, %if.then73.70 ]
  %inc101.70 = add nuw nsw i32 %i25.0178, 71
  %mul.71 = mul nsw i32 %994, 3
  %div.71 = sdiv i32 %993, 2
  %sub.71 = sub nsw i32 %mul.71, %div.71
  store i32 %sub.71, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.71 = add nsw i32 %sub.71, %994
  %rem32.71 = srem i32 %add31.71, 100
  store i32 %rem32.71, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.71 = or i32 %rem32.71, 1
  %add33.71 = add nsw i32 %or.71, %rem17
  store i32 %add33.71, i32* @main.hot_data.2, align 4, !tbaa !7
  %995 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %add42.71 = add nsw i32 %add33.71, %995
  store i32 %add42.71, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %rem70.71 = urem i32 %inc101.70, 1000
  %cmp71.71 = icmp eq i32 %rem70.71, 0
  br i1 %cmp71.71, label %if.then73.71, label %if.end.72

if.then73.71:                                     ; preds = %if.end.71
  %add74.71 = add nsw i32 %var1.1.70, %rem13
  %call79.71 = tail call i32 @rand() #2
  %rem80.71 = srem i32 %call79.71, 5
  %call88.71 = tail call i32 @rand() #2
  %rem89.71 = srem i32 %call88.71, 100
  %996 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.71 = add nsw i32 %rem89.71, %996
  store i32 %add90.71, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.71 = tail call i32 @rand() #2
  %rem89.1.71 = srem i32 %call88.1.71, 100
  %997 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.71 = add nsw i32 %rem89.1.71, %997
  store i32 %add90.1.71, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.71 = tail call i32 @rand() #2
  %rem89.2.71 = srem i32 %call88.2.71, 100
  %998 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.71 = add nsw i32 %rem89.2.71, %998
  store i32 %add90.2.71, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.71 = tail call i32 @rand() #2
  %rem89.3.71 = srem i32 %call88.3.71, 100
  %999 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.71 = add nsw i32 %rem89.3.71, %999
  store i32 %add90.3.71, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.71 = tail call i32 @rand() #2
  %rem89.4.71 = srem i32 %call88.4.71, 100
  %1000 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.71 = add nsw i32 %rem89.4.71, %1000
  store i32 %add90.4.71, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.71 = tail call i32 @rand() #2
  %rem89.5.71 = srem i32 %call88.5.71, 100
  %1001 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.71 = add nsw i32 %rem89.5.71, %1001
  store i32 %add90.5.71, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.71 = tail call i32 @rand() #2
  %rem89.6.71 = srem i32 %call88.6.71, 100
  %1002 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.71 = add nsw i32 %rem89.6.71, %1002
  store i32 %add90.6.71, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.71 = tail call i32 @rand() #2
  %rem89.7.71 = srem i32 %call88.7.71, 100
  %1003 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.71 = add nsw i32 %rem89.7.71, %1003
  store i32 %add90.7.71, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.71 = tail call i32 @rand() #2
  %rem89.8.71 = srem i32 %call88.8.71, 100
  %1004 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.71 = add nsw i32 %rem89.8.71, %1004
  store i32 %add90.8.71, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.71 = tail call i32 @rand() #2
  %rem89.9.71 = srem i32 %call88.9.71, 100
  %1005 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.71 = add nsw i32 %rem89.9.71, %1005
  store i32 %add90.9.71, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.71 = mul nsw i32 %add74.71, %rem15
  %add81.71 = add nsw i32 %rem80.71, %rem78
  %.pre347 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre348 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then73.71
  %1006 = phi i32 [ %992, %if.end.71 ], [ %add90.9.71, %if.then73.71 ]
  %1007 = phi i32 [ %rem32.71, %if.end.71 ], [ %.pre348, %if.then73.71 ]
  %1008 = phi i32 [ %add33.71, %if.end.71 ], [ %.pre347, %if.then73.71 ]
  %var4.1.71 = phi i32 [ %var4.1.70, %if.end.71 ], [ %mul75.71, %if.then73.71 ]
  %var5.1.71 = phi i32 [ %var5.1.70, %if.end.71 ], [ %rem9, %if.then73.71 ]
  %var1.1.71 = phi i32 [ %var1.1.70, %if.end.71 ], [ %add81.71, %if.then73.71 ]
  %inc101.71 = add nuw nsw i32 %i25.0178, 72
  %mul.72 = mul nsw i32 %1008, 3
  %div.72 = sdiv i32 %1007, 2
  %sub.72 = sub nsw i32 %mul.72, %div.72
  store i32 %sub.72, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.72 = add nsw i32 %sub.72, %1008
  %rem32.72 = srem i32 %add31.72, 100
  store i32 %rem32.72, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.72 = or i32 %rem32.72, 1
  %add33.72 = add nsw i32 %or.72, %rem17
  store i32 %add33.72, i32* @main.hot_data.2, align 4, !tbaa !7
  %1009 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %add42.72 = add nsw i32 %add33.72, %1009
  store i32 %add42.72, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %rem70.72 = urem i32 %inc101.71, 1000
  %cmp71.72 = icmp eq i32 %rem70.72, 0
  br i1 %cmp71.72, label %if.then73.72, label %if.end.73

if.then73.72:                                     ; preds = %if.end.72
  %add74.72 = add nsw i32 %var1.1.71, %rem13
  %call79.72 = tail call i32 @rand() #2
  %rem80.72 = srem i32 %call79.72, 5
  %call88.72 = tail call i32 @rand() #2
  %rem89.72 = srem i32 %call88.72, 100
  %1010 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.72 = add nsw i32 %rem89.72, %1010
  store i32 %add90.72, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.72 = tail call i32 @rand() #2
  %rem89.1.72 = srem i32 %call88.1.72, 100
  %1011 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.72 = add nsw i32 %rem89.1.72, %1011
  store i32 %add90.1.72, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.72 = tail call i32 @rand() #2
  %rem89.2.72 = srem i32 %call88.2.72, 100
  %1012 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.72 = add nsw i32 %rem89.2.72, %1012
  store i32 %add90.2.72, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.72 = tail call i32 @rand() #2
  %rem89.3.72 = srem i32 %call88.3.72, 100
  %1013 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.72 = add nsw i32 %rem89.3.72, %1013
  store i32 %add90.3.72, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.72 = tail call i32 @rand() #2
  %rem89.4.72 = srem i32 %call88.4.72, 100
  %1014 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.72 = add nsw i32 %rem89.4.72, %1014
  store i32 %add90.4.72, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.72 = tail call i32 @rand() #2
  %rem89.5.72 = srem i32 %call88.5.72, 100
  %1015 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.72 = add nsw i32 %rem89.5.72, %1015
  store i32 %add90.5.72, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.72 = tail call i32 @rand() #2
  %rem89.6.72 = srem i32 %call88.6.72, 100
  %1016 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.72 = add nsw i32 %rem89.6.72, %1016
  store i32 %add90.6.72, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.72 = tail call i32 @rand() #2
  %rem89.7.72 = srem i32 %call88.7.72, 100
  %1017 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.72 = add nsw i32 %rem89.7.72, %1017
  store i32 %add90.7.72, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.72 = tail call i32 @rand() #2
  %rem89.8.72 = srem i32 %call88.8.72, 100
  %1018 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.72 = add nsw i32 %rem89.8.72, %1018
  store i32 %add90.8.72, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.72 = tail call i32 @rand() #2
  %rem89.9.72 = srem i32 %call88.9.72, 100
  %1019 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.72 = add nsw i32 %rem89.9.72, %1019
  store i32 %add90.9.72, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.72 = mul nsw i32 %add74.72, %rem15
  %add81.72 = add nsw i32 %rem80.72, %rem78
  %.pre349 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre350 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then73.72
  %1020 = phi i32 [ %1006, %if.end.72 ], [ %add90.9.72, %if.then73.72 ]
  %1021 = phi i32 [ %rem32.72, %if.end.72 ], [ %.pre350, %if.then73.72 ]
  %1022 = phi i32 [ %add33.72, %if.end.72 ], [ %.pre349, %if.then73.72 ]
  %var4.1.72 = phi i32 [ %var4.1.71, %if.end.72 ], [ %mul75.72, %if.then73.72 ]
  %var5.1.72 = phi i32 [ %var5.1.71, %if.end.72 ], [ %rem9, %if.then73.72 ]
  %var1.1.72 = phi i32 [ %var1.1.71, %if.end.72 ], [ %add81.72, %if.then73.72 ]
  %inc101.72 = add nuw nsw i32 %i25.0178, 73
  %mul.73 = mul nsw i32 %1022, 3
  %div.73 = sdiv i32 %1021, 2
  %sub.73 = sub nsw i32 %mul.73, %div.73
  store i32 %sub.73, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.73 = add nsw i32 %sub.73, %1022
  %rem32.73 = srem i32 %add31.73, 100
  store i32 %rem32.73, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.73 = or i32 %rem32.73, 1
  %add33.73 = add nsw i32 %or.73, %rem17
  store i32 %add33.73, i32* @main.hot_data.2, align 4, !tbaa !7
  %1023 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %add42.73 = add nsw i32 %add33.73, %1023
  store i32 %add42.73, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %rem70.73 = urem i32 %inc101.72, 1000
  %cmp71.73 = icmp eq i32 %rem70.73, 0
  br i1 %cmp71.73, label %if.then73.73, label %if.end.74

if.then73.73:                                     ; preds = %if.end.73
  %add74.73 = add nsw i32 %var1.1.72, %rem13
  %call79.73 = tail call i32 @rand() #2
  %rem80.73 = srem i32 %call79.73, 5
  %call88.73 = tail call i32 @rand() #2
  %rem89.73 = srem i32 %call88.73, 100
  %1024 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.73 = add nsw i32 %rem89.73, %1024
  store i32 %add90.73, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.73 = tail call i32 @rand() #2
  %rem89.1.73 = srem i32 %call88.1.73, 100
  %1025 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.73 = add nsw i32 %rem89.1.73, %1025
  store i32 %add90.1.73, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.73 = tail call i32 @rand() #2
  %rem89.2.73 = srem i32 %call88.2.73, 100
  %1026 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.73 = add nsw i32 %rem89.2.73, %1026
  store i32 %add90.2.73, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.73 = tail call i32 @rand() #2
  %rem89.3.73 = srem i32 %call88.3.73, 100
  %1027 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.73 = add nsw i32 %rem89.3.73, %1027
  store i32 %add90.3.73, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.73 = tail call i32 @rand() #2
  %rem89.4.73 = srem i32 %call88.4.73, 100
  %1028 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.73 = add nsw i32 %rem89.4.73, %1028
  store i32 %add90.4.73, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.73 = tail call i32 @rand() #2
  %rem89.5.73 = srem i32 %call88.5.73, 100
  %1029 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.73 = add nsw i32 %rem89.5.73, %1029
  store i32 %add90.5.73, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.73 = tail call i32 @rand() #2
  %rem89.6.73 = srem i32 %call88.6.73, 100
  %1030 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.73 = add nsw i32 %rem89.6.73, %1030
  store i32 %add90.6.73, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.73 = tail call i32 @rand() #2
  %rem89.7.73 = srem i32 %call88.7.73, 100
  %1031 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.73 = add nsw i32 %rem89.7.73, %1031
  store i32 %add90.7.73, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.73 = tail call i32 @rand() #2
  %rem89.8.73 = srem i32 %call88.8.73, 100
  %1032 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.73 = add nsw i32 %rem89.8.73, %1032
  store i32 %add90.8.73, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.73 = tail call i32 @rand() #2
  %rem89.9.73 = srem i32 %call88.9.73, 100
  %1033 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.73 = add nsw i32 %rem89.9.73, %1033
  store i32 %add90.9.73, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.73 = mul nsw i32 %add74.73, %rem15
  %add81.73 = add nsw i32 %rem80.73, %rem78
  %.pre351 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre352 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %if.then73.73
  %1034 = phi i32 [ %1020, %if.end.73 ], [ %add90.9.73, %if.then73.73 ]
  %1035 = phi i32 [ %rem32.73, %if.end.73 ], [ %.pre352, %if.then73.73 ]
  %1036 = phi i32 [ %add33.73, %if.end.73 ], [ %.pre351, %if.then73.73 ]
  %var4.1.73 = phi i32 [ %var4.1.72, %if.end.73 ], [ %mul75.73, %if.then73.73 ]
  %var5.1.73 = phi i32 [ %var5.1.72, %if.end.73 ], [ %rem9, %if.then73.73 ]
  %var1.1.73 = phi i32 [ %var1.1.72, %if.end.73 ], [ %add81.73, %if.then73.73 ]
  %inc101.73 = add nuw nsw i32 %i25.0178, 74
  %mul.74 = mul nsw i32 %1036, 3
  %div.74 = sdiv i32 %1035, 2
  %sub.74 = sub nsw i32 %mul.74, %div.74
  store i32 %sub.74, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.74 = add nsw i32 %sub.74, %1036
  %rem32.74 = srem i32 %add31.74, 100
  store i32 %rem32.74, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.74 = or i32 %rem32.74, 1
  %add33.74 = add nsw i32 %or.74, %rem17
  store i32 %add33.74, i32* @main.hot_data.2, align 4, !tbaa !7
  %1037 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %add42.74 = add nsw i32 %add33.74, %1037
  store i32 %add42.74, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %rem70.74 = urem i32 %inc101.73, 1000
  %cmp71.74 = icmp eq i32 %rem70.74, 0
  br i1 %cmp71.74, label %if.then73.74, label %if.end.75

if.then73.74:                                     ; preds = %if.end.74
  %add74.74 = add nsw i32 %var1.1.73, %rem13
  %call79.74 = tail call i32 @rand() #2
  %rem80.74 = srem i32 %call79.74, 5
  %call88.74 = tail call i32 @rand() #2
  %rem89.74 = srem i32 %call88.74, 100
  %1038 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.74 = add nsw i32 %rem89.74, %1038
  store i32 %add90.74, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.74 = tail call i32 @rand() #2
  %rem89.1.74 = srem i32 %call88.1.74, 100
  %1039 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.74 = add nsw i32 %rem89.1.74, %1039
  store i32 %add90.1.74, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.74 = tail call i32 @rand() #2
  %rem89.2.74 = srem i32 %call88.2.74, 100
  %1040 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.74 = add nsw i32 %rem89.2.74, %1040
  store i32 %add90.2.74, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.74 = tail call i32 @rand() #2
  %rem89.3.74 = srem i32 %call88.3.74, 100
  %1041 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.74 = add nsw i32 %rem89.3.74, %1041
  store i32 %add90.3.74, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.74 = tail call i32 @rand() #2
  %rem89.4.74 = srem i32 %call88.4.74, 100
  %1042 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.74 = add nsw i32 %rem89.4.74, %1042
  store i32 %add90.4.74, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.74 = tail call i32 @rand() #2
  %rem89.5.74 = srem i32 %call88.5.74, 100
  %1043 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.74 = add nsw i32 %rem89.5.74, %1043
  store i32 %add90.5.74, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.74 = tail call i32 @rand() #2
  %rem89.6.74 = srem i32 %call88.6.74, 100
  %1044 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.74 = add nsw i32 %rem89.6.74, %1044
  store i32 %add90.6.74, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.74 = tail call i32 @rand() #2
  %rem89.7.74 = srem i32 %call88.7.74, 100
  %1045 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.74 = add nsw i32 %rem89.7.74, %1045
  store i32 %add90.7.74, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.74 = tail call i32 @rand() #2
  %rem89.8.74 = srem i32 %call88.8.74, 100
  %1046 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.74 = add nsw i32 %rem89.8.74, %1046
  store i32 %add90.8.74, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.74 = tail call i32 @rand() #2
  %rem89.9.74 = srem i32 %call88.9.74, 100
  %1047 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.74 = add nsw i32 %rem89.9.74, %1047
  store i32 %add90.9.74, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.74 = mul nsw i32 %add74.74, %rem15
  %add81.74 = add nsw i32 %rem80.74, %rem78
  %.pre353 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre354 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then73.74
  %1048 = phi i32 [ %1034, %if.end.74 ], [ %add90.9.74, %if.then73.74 ]
  %1049 = phi i32 [ %rem32.74, %if.end.74 ], [ %.pre354, %if.then73.74 ]
  %1050 = phi i32 [ %add33.74, %if.end.74 ], [ %.pre353, %if.then73.74 ]
  %var4.1.74 = phi i32 [ %var4.1.73, %if.end.74 ], [ %mul75.74, %if.then73.74 ]
  %var5.1.74 = phi i32 [ %var5.1.73, %if.end.74 ], [ %rem9, %if.then73.74 ]
  %var1.1.74 = phi i32 [ %var1.1.73, %if.end.74 ], [ %add81.74, %if.then73.74 ]
  %inc101.74 = add nuw nsw i32 %i25.0178, 75
  %mul.75 = mul nsw i32 %1050, 3
  %div.75 = sdiv i32 %1049, 2
  %sub.75 = sub nsw i32 %mul.75, %div.75
  store i32 %sub.75, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.75 = add nsw i32 %sub.75, %1050
  %rem32.75 = srem i32 %add31.75, 100
  store i32 %rem32.75, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.75 = or i32 %rem32.75, 1
  %add33.75 = add nsw i32 %or.75, %rem17
  store i32 %add33.75, i32* @main.hot_data.2, align 4, !tbaa !7
  %1051 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %add42.75 = add nsw i32 %add33.75, %1051
  store i32 %add42.75, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %rem70.75 = urem i32 %inc101.74, 1000
  %cmp71.75 = icmp eq i32 %rem70.75, 0
  br i1 %cmp71.75, label %if.then73.75, label %if.end.76

if.then73.75:                                     ; preds = %if.end.75
  %add74.75 = add nsw i32 %var1.1.74, %rem13
  %call79.75 = tail call i32 @rand() #2
  %rem80.75 = srem i32 %call79.75, 5
  %call88.75 = tail call i32 @rand() #2
  %rem89.75 = srem i32 %call88.75, 100
  %1052 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.75 = add nsw i32 %rem89.75, %1052
  store i32 %add90.75, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.75 = tail call i32 @rand() #2
  %rem89.1.75 = srem i32 %call88.1.75, 100
  %1053 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.75 = add nsw i32 %rem89.1.75, %1053
  store i32 %add90.1.75, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.75 = tail call i32 @rand() #2
  %rem89.2.75 = srem i32 %call88.2.75, 100
  %1054 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.75 = add nsw i32 %rem89.2.75, %1054
  store i32 %add90.2.75, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.75 = tail call i32 @rand() #2
  %rem89.3.75 = srem i32 %call88.3.75, 100
  %1055 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.75 = add nsw i32 %rem89.3.75, %1055
  store i32 %add90.3.75, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.75 = tail call i32 @rand() #2
  %rem89.4.75 = srem i32 %call88.4.75, 100
  %1056 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.75 = add nsw i32 %rem89.4.75, %1056
  store i32 %add90.4.75, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.75 = tail call i32 @rand() #2
  %rem89.5.75 = srem i32 %call88.5.75, 100
  %1057 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.75 = add nsw i32 %rem89.5.75, %1057
  store i32 %add90.5.75, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.75 = tail call i32 @rand() #2
  %rem89.6.75 = srem i32 %call88.6.75, 100
  %1058 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.75 = add nsw i32 %rem89.6.75, %1058
  store i32 %add90.6.75, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.75 = tail call i32 @rand() #2
  %rem89.7.75 = srem i32 %call88.7.75, 100
  %1059 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.75 = add nsw i32 %rem89.7.75, %1059
  store i32 %add90.7.75, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.75 = tail call i32 @rand() #2
  %rem89.8.75 = srem i32 %call88.8.75, 100
  %1060 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.75 = add nsw i32 %rem89.8.75, %1060
  store i32 %add90.8.75, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.75 = tail call i32 @rand() #2
  %rem89.9.75 = srem i32 %call88.9.75, 100
  %1061 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.75 = add nsw i32 %rem89.9.75, %1061
  store i32 %add90.9.75, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.75 = mul nsw i32 %add74.75, %rem15
  %add81.75 = add nsw i32 %rem80.75, %rem78
  %.pre355 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre356 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then73.75
  %1062 = phi i32 [ %1048, %if.end.75 ], [ %add90.9.75, %if.then73.75 ]
  %1063 = phi i32 [ %rem32.75, %if.end.75 ], [ %.pre356, %if.then73.75 ]
  %1064 = phi i32 [ %add33.75, %if.end.75 ], [ %.pre355, %if.then73.75 ]
  %var4.1.75 = phi i32 [ %var4.1.74, %if.end.75 ], [ %mul75.75, %if.then73.75 ]
  %var5.1.75 = phi i32 [ %var5.1.74, %if.end.75 ], [ %rem9, %if.then73.75 ]
  %var1.1.75 = phi i32 [ %var1.1.74, %if.end.75 ], [ %add81.75, %if.then73.75 ]
  %inc101.75 = add nuw nsw i32 %i25.0178, 76
  %mul.76 = mul nsw i32 %1064, 3
  %div.76 = sdiv i32 %1063, 2
  %sub.76 = sub nsw i32 %mul.76, %div.76
  store i32 %sub.76, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.76 = add nsw i32 %sub.76, %1064
  %rem32.76 = srem i32 %add31.76, 100
  store i32 %rem32.76, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.76 = or i32 %rem32.76, 1
  %add33.76 = add nsw i32 %or.76, %rem17
  store i32 %add33.76, i32* @main.hot_data.2, align 4, !tbaa !7
  %1065 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %add42.76 = add nsw i32 %add33.76, %1065
  store i32 %add42.76, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %rem70.76 = urem i32 %inc101.75, 1000
  %cmp71.76 = icmp eq i32 %rem70.76, 0
  br i1 %cmp71.76, label %if.then73.76, label %if.end.77

if.then73.76:                                     ; preds = %if.end.76
  %add74.76 = add nsw i32 %var1.1.75, %rem13
  %call79.76 = tail call i32 @rand() #2
  %rem80.76 = srem i32 %call79.76, 5
  %call88.76 = tail call i32 @rand() #2
  %rem89.76 = srem i32 %call88.76, 100
  %1066 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.76 = add nsw i32 %rem89.76, %1066
  store i32 %add90.76, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.76 = tail call i32 @rand() #2
  %rem89.1.76 = srem i32 %call88.1.76, 100
  %1067 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.76 = add nsw i32 %rem89.1.76, %1067
  store i32 %add90.1.76, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.76 = tail call i32 @rand() #2
  %rem89.2.76 = srem i32 %call88.2.76, 100
  %1068 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.76 = add nsw i32 %rem89.2.76, %1068
  store i32 %add90.2.76, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.76 = tail call i32 @rand() #2
  %rem89.3.76 = srem i32 %call88.3.76, 100
  %1069 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.76 = add nsw i32 %rem89.3.76, %1069
  store i32 %add90.3.76, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.76 = tail call i32 @rand() #2
  %rem89.4.76 = srem i32 %call88.4.76, 100
  %1070 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.76 = add nsw i32 %rem89.4.76, %1070
  store i32 %add90.4.76, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.76 = tail call i32 @rand() #2
  %rem89.5.76 = srem i32 %call88.5.76, 100
  %1071 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.76 = add nsw i32 %rem89.5.76, %1071
  store i32 %add90.5.76, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.76 = tail call i32 @rand() #2
  %rem89.6.76 = srem i32 %call88.6.76, 100
  %1072 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.76 = add nsw i32 %rem89.6.76, %1072
  store i32 %add90.6.76, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.76 = tail call i32 @rand() #2
  %rem89.7.76 = srem i32 %call88.7.76, 100
  %1073 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.76 = add nsw i32 %rem89.7.76, %1073
  store i32 %add90.7.76, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.76 = tail call i32 @rand() #2
  %rem89.8.76 = srem i32 %call88.8.76, 100
  %1074 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.76 = add nsw i32 %rem89.8.76, %1074
  store i32 %add90.8.76, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.76 = tail call i32 @rand() #2
  %rem89.9.76 = srem i32 %call88.9.76, 100
  %1075 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.76 = add nsw i32 %rem89.9.76, %1075
  store i32 %add90.9.76, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.76 = mul nsw i32 %add74.76, %rem15
  %add81.76 = add nsw i32 %rem80.76, %rem78
  %.pre357 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre358 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then73.76
  %1076 = phi i32 [ %1062, %if.end.76 ], [ %add90.9.76, %if.then73.76 ]
  %1077 = phi i32 [ %rem32.76, %if.end.76 ], [ %.pre358, %if.then73.76 ]
  %1078 = phi i32 [ %add33.76, %if.end.76 ], [ %.pre357, %if.then73.76 ]
  %var4.1.76 = phi i32 [ %var4.1.75, %if.end.76 ], [ %mul75.76, %if.then73.76 ]
  %var5.1.76 = phi i32 [ %var5.1.75, %if.end.76 ], [ %rem9, %if.then73.76 ]
  %var1.1.76 = phi i32 [ %var1.1.75, %if.end.76 ], [ %add81.76, %if.then73.76 ]
  %inc101.76 = add nuw nsw i32 %i25.0178, 77
  %mul.77 = mul nsw i32 %1078, 3
  %div.77 = sdiv i32 %1077, 2
  %sub.77 = sub nsw i32 %mul.77, %div.77
  store i32 %sub.77, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.77 = add nsw i32 %sub.77, %1078
  %rem32.77 = srem i32 %add31.77, 100
  store i32 %rem32.77, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.77 = or i32 %rem32.77, 1
  %add33.77 = add nsw i32 %or.77, %rem17
  store i32 %add33.77, i32* @main.hot_data.2, align 4, !tbaa !7
  %1079 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %add42.77 = add nsw i32 %add33.77, %1079
  store i32 %add42.77, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %rem70.77 = urem i32 %inc101.76, 1000
  %cmp71.77 = icmp eq i32 %rem70.77, 0
  br i1 %cmp71.77, label %if.then73.77, label %if.end.78

if.then73.77:                                     ; preds = %if.end.77
  %add74.77 = add nsw i32 %var1.1.76, %rem13
  %call79.77 = tail call i32 @rand() #2
  %rem80.77 = srem i32 %call79.77, 5
  %call88.77 = tail call i32 @rand() #2
  %rem89.77 = srem i32 %call88.77, 100
  %1080 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.77 = add nsw i32 %rem89.77, %1080
  store i32 %add90.77, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.77 = tail call i32 @rand() #2
  %rem89.1.77 = srem i32 %call88.1.77, 100
  %1081 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.77 = add nsw i32 %rem89.1.77, %1081
  store i32 %add90.1.77, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.77 = tail call i32 @rand() #2
  %rem89.2.77 = srem i32 %call88.2.77, 100
  %1082 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.77 = add nsw i32 %rem89.2.77, %1082
  store i32 %add90.2.77, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.77 = tail call i32 @rand() #2
  %rem89.3.77 = srem i32 %call88.3.77, 100
  %1083 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.77 = add nsw i32 %rem89.3.77, %1083
  store i32 %add90.3.77, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.77 = tail call i32 @rand() #2
  %rem89.4.77 = srem i32 %call88.4.77, 100
  %1084 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.77 = add nsw i32 %rem89.4.77, %1084
  store i32 %add90.4.77, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.77 = tail call i32 @rand() #2
  %rem89.5.77 = srem i32 %call88.5.77, 100
  %1085 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.77 = add nsw i32 %rem89.5.77, %1085
  store i32 %add90.5.77, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.77 = tail call i32 @rand() #2
  %rem89.6.77 = srem i32 %call88.6.77, 100
  %1086 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.77 = add nsw i32 %rem89.6.77, %1086
  store i32 %add90.6.77, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.77 = tail call i32 @rand() #2
  %rem89.7.77 = srem i32 %call88.7.77, 100
  %1087 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.77 = add nsw i32 %rem89.7.77, %1087
  store i32 %add90.7.77, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.77 = tail call i32 @rand() #2
  %rem89.8.77 = srem i32 %call88.8.77, 100
  %1088 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.77 = add nsw i32 %rem89.8.77, %1088
  store i32 %add90.8.77, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.77 = tail call i32 @rand() #2
  %rem89.9.77 = srem i32 %call88.9.77, 100
  %1089 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.77 = add nsw i32 %rem89.9.77, %1089
  store i32 %add90.9.77, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.77 = mul nsw i32 %add74.77, %rem15
  %add81.77 = add nsw i32 %rem80.77, %rem78
  %.pre359 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre360 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then73.77
  %1090 = phi i32 [ %1076, %if.end.77 ], [ %add90.9.77, %if.then73.77 ]
  %1091 = phi i32 [ %rem32.77, %if.end.77 ], [ %.pre360, %if.then73.77 ]
  %1092 = phi i32 [ %add33.77, %if.end.77 ], [ %.pre359, %if.then73.77 ]
  %var4.1.77 = phi i32 [ %var4.1.76, %if.end.77 ], [ %mul75.77, %if.then73.77 ]
  %var5.1.77 = phi i32 [ %var5.1.76, %if.end.77 ], [ %rem9, %if.then73.77 ]
  %var1.1.77 = phi i32 [ %var1.1.76, %if.end.77 ], [ %add81.77, %if.then73.77 ]
  %inc101.77 = add nuw nsw i32 %i25.0178, 78
  %mul.78 = mul nsw i32 %1092, 3
  %div.78 = sdiv i32 %1091, 2
  %sub.78 = sub nsw i32 %mul.78, %div.78
  store i32 %sub.78, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.78 = add nsw i32 %sub.78, %1092
  %rem32.78 = srem i32 %add31.78, 100
  store i32 %rem32.78, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.78 = or i32 %rem32.78, 1
  %add33.78 = add nsw i32 %or.78, %rem17
  store i32 %add33.78, i32* @main.hot_data.2, align 4, !tbaa !7
  %1093 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %add42.78 = add nsw i32 %add33.78, %1093
  store i32 %add42.78, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %rem70.78 = urem i32 %inc101.77, 1000
  %cmp71.78 = icmp eq i32 %rem70.78, 0
  br i1 %cmp71.78, label %if.then73.78, label %if.end.79

if.then73.78:                                     ; preds = %if.end.78
  %add74.78 = add nsw i32 %var1.1.77, %rem13
  %call79.78 = tail call i32 @rand() #2
  %rem80.78 = srem i32 %call79.78, 5
  %call88.78 = tail call i32 @rand() #2
  %rem89.78 = srem i32 %call88.78, 100
  %1094 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.78 = add nsw i32 %rem89.78, %1094
  store i32 %add90.78, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.78 = tail call i32 @rand() #2
  %rem89.1.78 = srem i32 %call88.1.78, 100
  %1095 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.78 = add nsw i32 %rem89.1.78, %1095
  store i32 %add90.1.78, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.78 = tail call i32 @rand() #2
  %rem89.2.78 = srem i32 %call88.2.78, 100
  %1096 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.78 = add nsw i32 %rem89.2.78, %1096
  store i32 %add90.2.78, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.78 = tail call i32 @rand() #2
  %rem89.3.78 = srem i32 %call88.3.78, 100
  %1097 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.78 = add nsw i32 %rem89.3.78, %1097
  store i32 %add90.3.78, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.78 = tail call i32 @rand() #2
  %rem89.4.78 = srem i32 %call88.4.78, 100
  %1098 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.78 = add nsw i32 %rem89.4.78, %1098
  store i32 %add90.4.78, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.78 = tail call i32 @rand() #2
  %rem89.5.78 = srem i32 %call88.5.78, 100
  %1099 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.78 = add nsw i32 %rem89.5.78, %1099
  store i32 %add90.5.78, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.78 = tail call i32 @rand() #2
  %rem89.6.78 = srem i32 %call88.6.78, 100
  %1100 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.78 = add nsw i32 %rem89.6.78, %1100
  store i32 %add90.6.78, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.78 = tail call i32 @rand() #2
  %rem89.7.78 = srem i32 %call88.7.78, 100
  %1101 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.78 = add nsw i32 %rem89.7.78, %1101
  store i32 %add90.7.78, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.78 = tail call i32 @rand() #2
  %rem89.8.78 = srem i32 %call88.8.78, 100
  %1102 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.78 = add nsw i32 %rem89.8.78, %1102
  store i32 %add90.8.78, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.78 = tail call i32 @rand() #2
  %rem89.9.78 = srem i32 %call88.9.78, 100
  %1103 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.78 = add nsw i32 %rem89.9.78, %1103
  store i32 %add90.9.78, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.78 = mul nsw i32 %add74.78, %rem15
  %add81.78 = add nsw i32 %rem80.78, %rem78
  %.pre361 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre362 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then73.78
  %1104 = phi i32 [ %1090, %if.end.78 ], [ %add90.9.78, %if.then73.78 ]
  %1105 = phi i32 [ %rem32.78, %if.end.78 ], [ %.pre362, %if.then73.78 ]
  %1106 = phi i32 [ %add33.78, %if.end.78 ], [ %.pre361, %if.then73.78 ]
  %var4.1.78 = phi i32 [ %var4.1.77, %if.end.78 ], [ %mul75.78, %if.then73.78 ]
  %var5.1.78 = phi i32 [ %var5.1.77, %if.end.78 ], [ %rem9, %if.then73.78 ]
  %var1.1.78 = phi i32 [ %var1.1.77, %if.end.78 ], [ %add81.78, %if.then73.78 ]
  %inc101.78 = add nuw nsw i32 %i25.0178, 79
  %mul.79 = mul nsw i32 %1106, 3
  %div.79 = sdiv i32 %1105, 2
  %sub.79 = sub nsw i32 %mul.79, %div.79
  store i32 %sub.79, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.79 = add nsw i32 %sub.79, %1106
  %rem32.79 = srem i32 %add31.79, 100
  store i32 %rem32.79, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.79 = or i32 %rem32.79, 1
  %add33.79 = add nsw i32 %or.79, %rem17
  store i32 %add33.79, i32* @main.hot_data.2, align 4, !tbaa !7
  %add42.79 = add nsw i32 %add33.79, %1104
  store i32 %add42.79, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %rem70.79 = urem i32 %inc101.78, 1000
  %cmp71.79 = icmp eq i32 %rem70.79, 0
  br i1 %cmp71.79, label %if.then73.79, label %if.end.80

if.then73.79:                                     ; preds = %if.end.79
  %add74.79 = add nsw i32 %var1.1.78, %rem13
  %call79.79 = tail call i32 @rand() #2
  %rem80.79 = srem i32 %call79.79, 5
  %call88.79 = tail call i32 @rand() #2
  %rem89.79 = srem i32 %call88.79, 100
  %1107 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.79 = add nsw i32 %rem89.79, %1107
  store i32 %add90.79, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.79 = tail call i32 @rand() #2
  %rem89.1.79 = srem i32 %call88.1.79, 100
  %1108 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.79 = add nsw i32 %rem89.1.79, %1108
  store i32 %add90.1.79, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.79 = tail call i32 @rand() #2
  %rem89.2.79 = srem i32 %call88.2.79, 100
  %1109 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.79 = add nsw i32 %rem89.2.79, %1109
  store i32 %add90.2.79, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.79 = tail call i32 @rand() #2
  %rem89.3.79 = srem i32 %call88.3.79, 100
  %1110 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.79 = add nsw i32 %rem89.3.79, %1110
  store i32 %add90.3.79, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.79 = tail call i32 @rand() #2
  %rem89.4.79 = srem i32 %call88.4.79, 100
  %1111 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.79 = add nsw i32 %rem89.4.79, %1111
  store i32 %add90.4.79, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.79 = tail call i32 @rand() #2
  %rem89.5.79 = srem i32 %call88.5.79, 100
  %1112 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.79 = add nsw i32 %rem89.5.79, %1112
  store i32 %add90.5.79, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.79 = tail call i32 @rand() #2
  %rem89.6.79 = srem i32 %call88.6.79, 100
  %1113 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.79 = add nsw i32 %rem89.6.79, %1113
  store i32 %add90.6.79, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.79 = tail call i32 @rand() #2
  %rem89.7.79 = srem i32 %call88.7.79, 100
  %1114 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.79 = add nsw i32 %rem89.7.79, %1114
  store i32 %add90.7.79, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.79 = tail call i32 @rand() #2
  %rem89.8.79 = srem i32 %call88.8.79, 100
  %1115 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.79 = add nsw i32 %rem89.8.79, %1115
  store i32 %add90.8.79, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.79 = tail call i32 @rand() #2
  %rem89.9.79 = srem i32 %call88.9.79, 100
  %1116 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.79 = add nsw i32 %rem89.9.79, %1116
  store i32 %add90.9.79, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.79 = mul nsw i32 %add74.79, %rem15
  %add81.79 = add nsw i32 %rem80.79, %rem78
  %.pre363 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre364 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.then73.79
  %1117 = phi i32 [ %add42.79, %if.end.79 ], [ %add90.9.79, %if.then73.79 ]
  %1118 = phi i32 [ %rem32.79, %if.end.79 ], [ %.pre364, %if.then73.79 ]
  %1119 = phi i32 [ %add33.79, %if.end.79 ], [ %.pre363, %if.then73.79 ]
  %var4.1.79 = phi i32 [ %var4.1.78, %if.end.79 ], [ %mul75.79, %if.then73.79 ]
  %var5.1.79 = phi i32 [ %var5.1.78, %if.end.79 ], [ %rem9, %if.then73.79 ]
  %var1.1.79 = phi i32 [ %var1.1.78, %if.end.79 ], [ %add81.79, %if.then73.79 ]
  %inc101.79 = add nuw nsw i32 %i25.0178, 80
  %mul.80 = mul nsw i32 %1119, 3
  %div.80 = sdiv i32 %1118, 2
  %sub.80 = sub nsw i32 %mul.80, %div.80
  store i32 %sub.80, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.80 = add nsw i32 %sub.80, %1119
  %rem32.80 = srem i32 %add31.80, 100
  store i32 %rem32.80, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.80 = or i32 %rem32.80, 1
  %add33.80 = add nsw i32 %or.80, %rem17
  store i32 %add33.80, i32* @main.hot_data.2, align 4, !tbaa !7
  %1120 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %add42.80 = add nsw i32 %add33.80, %1120
  store i32 %add42.80, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %rem70.80 = urem i32 %inc101.79, 1000
  %cmp71.80 = icmp eq i32 %rem70.80, 0
  br i1 %cmp71.80, label %if.then73.80, label %if.end.81

if.then73.80:                                     ; preds = %if.end.80
  %add74.80 = add nsw i32 %var1.1.79, %rem13
  %call79.80 = tail call i32 @rand() #2
  %rem80.80 = srem i32 %call79.80, 5
  %call88.80 = tail call i32 @rand() #2
  %rem89.80 = srem i32 %call88.80, 100
  %1121 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.80 = add nsw i32 %rem89.80, %1121
  store i32 %add90.80, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.80 = tail call i32 @rand() #2
  %rem89.1.80 = srem i32 %call88.1.80, 100
  %1122 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.80 = add nsw i32 %rem89.1.80, %1122
  store i32 %add90.1.80, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.80 = tail call i32 @rand() #2
  %rem89.2.80 = srem i32 %call88.2.80, 100
  %1123 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.80 = add nsw i32 %rem89.2.80, %1123
  store i32 %add90.2.80, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.80 = tail call i32 @rand() #2
  %rem89.3.80 = srem i32 %call88.3.80, 100
  %1124 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.80 = add nsw i32 %rem89.3.80, %1124
  store i32 %add90.3.80, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.80 = tail call i32 @rand() #2
  %rem89.4.80 = srem i32 %call88.4.80, 100
  %1125 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.80 = add nsw i32 %rem89.4.80, %1125
  store i32 %add90.4.80, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.80 = tail call i32 @rand() #2
  %rem89.5.80 = srem i32 %call88.5.80, 100
  %1126 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.80 = add nsw i32 %rem89.5.80, %1126
  store i32 %add90.5.80, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.80 = tail call i32 @rand() #2
  %rem89.6.80 = srem i32 %call88.6.80, 100
  %1127 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.80 = add nsw i32 %rem89.6.80, %1127
  store i32 %add90.6.80, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.80 = tail call i32 @rand() #2
  %rem89.7.80 = srem i32 %call88.7.80, 100
  %1128 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.80 = add nsw i32 %rem89.7.80, %1128
  store i32 %add90.7.80, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.80 = tail call i32 @rand() #2
  %rem89.8.80 = srem i32 %call88.8.80, 100
  %1129 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.80 = add nsw i32 %rem89.8.80, %1129
  store i32 %add90.8.80, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.80 = tail call i32 @rand() #2
  %rem89.9.80 = srem i32 %call88.9.80, 100
  %1130 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.80 = add nsw i32 %rem89.9.80, %1130
  store i32 %add90.9.80, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.80 = mul nsw i32 %add74.80, %rem15
  %add81.80 = add nsw i32 %rem80.80, %rem78
  %.pre365 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre366 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.then73.80
  %1131 = phi i32 [ %1117, %if.end.80 ], [ %add90.9.80, %if.then73.80 ]
  %1132 = phi i32 [ %rem32.80, %if.end.80 ], [ %.pre366, %if.then73.80 ]
  %1133 = phi i32 [ %add33.80, %if.end.80 ], [ %.pre365, %if.then73.80 ]
  %var4.1.80 = phi i32 [ %var4.1.79, %if.end.80 ], [ %mul75.80, %if.then73.80 ]
  %var5.1.80 = phi i32 [ %var5.1.79, %if.end.80 ], [ %rem9, %if.then73.80 ]
  %var1.1.80 = phi i32 [ %var1.1.79, %if.end.80 ], [ %add81.80, %if.then73.80 ]
  %inc101.80 = add nuw nsw i32 %i25.0178, 81
  %mul.81 = mul nsw i32 %1133, 3
  %div.81 = sdiv i32 %1132, 2
  %sub.81 = sub nsw i32 %mul.81, %div.81
  store i32 %sub.81, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.81 = add nsw i32 %sub.81, %1133
  %rem32.81 = srem i32 %add31.81, 100
  store i32 %rem32.81, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.81 = or i32 %rem32.81, 1
  %add33.81 = add nsw i32 %or.81, %rem17
  store i32 %add33.81, i32* @main.hot_data.2, align 4, !tbaa !7
  %1134 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %add42.81 = add nsw i32 %add33.81, %1134
  store i32 %add42.81, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %rem70.81 = urem i32 %inc101.80, 1000
  %cmp71.81 = icmp eq i32 %rem70.81, 0
  br i1 %cmp71.81, label %if.then73.81, label %if.end.82

if.then73.81:                                     ; preds = %if.end.81
  %add74.81 = add nsw i32 %var1.1.80, %rem13
  %call79.81 = tail call i32 @rand() #2
  %rem80.81 = srem i32 %call79.81, 5
  %call88.81 = tail call i32 @rand() #2
  %rem89.81 = srem i32 %call88.81, 100
  %1135 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.81 = add nsw i32 %rem89.81, %1135
  store i32 %add90.81, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.81 = tail call i32 @rand() #2
  %rem89.1.81 = srem i32 %call88.1.81, 100
  %1136 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.81 = add nsw i32 %rem89.1.81, %1136
  store i32 %add90.1.81, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.81 = tail call i32 @rand() #2
  %rem89.2.81 = srem i32 %call88.2.81, 100
  %1137 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.81 = add nsw i32 %rem89.2.81, %1137
  store i32 %add90.2.81, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.81 = tail call i32 @rand() #2
  %rem89.3.81 = srem i32 %call88.3.81, 100
  %1138 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.81 = add nsw i32 %rem89.3.81, %1138
  store i32 %add90.3.81, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.81 = tail call i32 @rand() #2
  %rem89.4.81 = srem i32 %call88.4.81, 100
  %1139 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.81 = add nsw i32 %rem89.4.81, %1139
  store i32 %add90.4.81, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.81 = tail call i32 @rand() #2
  %rem89.5.81 = srem i32 %call88.5.81, 100
  %1140 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.81 = add nsw i32 %rem89.5.81, %1140
  store i32 %add90.5.81, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.81 = tail call i32 @rand() #2
  %rem89.6.81 = srem i32 %call88.6.81, 100
  %1141 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.81 = add nsw i32 %rem89.6.81, %1141
  store i32 %add90.6.81, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.81 = tail call i32 @rand() #2
  %rem89.7.81 = srem i32 %call88.7.81, 100
  %1142 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.81 = add nsw i32 %rem89.7.81, %1142
  store i32 %add90.7.81, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.81 = tail call i32 @rand() #2
  %rem89.8.81 = srem i32 %call88.8.81, 100
  %1143 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.81 = add nsw i32 %rem89.8.81, %1143
  store i32 %add90.8.81, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.81 = tail call i32 @rand() #2
  %rem89.9.81 = srem i32 %call88.9.81, 100
  %1144 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.81 = add nsw i32 %rem89.9.81, %1144
  store i32 %add90.9.81, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.81 = mul nsw i32 %add74.81, %rem15
  %add81.81 = add nsw i32 %rem80.81, %rem78
  %.pre367 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre368 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then73.81
  %1145 = phi i32 [ %1131, %if.end.81 ], [ %add90.9.81, %if.then73.81 ]
  %1146 = phi i32 [ %rem32.81, %if.end.81 ], [ %.pre368, %if.then73.81 ]
  %1147 = phi i32 [ %add33.81, %if.end.81 ], [ %.pre367, %if.then73.81 ]
  %var4.1.81 = phi i32 [ %var4.1.80, %if.end.81 ], [ %mul75.81, %if.then73.81 ]
  %var5.1.81 = phi i32 [ %var5.1.80, %if.end.81 ], [ %rem9, %if.then73.81 ]
  %var1.1.81 = phi i32 [ %var1.1.80, %if.end.81 ], [ %add81.81, %if.then73.81 ]
  %inc101.81 = add nuw nsw i32 %i25.0178, 82
  %mul.82 = mul nsw i32 %1147, 3
  %div.82 = sdiv i32 %1146, 2
  %sub.82 = sub nsw i32 %mul.82, %div.82
  store i32 %sub.82, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.82 = add nsw i32 %sub.82, %1147
  %rem32.82 = srem i32 %add31.82, 100
  store i32 %rem32.82, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.82 = or i32 %rem32.82, 1
  %add33.82 = add nsw i32 %or.82, %rem17
  store i32 %add33.82, i32* @main.hot_data.2, align 4, !tbaa !7
  %1148 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %add42.82 = add nsw i32 %add33.82, %1148
  store i32 %add42.82, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %rem70.82 = urem i32 %inc101.81, 1000
  %cmp71.82 = icmp eq i32 %rem70.82, 0
  br i1 %cmp71.82, label %if.then73.82, label %if.end.83

if.then73.82:                                     ; preds = %if.end.82
  %add74.82 = add nsw i32 %var1.1.81, %rem13
  %call79.82 = tail call i32 @rand() #2
  %rem80.82 = srem i32 %call79.82, 5
  %call88.82 = tail call i32 @rand() #2
  %rem89.82 = srem i32 %call88.82, 100
  %1149 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.82 = add nsw i32 %rem89.82, %1149
  store i32 %add90.82, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.82 = tail call i32 @rand() #2
  %rem89.1.82 = srem i32 %call88.1.82, 100
  %1150 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.82 = add nsw i32 %rem89.1.82, %1150
  store i32 %add90.1.82, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.82 = tail call i32 @rand() #2
  %rem89.2.82 = srem i32 %call88.2.82, 100
  %1151 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.82 = add nsw i32 %rem89.2.82, %1151
  store i32 %add90.2.82, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.82 = tail call i32 @rand() #2
  %rem89.3.82 = srem i32 %call88.3.82, 100
  %1152 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.82 = add nsw i32 %rem89.3.82, %1152
  store i32 %add90.3.82, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.82 = tail call i32 @rand() #2
  %rem89.4.82 = srem i32 %call88.4.82, 100
  %1153 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.82 = add nsw i32 %rem89.4.82, %1153
  store i32 %add90.4.82, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.82 = tail call i32 @rand() #2
  %rem89.5.82 = srem i32 %call88.5.82, 100
  %1154 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.82 = add nsw i32 %rem89.5.82, %1154
  store i32 %add90.5.82, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.82 = tail call i32 @rand() #2
  %rem89.6.82 = srem i32 %call88.6.82, 100
  %1155 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.82 = add nsw i32 %rem89.6.82, %1155
  store i32 %add90.6.82, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.82 = tail call i32 @rand() #2
  %rem89.7.82 = srem i32 %call88.7.82, 100
  %1156 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.82 = add nsw i32 %rem89.7.82, %1156
  store i32 %add90.7.82, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.82 = tail call i32 @rand() #2
  %rem89.8.82 = srem i32 %call88.8.82, 100
  %1157 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.82 = add nsw i32 %rem89.8.82, %1157
  store i32 %add90.8.82, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.82 = tail call i32 @rand() #2
  %rem89.9.82 = srem i32 %call88.9.82, 100
  %1158 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.82 = add nsw i32 %rem89.9.82, %1158
  store i32 %add90.9.82, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.82 = mul nsw i32 %add74.82, %rem15
  %add81.82 = add nsw i32 %rem80.82, %rem78
  %.pre369 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre370 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then73.82
  %1159 = phi i32 [ %1145, %if.end.82 ], [ %add90.9.82, %if.then73.82 ]
  %1160 = phi i32 [ %rem32.82, %if.end.82 ], [ %.pre370, %if.then73.82 ]
  %1161 = phi i32 [ %add33.82, %if.end.82 ], [ %.pre369, %if.then73.82 ]
  %var4.1.82 = phi i32 [ %var4.1.81, %if.end.82 ], [ %mul75.82, %if.then73.82 ]
  %var5.1.82 = phi i32 [ %var5.1.81, %if.end.82 ], [ %rem9, %if.then73.82 ]
  %var1.1.82 = phi i32 [ %var1.1.81, %if.end.82 ], [ %add81.82, %if.then73.82 ]
  %inc101.82 = add nuw nsw i32 %i25.0178, 83
  %mul.83 = mul nsw i32 %1161, 3
  %div.83 = sdiv i32 %1160, 2
  %sub.83 = sub nsw i32 %mul.83, %div.83
  store i32 %sub.83, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.83 = add nsw i32 %sub.83, %1161
  %rem32.83 = srem i32 %add31.83, 100
  store i32 %rem32.83, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.83 = or i32 %rem32.83, 1
  %add33.83 = add nsw i32 %or.83, %rem17
  store i32 %add33.83, i32* @main.hot_data.2, align 4, !tbaa !7
  %1162 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %add42.83 = add nsw i32 %add33.83, %1162
  store i32 %add42.83, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %rem70.83 = urem i32 %inc101.82, 1000
  %cmp71.83 = icmp eq i32 %rem70.83, 0
  br i1 %cmp71.83, label %if.then73.83, label %if.end.84

if.then73.83:                                     ; preds = %if.end.83
  %add74.83 = add nsw i32 %var1.1.82, %rem13
  %call79.83 = tail call i32 @rand() #2
  %rem80.83 = srem i32 %call79.83, 5
  %call88.83 = tail call i32 @rand() #2
  %rem89.83 = srem i32 %call88.83, 100
  %1163 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.83 = add nsw i32 %rem89.83, %1163
  store i32 %add90.83, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.83 = tail call i32 @rand() #2
  %rem89.1.83 = srem i32 %call88.1.83, 100
  %1164 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.83 = add nsw i32 %rem89.1.83, %1164
  store i32 %add90.1.83, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.83 = tail call i32 @rand() #2
  %rem89.2.83 = srem i32 %call88.2.83, 100
  %1165 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.83 = add nsw i32 %rem89.2.83, %1165
  store i32 %add90.2.83, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.83 = tail call i32 @rand() #2
  %rem89.3.83 = srem i32 %call88.3.83, 100
  %1166 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.83 = add nsw i32 %rem89.3.83, %1166
  store i32 %add90.3.83, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.83 = tail call i32 @rand() #2
  %rem89.4.83 = srem i32 %call88.4.83, 100
  %1167 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.83 = add nsw i32 %rem89.4.83, %1167
  store i32 %add90.4.83, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.83 = tail call i32 @rand() #2
  %rem89.5.83 = srem i32 %call88.5.83, 100
  %1168 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.83 = add nsw i32 %rem89.5.83, %1168
  store i32 %add90.5.83, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.83 = tail call i32 @rand() #2
  %rem89.6.83 = srem i32 %call88.6.83, 100
  %1169 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.83 = add nsw i32 %rem89.6.83, %1169
  store i32 %add90.6.83, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.83 = tail call i32 @rand() #2
  %rem89.7.83 = srem i32 %call88.7.83, 100
  %1170 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.83 = add nsw i32 %rem89.7.83, %1170
  store i32 %add90.7.83, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.83 = tail call i32 @rand() #2
  %rem89.8.83 = srem i32 %call88.8.83, 100
  %1171 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.83 = add nsw i32 %rem89.8.83, %1171
  store i32 %add90.8.83, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.83 = tail call i32 @rand() #2
  %rem89.9.83 = srem i32 %call88.9.83, 100
  %1172 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.83 = add nsw i32 %rem89.9.83, %1172
  store i32 %add90.9.83, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.83 = mul nsw i32 %add74.83, %rem15
  %add81.83 = add nsw i32 %rem80.83, %rem78
  %.pre371 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre372 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then73.83
  %1173 = phi i32 [ %1159, %if.end.83 ], [ %add90.9.83, %if.then73.83 ]
  %1174 = phi i32 [ %rem32.83, %if.end.83 ], [ %.pre372, %if.then73.83 ]
  %1175 = phi i32 [ %add33.83, %if.end.83 ], [ %.pre371, %if.then73.83 ]
  %var4.1.83 = phi i32 [ %var4.1.82, %if.end.83 ], [ %mul75.83, %if.then73.83 ]
  %var5.1.83 = phi i32 [ %var5.1.82, %if.end.83 ], [ %rem9, %if.then73.83 ]
  %var1.1.83 = phi i32 [ %var1.1.82, %if.end.83 ], [ %add81.83, %if.then73.83 ]
  %inc101.83 = add nuw nsw i32 %i25.0178, 84
  %mul.84 = mul nsw i32 %1175, 3
  %div.84 = sdiv i32 %1174, 2
  %sub.84 = sub nsw i32 %mul.84, %div.84
  store i32 %sub.84, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.84 = add nsw i32 %sub.84, %1175
  %rem32.84 = srem i32 %add31.84, 100
  store i32 %rem32.84, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.84 = or i32 %rem32.84, 1
  %add33.84 = add nsw i32 %or.84, %rem17
  store i32 %add33.84, i32* @main.hot_data.2, align 4, !tbaa !7
  %1176 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %add42.84 = add nsw i32 %add33.84, %1176
  store i32 %add42.84, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %rem70.84 = urem i32 %inc101.83, 1000
  %cmp71.84 = icmp eq i32 %rem70.84, 0
  br i1 %cmp71.84, label %if.then73.84, label %if.end.85

if.then73.84:                                     ; preds = %if.end.84
  %add74.84 = add nsw i32 %var1.1.83, %rem13
  %call79.84 = tail call i32 @rand() #2
  %rem80.84 = srem i32 %call79.84, 5
  %call88.84 = tail call i32 @rand() #2
  %rem89.84 = srem i32 %call88.84, 100
  %1177 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.84 = add nsw i32 %rem89.84, %1177
  store i32 %add90.84, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.84 = tail call i32 @rand() #2
  %rem89.1.84 = srem i32 %call88.1.84, 100
  %1178 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.84 = add nsw i32 %rem89.1.84, %1178
  store i32 %add90.1.84, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.84 = tail call i32 @rand() #2
  %rem89.2.84 = srem i32 %call88.2.84, 100
  %1179 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.84 = add nsw i32 %rem89.2.84, %1179
  store i32 %add90.2.84, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.84 = tail call i32 @rand() #2
  %rem89.3.84 = srem i32 %call88.3.84, 100
  %1180 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.84 = add nsw i32 %rem89.3.84, %1180
  store i32 %add90.3.84, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.84 = tail call i32 @rand() #2
  %rem89.4.84 = srem i32 %call88.4.84, 100
  %1181 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.84 = add nsw i32 %rem89.4.84, %1181
  store i32 %add90.4.84, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.84 = tail call i32 @rand() #2
  %rem89.5.84 = srem i32 %call88.5.84, 100
  %1182 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.84 = add nsw i32 %rem89.5.84, %1182
  store i32 %add90.5.84, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.84 = tail call i32 @rand() #2
  %rem89.6.84 = srem i32 %call88.6.84, 100
  %1183 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.84 = add nsw i32 %rem89.6.84, %1183
  store i32 %add90.6.84, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.84 = tail call i32 @rand() #2
  %rem89.7.84 = srem i32 %call88.7.84, 100
  %1184 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.84 = add nsw i32 %rem89.7.84, %1184
  store i32 %add90.7.84, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.84 = tail call i32 @rand() #2
  %rem89.8.84 = srem i32 %call88.8.84, 100
  %1185 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.84 = add nsw i32 %rem89.8.84, %1185
  store i32 %add90.8.84, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.84 = tail call i32 @rand() #2
  %rem89.9.84 = srem i32 %call88.9.84, 100
  %1186 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.84 = add nsw i32 %rem89.9.84, %1186
  store i32 %add90.9.84, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.84 = mul nsw i32 %add74.84, %rem15
  %add81.84 = add nsw i32 %rem80.84, %rem78
  %.pre373 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre374 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then73.84
  %1187 = phi i32 [ %1173, %if.end.84 ], [ %add90.9.84, %if.then73.84 ]
  %1188 = phi i32 [ %rem32.84, %if.end.84 ], [ %.pre374, %if.then73.84 ]
  %1189 = phi i32 [ %add33.84, %if.end.84 ], [ %.pre373, %if.then73.84 ]
  %var4.1.84 = phi i32 [ %var4.1.83, %if.end.84 ], [ %mul75.84, %if.then73.84 ]
  %var5.1.84 = phi i32 [ %var5.1.83, %if.end.84 ], [ %rem9, %if.then73.84 ]
  %var1.1.84 = phi i32 [ %var1.1.83, %if.end.84 ], [ %add81.84, %if.then73.84 ]
  %inc101.84 = add nuw nsw i32 %i25.0178, 85
  %mul.85 = mul nsw i32 %1189, 3
  %div.85 = sdiv i32 %1188, 2
  %sub.85 = sub nsw i32 %mul.85, %div.85
  store i32 %sub.85, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.85 = add nsw i32 %sub.85, %1189
  %rem32.85 = srem i32 %add31.85, 100
  store i32 %rem32.85, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.85 = or i32 %rem32.85, 1
  %add33.85 = add nsw i32 %or.85, %rem17
  store i32 %add33.85, i32* @main.hot_data.2, align 4, !tbaa !7
  %1190 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %add42.85 = add nsw i32 %add33.85, %1190
  store i32 %add42.85, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %rem70.85 = urem i32 %inc101.84, 1000
  %cmp71.85 = icmp eq i32 %rem70.85, 0
  br i1 %cmp71.85, label %if.then73.85, label %if.end.86

if.then73.85:                                     ; preds = %if.end.85
  %add74.85 = add nsw i32 %var1.1.84, %rem13
  %call79.85 = tail call i32 @rand() #2
  %rem80.85 = srem i32 %call79.85, 5
  %call88.85 = tail call i32 @rand() #2
  %rem89.85 = srem i32 %call88.85, 100
  %1191 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.85 = add nsw i32 %rem89.85, %1191
  store i32 %add90.85, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.85 = tail call i32 @rand() #2
  %rem89.1.85 = srem i32 %call88.1.85, 100
  %1192 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.85 = add nsw i32 %rem89.1.85, %1192
  store i32 %add90.1.85, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.85 = tail call i32 @rand() #2
  %rem89.2.85 = srem i32 %call88.2.85, 100
  %1193 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.85 = add nsw i32 %rem89.2.85, %1193
  store i32 %add90.2.85, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.85 = tail call i32 @rand() #2
  %rem89.3.85 = srem i32 %call88.3.85, 100
  %1194 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.85 = add nsw i32 %rem89.3.85, %1194
  store i32 %add90.3.85, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.85 = tail call i32 @rand() #2
  %rem89.4.85 = srem i32 %call88.4.85, 100
  %1195 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.85 = add nsw i32 %rem89.4.85, %1195
  store i32 %add90.4.85, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.85 = tail call i32 @rand() #2
  %rem89.5.85 = srem i32 %call88.5.85, 100
  %1196 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.85 = add nsw i32 %rem89.5.85, %1196
  store i32 %add90.5.85, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.85 = tail call i32 @rand() #2
  %rem89.6.85 = srem i32 %call88.6.85, 100
  %1197 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.85 = add nsw i32 %rem89.6.85, %1197
  store i32 %add90.6.85, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.85 = tail call i32 @rand() #2
  %rem89.7.85 = srem i32 %call88.7.85, 100
  %1198 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.85 = add nsw i32 %rem89.7.85, %1198
  store i32 %add90.7.85, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.85 = tail call i32 @rand() #2
  %rem89.8.85 = srem i32 %call88.8.85, 100
  %1199 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.85 = add nsw i32 %rem89.8.85, %1199
  store i32 %add90.8.85, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.85 = tail call i32 @rand() #2
  %rem89.9.85 = srem i32 %call88.9.85, 100
  %1200 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.85 = add nsw i32 %rem89.9.85, %1200
  store i32 %add90.9.85, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.85 = mul nsw i32 %add74.85, %rem15
  %add81.85 = add nsw i32 %rem80.85, %rem78
  %.pre375 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre376 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then73.85
  %1201 = phi i32 [ %1187, %if.end.85 ], [ %add90.9.85, %if.then73.85 ]
  %1202 = phi i32 [ %rem32.85, %if.end.85 ], [ %.pre376, %if.then73.85 ]
  %1203 = phi i32 [ %add33.85, %if.end.85 ], [ %.pre375, %if.then73.85 ]
  %var4.1.85 = phi i32 [ %var4.1.84, %if.end.85 ], [ %mul75.85, %if.then73.85 ]
  %var5.1.85 = phi i32 [ %var5.1.84, %if.end.85 ], [ %rem9, %if.then73.85 ]
  %var1.1.85 = phi i32 [ %var1.1.84, %if.end.85 ], [ %add81.85, %if.then73.85 ]
  %inc101.85 = add nuw nsw i32 %i25.0178, 86
  %mul.86 = mul nsw i32 %1203, 3
  %div.86 = sdiv i32 %1202, 2
  %sub.86 = sub nsw i32 %mul.86, %div.86
  store i32 %sub.86, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.86 = add nsw i32 %sub.86, %1203
  %rem32.86 = srem i32 %add31.86, 100
  store i32 %rem32.86, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.86 = or i32 %rem32.86, 1
  %add33.86 = add nsw i32 %or.86, %rem17
  store i32 %add33.86, i32* @main.hot_data.2, align 4, !tbaa !7
  %1204 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %add42.86 = add nsw i32 %add33.86, %1204
  store i32 %add42.86, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %rem70.86 = urem i32 %inc101.85, 1000
  %cmp71.86 = icmp eq i32 %rem70.86, 0
  br i1 %cmp71.86, label %if.then73.86, label %if.end.87

if.then73.86:                                     ; preds = %if.end.86
  %add74.86 = add nsw i32 %var1.1.85, %rem13
  %call79.86 = tail call i32 @rand() #2
  %rem80.86 = srem i32 %call79.86, 5
  %call88.86 = tail call i32 @rand() #2
  %rem89.86 = srem i32 %call88.86, 100
  %1205 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.86 = add nsw i32 %rem89.86, %1205
  store i32 %add90.86, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.86 = tail call i32 @rand() #2
  %rem89.1.86 = srem i32 %call88.1.86, 100
  %1206 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.86 = add nsw i32 %rem89.1.86, %1206
  store i32 %add90.1.86, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.86 = tail call i32 @rand() #2
  %rem89.2.86 = srem i32 %call88.2.86, 100
  %1207 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.86 = add nsw i32 %rem89.2.86, %1207
  store i32 %add90.2.86, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.86 = tail call i32 @rand() #2
  %rem89.3.86 = srem i32 %call88.3.86, 100
  %1208 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.86 = add nsw i32 %rem89.3.86, %1208
  store i32 %add90.3.86, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.86 = tail call i32 @rand() #2
  %rem89.4.86 = srem i32 %call88.4.86, 100
  %1209 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.86 = add nsw i32 %rem89.4.86, %1209
  store i32 %add90.4.86, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.86 = tail call i32 @rand() #2
  %rem89.5.86 = srem i32 %call88.5.86, 100
  %1210 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.86 = add nsw i32 %rem89.5.86, %1210
  store i32 %add90.5.86, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.86 = tail call i32 @rand() #2
  %rem89.6.86 = srem i32 %call88.6.86, 100
  %1211 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.86 = add nsw i32 %rem89.6.86, %1211
  store i32 %add90.6.86, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.86 = tail call i32 @rand() #2
  %rem89.7.86 = srem i32 %call88.7.86, 100
  %1212 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.86 = add nsw i32 %rem89.7.86, %1212
  store i32 %add90.7.86, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.86 = tail call i32 @rand() #2
  %rem89.8.86 = srem i32 %call88.8.86, 100
  %1213 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.86 = add nsw i32 %rem89.8.86, %1213
  store i32 %add90.8.86, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.86 = tail call i32 @rand() #2
  %rem89.9.86 = srem i32 %call88.9.86, 100
  %1214 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.86 = add nsw i32 %rem89.9.86, %1214
  store i32 %add90.9.86, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.86 = mul nsw i32 %add74.86, %rem15
  %add81.86 = add nsw i32 %rem80.86, %rem78
  %.pre377 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre378 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then73.86
  %1215 = phi i32 [ %1201, %if.end.86 ], [ %add90.9.86, %if.then73.86 ]
  %1216 = phi i32 [ %rem32.86, %if.end.86 ], [ %.pre378, %if.then73.86 ]
  %1217 = phi i32 [ %add33.86, %if.end.86 ], [ %.pre377, %if.then73.86 ]
  %var4.1.86 = phi i32 [ %var4.1.85, %if.end.86 ], [ %mul75.86, %if.then73.86 ]
  %var5.1.86 = phi i32 [ %var5.1.85, %if.end.86 ], [ %rem9, %if.then73.86 ]
  %var1.1.86 = phi i32 [ %var1.1.85, %if.end.86 ], [ %add81.86, %if.then73.86 ]
  %inc101.86 = add nuw nsw i32 %i25.0178, 87
  %mul.87 = mul nsw i32 %1217, 3
  %div.87 = sdiv i32 %1216, 2
  %sub.87 = sub nsw i32 %mul.87, %div.87
  store i32 %sub.87, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.87 = add nsw i32 %sub.87, %1217
  %rem32.87 = srem i32 %add31.87, 100
  store i32 %rem32.87, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.87 = or i32 %rem32.87, 1
  %add33.87 = add nsw i32 %or.87, %rem17
  store i32 %add33.87, i32* @main.hot_data.2, align 4, !tbaa !7
  %1218 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %add42.87 = add nsw i32 %add33.87, %1218
  store i32 %add42.87, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %rem70.87 = urem i32 %inc101.86, 1000
  %cmp71.87 = icmp eq i32 %rem70.87, 0
  br i1 %cmp71.87, label %if.then73.87, label %if.end.88

if.then73.87:                                     ; preds = %if.end.87
  %add74.87 = add nsw i32 %var1.1.86, %rem13
  %call79.87 = tail call i32 @rand() #2
  %rem80.87 = srem i32 %call79.87, 5
  %call88.87 = tail call i32 @rand() #2
  %rem89.87 = srem i32 %call88.87, 100
  %1219 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.87 = add nsw i32 %rem89.87, %1219
  store i32 %add90.87, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.87 = tail call i32 @rand() #2
  %rem89.1.87 = srem i32 %call88.1.87, 100
  %1220 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.87 = add nsw i32 %rem89.1.87, %1220
  store i32 %add90.1.87, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.87 = tail call i32 @rand() #2
  %rem89.2.87 = srem i32 %call88.2.87, 100
  %1221 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.87 = add nsw i32 %rem89.2.87, %1221
  store i32 %add90.2.87, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.87 = tail call i32 @rand() #2
  %rem89.3.87 = srem i32 %call88.3.87, 100
  %1222 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.87 = add nsw i32 %rem89.3.87, %1222
  store i32 %add90.3.87, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.87 = tail call i32 @rand() #2
  %rem89.4.87 = srem i32 %call88.4.87, 100
  %1223 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.87 = add nsw i32 %rem89.4.87, %1223
  store i32 %add90.4.87, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.87 = tail call i32 @rand() #2
  %rem89.5.87 = srem i32 %call88.5.87, 100
  %1224 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.87 = add nsw i32 %rem89.5.87, %1224
  store i32 %add90.5.87, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.87 = tail call i32 @rand() #2
  %rem89.6.87 = srem i32 %call88.6.87, 100
  %1225 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.87 = add nsw i32 %rem89.6.87, %1225
  store i32 %add90.6.87, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.87 = tail call i32 @rand() #2
  %rem89.7.87 = srem i32 %call88.7.87, 100
  %1226 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.87 = add nsw i32 %rem89.7.87, %1226
  store i32 %add90.7.87, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.87 = tail call i32 @rand() #2
  %rem89.8.87 = srem i32 %call88.8.87, 100
  %1227 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.87 = add nsw i32 %rem89.8.87, %1227
  store i32 %add90.8.87, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.87 = tail call i32 @rand() #2
  %rem89.9.87 = srem i32 %call88.9.87, 100
  %1228 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.87 = add nsw i32 %rem89.9.87, %1228
  store i32 %add90.9.87, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.87 = mul nsw i32 %add74.87, %rem15
  %add81.87 = add nsw i32 %rem80.87, %rem78
  %.pre379 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre380 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.then73.87
  %1229 = phi i32 [ %1215, %if.end.87 ], [ %add90.9.87, %if.then73.87 ]
  %1230 = phi i32 [ %rem32.87, %if.end.87 ], [ %.pre380, %if.then73.87 ]
  %1231 = phi i32 [ %add33.87, %if.end.87 ], [ %.pre379, %if.then73.87 ]
  %var4.1.87 = phi i32 [ %var4.1.86, %if.end.87 ], [ %mul75.87, %if.then73.87 ]
  %var5.1.87 = phi i32 [ %var5.1.86, %if.end.87 ], [ %rem9, %if.then73.87 ]
  %var1.1.87 = phi i32 [ %var1.1.86, %if.end.87 ], [ %add81.87, %if.then73.87 ]
  %inc101.87 = add nuw nsw i32 %i25.0178, 88
  %mul.88 = mul nsw i32 %1231, 3
  %div.88 = sdiv i32 %1230, 2
  %sub.88 = sub nsw i32 %mul.88, %div.88
  store i32 %sub.88, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.88 = add nsw i32 %sub.88, %1231
  %rem32.88 = srem i32 %add31.88, 100
  store i32 %rem32.88, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.88 = or i32 %rem32.88, 1
  %add33.88 = add nsw i32 %or.88, %rem17
  store i32 %add33.88, i32* @main.hot_data.2, align 4, !tbaa !7
  %1232 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %add42.88 = add nsw i32 %add33.88, %1232
  store i32 %add42.88, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %rem70.88 = urem i32 %inc101.87, 1000
  %cmp71.88 = icmp eq i32 %rem70.88, 0
  br i1 %cmp71.88, label %if.then73.88, label %if.end.89

if.then73.88:                                     ; preds = %if.end.88
  %add74.88 = add nsw i32 %var1.1.87, %rem13
  %call79.88 = tail call i32 @rand() #2
  %rem80.88 = srem i32 %call79.88, 5
  %call88.88 = tail call i32 @rand() #2
  %rem89.88 = srem i32 %call88.88, 100
  %1233 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.88 = add nsw i32 %rem89.88, %1233
  store i32 %add90.88, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.88 = tail call i32 @rand() #2
  %rem89.1.88 = srem i32 %call88.1.88, 100
  %1234 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.88 = add nsw i32 %rem89.1.88, %1234
  store i32 %add90.1.88, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.88 = tail call i32 @rand() #2
  %rem89.2.88 = srem i32 %call88.2.88, 100
  %1235 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.88 = add nsw i32 %rem89.2.88, %1235
  store i32 %add90.2.88, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.88 = tail call i32 @rand() #2
  %rem89.3.88 = srem i32 %call88.3.88, 100
  %1236 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.88 = add nsw i32 %rem89.3.88, %1236
  store i32 %add90.3.88, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.88 = tail call i32 @rand() #2
  %rem89.4.88 = srem i32 %call88.4.88, 100
  %1237 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.88 = add nsw i32 %rem89.4.88, %1237
  store i32 %add90.4.88, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.88 = tail call i32 @rand() #2
  %rem89.5.88 = srem i32 %call88.5.88, 100
  %1238 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.88 = add nsw i32 %rem89.5.88, %1238
  store i32 %add90.5.88, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.88 = tail call i32 @rand() #2
  %rem89.6.88 = srem i32 %call88.6.88, 100
  %1239 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.88 = add nsw i32 %rem89.6.88, %1239
  store i32 %add90.6.88, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.88 = tail call i32 @rand() #2
  %rem89.7.88 = srem i32 %call88.7.88, 100
  %1240 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.88 = add nsw i32 %rem89.7.88, %1240
  store i32 %add90.7.88, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.88 = tail call i32 @rand() #2
  %rem89.8.88 = srem i32 %call88.8.88, 100
  %1241 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.88 = add nsw i32 %rem89.8.88, %1241
  store i32 %add90.8.88, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.88 = tail call i32 @rand() #2
  %rem89.9.88 = srem i32 %call88.9.88, 100
  %1242 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.88 = add nsw i32 %rem89.9.88, %1242
  store i32 %add90.9.88, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.88 = mul nsw i32 %add74.88, %rem15
  %add81.88 = add nsw i32 %rem80.88, %rem78
  %.pre381 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre382 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then73.88
  %1243 = phi i32 [ %1229, %if.end.88 ], [ %add90.9.88, %if.then73.88 ]
  %1244 = phi i32 [ %rem32.88, %if.end.88 ], [ %.pre382, %if.then73.88 ]
  %1245 = phi i32 [ %add33.88, %if.end.88 ], [ %.pre381, %if.then73.88 ]
  %var4.1.88 = phi i32 [ %var4.1.87, %if.end.88 ], [ %mul75.88, %if.then73.88 ]
  %var5.1.88 = phi i32 [ %var5.1.87, %if.end.88 ], [ %rem9, %if.then73.88 ]
  %var1.1.88 = phi i32 [ %var1.1.87, %if.end.88 ], [ %add81.88, %if.then73.88 ]
  %inc101.88 = add nuw nsw i32 %i25.0178, 89
  %mul.89 = mul nsw i32 %1245, 3
  %div.89 = sdiv i32 %1244, 2
  %sub.89 = sub nsw i32 %mul.89, %div.89
  store i32 %sub.89, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.89 = add nsw i32 %sub.89, %1245
  %rem32.89 = srem i32 %add31.89, 100
  store i32 %rem32.89, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.89 = or i32 %rem32.89, 1
  %add33.89 = add nsw i32 %or.89, %rem17
  store i32 %add33.89, i32* @main.hot_data.2, align 4, !tbaa !7
  %add42.89 = add nsw i32 %add33.89, %1243
  store i32 %add42.89, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %rem70.89 = urem i32 %inc101.88, 1000
  %cmp71.89 = icmp eq i32 %rem70.89, 0
  br i1 %cmp71.89, label %if.then73.89, label %if.end.90

if.then73.89:                                     ; preds = %if.end.89
  %add74.89 = add nsw i32 %var1.1.88, %rem13
  %call79.89 = tail call i32 @rand() #2
  %rem80.89 = srem i32 %call79.89, 5
  %call88.89 = tail call i32 @rand() #2
  %rem89.89 = srem i32 %call88.89, 100
  %1246 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.89 = add nsw i32 %rem89.89, %1246
  store i32 %add90.89, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.89 = tail call i32 @rand() #2
  %rem89.1.89 = srem i32 %call88.1.89, 100
  %1247 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.89 = add nsw i32 %rem89.1.89, %1247
  store i32 %add90.1.89, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.89 = tail call i32 @rand() #2
  %rem89.2.89 = srem i32 %call88.2.89, 100
  %1248 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.89 = add nsw i32 %rem89.2.89, %1248
  store i32 %add90.2.89, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.89 = tail call i32 @rand() #2
  %rem89.3.89 = srem i32 %call88.3.89, 100
  %1249 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.89 = add nsw i32 %rem89.3.89, %1249
  store i32 %add90.3.89, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.89 = tail call i32 @rand() #2
  %rem89.4.89 = srem i32 %call88.4.89, 100
  %1250 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.89 = add nsw i32 %rem89.4.89, %1250
  store i32 %add90.4.89, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.89 = tail call i32 @rand() #2
  %rem89.5.89 = srem i32 %call88.5.89, 100
  %1251 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.89 = add nsw i32 %rem89.5.89, %1251
  store i32 %add90.5.89, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.89 = tail call i32 @rand() #2
  %rem89.6.89 = srem i32 %call88.6.89, 100
  %1252 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.89 = add nsw i32 %rem89.6.89, %1252
  store i32 %add90.6.89, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.89 = tail call i32 @rand() #2
  %rem89.7.89 = srem i32 %call88.7.89, 100
  %1253 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.89 = add nsw i32 %rem89.7.89, %1253
  store i32 %add90.7.89, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.89 = tail call i32 @rand() #2
  %rem89.8.89 = srem i32 %call88.8.89, 100
  %1254 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.89 = add nsw i32 %rem89.8.89, %1254
  store i32 %add90.8.89, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.89 = tail call i32 @rand() #2
  %rem89.9.89 = srem i32 %call88.9.89, 100
  %1255 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.89 = add nsw i32 %rem89.9.89, %1255
  store i32 %add90.9.89, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.89 = mul nsw i32 %add74.89, %rem15
  %add81.89 = add nsw i32 %rem80.89, %rem78
  %.pre383 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre384 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then73.89
  %1256 = phi i32 [ %add42.89, %if.end.89 ], [ %add90.9.89, %if.then73.89 ]
  %1257 = phi i32 [ %rem32.89, %if.end.89 ], [ %.pre384, %if.then73.89 ]
  %1258 = phi i32 [ %add33.89, %if.end.89 ], [ %.pre383, %if.then73.89 ]
  %var4.1.89 = phi i32 [ %var4.1.88, %if.end.89 ], [ %mul75.89, %if.then73.89 ]
  %var5.1.89 = phi i32 [ %var5.1.88, %if.end.89 ], [ %rem9, %if.then73.89 ]
  %var1.1.89 = phi i32 [ %var1.1.88, %if.end.89 ], [ %add81.89, %if.then73.89 ]
  %inc101.89 = add nuw nsw i32 %i25.0178, 90
  %mul.90 = mul nsw i32 %1258, 3
  %div.90 = sdiv i32 %1257, 2
  %sub.90 = sub nsw i32 %mul.90, %div.90
  store i32 %sub.90, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.90 = add nsw i32 %sub.90, %1258
  %rem32.90 = srem i32 %add31.90, 100
  store i32 %rem32.90, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.90 = or i32 %rem32.90, 1
  %add33.90 = add nsw i32 %or.90, %rem17
  store i32 %add33.90, i32* @main.hot_data.2, align 4, !tbaa !7
  %1259 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %add42.90 = add nsw i32 %add33.90, %1259
  store i32 %add42.90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %rem70.90 = urem i32 %inc101.89, 1000
  %cmp71.90 = icmp eq i32 %rem70.90, 0
  br i1 %cmp71.90, label %if.then73.90, label %if.end.91

if.then73.90:                                     ; preds = %if.end.90
  %add74.90 = add nsw i32 %var1.1.89, %rem13
  %call79.90 = tail call i32 @rand() #2
  %rem80.90 = srem i32 %call79.90, 5
  %call88.90 = tail call i32 @rand() #2
  %rem89.90 = srem i32 %call88.90, 100
  %1260 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.90 = add nsw i32 %rem89.90, %1260
  store i32 %add90.90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.90 = tail call i32 @rand() #2
  %rem89.1.90 = srem i32 %call88.1.90, 100
  %1261 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.90 = add nsw i32 %rem89.1.90, %1261
  store i32 %add90.1.90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.90 = tail call i32 @rand() #2
  %rem89.2.90 = srem i32 %call88.2.90, 100
  %1262 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.90 = add nsw i32 %rem89.2.90, %1262
  store i32 %add90.2.90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.90 = tail call i32 @rand() #2
  %rem89.3.90 = srem i32 %call88.3.90, 100
  %1263 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.90 = add nsw i32 %rem89.3.90, %1263
  store i32 %add90.3.90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.90 = tail call i32 @rand() #2
  %rem89.4.90 = srem i32 %call88.4.90, 100
  %1264 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.90 = add nsw i32 %rem89.4.90, %1264
  store i32 %add90.4.90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.90 = tail call i32 @rand() #2
  %rem89.5.90 = srem i32 %call88.5.90, 100
  %1265 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.90 = add nsw i32 %rem89.5.90, %1265
  store i32 %add90.5.90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.90 = tail call i32 @rand() #2
  %rem89.6.90 = srem i32 %call88.6.90, 100
  %1266 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.90 = add nsw i32 %rem89.6.90, %1266
  store i32 %add90.6.90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.90 = tail call i32 @rand() #2
  %rem89.7.90 = srem i32 %call88.7.90, 100
  %1267 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.90 = add nsw i32 %rem89.7.90, %1267
  store i32 %add90.7.90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.90 = tail call i32 @rand() #2
  %rem89.8.90 = srem i32 %call88.8.90, 100
  %1268 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.90 = add nsw i32 %rem89.8.90, %1268
  store i32 %add90.8.90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.90 = tail call i32 @rand() #2
  %rem89.9.90 = srem i32 %call88.9.90, 100
  %1269 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.90 = add nsw i32 %rem89.9.90, %1269
  store i32 %add90.9.90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.90 = mul nsw i32 %add74.90, %rem15
  %add81.90 = add nsw i32 %rem80.90, %rem78
  %.pre385 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre386 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then73.90
  %1270 = phi i32 [ %1256, %if.end.90 ], [ %add90.9.90, %if.then73.90 ]
  %1271 = phi i32 [ %rem32.90, %if.end.90 ], [ %.pre386, %if.then73.90 ]
  %1272 = phi i32 [ %add33.90, %if.end.90 ], [ %.pre385, %if.then73.90 ]
  %var4.1.90 = phi i32 [ %var4.1.89, %if.end.90 ], [ %mul75.90, %if.then73.90 ]
  %var5.1.90 = phi i32 [ %var5.1.89, %if.end.90 ], [ %rem9, %if.then73.90 ]
  %var1.1.90 = phi i32 [ %var1.1.89, %if.end.90 ], [ %add81.90, %if.then73.90 ]
  %inc101.90 = add nuw nsw i32 %i25.0178, 91
  %mul.91 = mul nsw i32 %1272, 3
  %div.91 = sdiv i32 %1271, 2
  %sub.91 = sub nsw i32 %mul.91, %div.91
  store i32 %sub.91, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.91 = add nsw i32 %sub.91, %1272
  %rem32.91 = srem i32 %add31.91, 100
  store i32 %rem32.91, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.91 = or i32 %rem32.91, 1
  %add33.91 = add nsw i32 %or.91, %rem17
  store i32 %add33.91, i32* @main.hot_data.2, align 4, !tbaa !7
  %1273 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %add42.91 = add nsw i32 %add33.91, %1273
  store i32 %add42.91, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %rem70.91 = urem i32 %inc101.90, 1000
  %cmp71.91 = icmp eq i32 %rem70.91, 0
  br i1 %cmp71.91, label %if.then73.91, label %if.end.92

if.then73.91:                                     ; preds = %if.end.91
  %add74.91 = add nsw i32 %var1.1.90, %rem13
  %call79.91 = tail call i32 @rand() #2
  %rem80.91 = srem i32 %call79.91, 5
  %call88.91 = tail call i32 @rand() #2
  %rem89.91 = srem i32 %call88.91, 100
  %1274 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.91 = add nsw i32 %rem89.91, %1274
  store i32 %add90.91, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.91 = tail call i32 @rand() #2
  %rem89.1.91 = srem i32 %call88.1.91, 100
  %1275 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.91 = add nsw i32 %rem89.1.91, %1275
  store i32 %add90.1.91, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.91 = tail call i32 @rand() #2
  %rem89.2.91 = srem i32 %call88.2.91, 100
  %1276 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.91 = add nsw i32 %rem89.2.91, %1276
  store i32 %add90.2.91, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.91 = tail call i32 @rand() #2
  %rem89.3.91 = srem i32 %call88.3.91, 100
  %1277 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.91 = add nsw i32 %rem89.3.91, %1277
  store i32 %add90.3.91, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.91 = tail call i32 @rand() #2
  %rem89.4.91 = srem i32 %call88.4.91, 100
  %1278 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.91 = add nsw i32 %rem89.4.91, %1278
  store i32 %add90.4.91, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.91 = tail call i32 @rand() #2
  %rem89.5.91 = srem i32 %call88.5.91, 100
  %1279 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.91 = add nsw i32 %rem89.5.91, %1279
  store i32 %add90.5.91, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.91 = tail call i32 @rand() #2
  %rem89.6.91 = srem i32 %call88.6.91, 100
  %1280 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.91 = add nsw i32 %rem89.6.91, %1280
  store i32 %add90.6.91, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.91 = tail call i32 @rand() #2
  %rem89.7.91 = srem i32 %call88.7.91, 100
  %1281 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.91 = add nsw i32 %rem89.7.91, %1281
  store i32 %add90.7.91, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.91 = tail call i32 @rand() #2
  %rem89.8.91 = srem i32 %call88.8.91, 100
  %1282 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.91 = add nsw i32 %rem89.8.91, %1282
  store i32 %add90.8.91, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.91 = tail call i32 @rand() #2
  %rem89.9.91 = srem i32 %call88.9.91, 100
  %1283 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.91 = add nsw i32 %rem89.9.91, %1283
  store i32 %add90.9.91, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.91 = mul nsw i32 %add74.91, %rem15
  %add81.91 = add nsw i32 %rem80.91, %rem78
  %.pre387 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre388 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then73.91
  %1284 = phi i32 [ %1270, %if.end.91 ], [ %add90.9.91, %if.then73.91 ]
  %1285 = phi i32 [ %rem32.91, %if.end.91 ], [ %.pre388, %if.then73.91 ]
  %1286 = phi i32 [ %add33.91, %if.end.91 ], [ %.pre387, %if.then73.91 ]
  %var4.1.91 = phi i32 [ %var4.1.90, %if.end.91 ], [ %mul75.91, %if.then73.91 ]
  %var5.1.91 = phi i32 [ %var5.1.90, %if.end.91 ], [ %rem9, %if.then73.91 ]
  %var1.1.91 = phi i32 [ %var1.1.90, %if.end.91 ], [ %add81.91, %if.then73.91 ]
  %inc101.91 = add nuw nsw i32 %i25.0178, 92
  %mul.92 = mul nsw i32 %1286, 3
  %div.92 = sdiv i32 %1285, 2
  %sub.92 = sub nsw i32 %mul.92, %div.92
  store i32 %sub.92, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.92 = add nsw i32 %sub.92, %1286
  %rem32.92 = srem i32 %add31.92, 100
  store i32 %rem32.92, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.92 = or i32 %rem32.92, 1
  %add33.92 = add nsw i32 %or.92, %rem17
  store i32 %add33.92, i32* @main.hot_data.2, align 4, !tbaa !7
  %1287 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %add42.92 = add nsw i32 %add33.92, %1287
  store i32 %add42.92, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %rem70.92 = urem i32 %inc101.91, 1000
  %cmp71.92 = icmp eq i32 %rem70.92, 0
  br i1 %cmp71.92, label %if.then73.92, label %if.end.93

if.then73.92:                                     ; preds = %if.end.92
  %add74.92 = add nsw i32 %var1.1.91, %rem13
  %call79.92 = tail call i32 @rand() #2
  %rem80.92 = srem i32 %call79.92, 5
  %call88.92 = tail call i32 @rand() #2
  %rem89.92 = srem i32 %call88.92, 100
  %1288 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.92 = add nsw i32 %rem89.92, %1288
  store i32 %add90.92, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.92 = tail call i32 @rand() #2
  %rem89.1.92 = srem i32 %call88.1.92, 100
  %1289 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.92 = add nsw i32 %rem89.1.92, %1289
  store i32 %add90.1.92, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.92 = tail call i32 @rand() #2
  %rem89.2.92 = srem i32 %call88.2.92, 100
  %1290 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.92 = add nsw i32 %rem89.2.92, %1290
  store i32 %add90.2.92, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.92 = tail call i32 @rand() #2
  %rem89.3.92 = srem i32 %call88.3.92, 100
  %1291 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.92 = add nsw i32 %rem89.3.92, %1291
  store i32 %add90.3.92, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.92 = tail call i32 @rand() #2
  %rem89.4.92 = srem i32 %call88.4.92, 100
  %1292 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.92 = add nsw i32 %rem89.4.92, %1292
  store i32 %add90.4.92, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.92 = tail call i32 @rand() #2
  %rem89.5.92 = srem i32 %call88.5.92, 100
  %1293 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.92 = add nsw i32 %rem89.5.92, %1293
  store i32 %add90.5.92, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.92 = tail call i32 @rand() #2
  %rem89.6.92 = srem i32 %call88.6.92, 100
  %1294 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.92 = add nsw i32 %rem89.6.92, %1294
  store i32 %add90.6.92, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.92 = tail call i32 @rand() #2
  %rem89.7.92 = srem i32 %call88.7.92, 100
  %1295 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.92 = add nsw i32 %rem89.7.92, %1295
  store i32 %add90.7.92, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.92 = tail call i32 @rand() #2
  %rem89.8.92 = srem i32 %call88.8.92, 100
  %1296 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.92 = add nsw i32 %rem89.8.92, %1296
  store i32 %add90.8.92, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.92 = tail call i32 @rand() #2
  %rem89.9.92 = srem i32 %call88.9.92, 100
  %1297 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.92 = add nsw i32 %rem89.9.92, %1297
  store i32 %add90.9.92, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.92 = mul nsw i32 %add74.92, %rem15
  %add81.92 = add nsw i32 %rem80.92, %rem78
  %.pre389 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre390 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.then73.92
  %1298 = phi i32 [ %1284, %if.end.92 ], [ %add90.9.92, %if.then73.92 ]
  %1299 = phi i32 [ %rem32.92, %if.end.92 ], [ %.pre390, %if.then73.92 ]
  %1300 = phi i32 [ %add33.92, %if.end.92 ], [ %.pre389, %if.then73.92 ]
  %var4.1.92 = phi i32 [ %var4.1.91, %if.end.92 ], [ %mul75.92, %if.then73.92 ]
  %var5.1.92 = phi i32 [ %var5.1.91, %if.end.92 ], [ %rem9, %if.then73.92 ]
  %var1.1.92 = phi i32 [ %var1.1.91, %if.end.92 ], [ %add81.92, %if.then73.92 ]
  %inc101.92 = add nuw nsw i32 %i25.0178, 93
  %mul.93 = mul nsw i32 %1300, 3
  %div.93 = sdiv i32 %1299, 2
  %sub.93 = sub nsw i32 %mul.93, %div.93
  store i32 %sub.93, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.93 = add nsw i32 %sub.93, %1300
  %rem32.93 = srem i32 %add31.93, 100
  store i32 %rem32.93, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.93 = or i32 %rem32.93, 1
  %add33.93 = add nsw i32 %or.93, %rem17
  store i32 %add33.93, i32* @main.hot_data.2, align 4, !tbaa !7
  %1301 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %add42.93 = add nsw i32 %add33.93, %1301
  store i32 %add42.93, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %rem70.93 = urem i32 %inc101.92, 1000
  %cmp71.93 = icmp eq i32 %rem70.93, 0
  br i1 %cmp71.93, label %if.then73.93, label %if.end.94

if.then73.93:                                     ; preds = %if.end.93
  %add74.93 = add nsw i32 %var1.1.92, %rem13
  %call79.93 = tail call i32 @rand() #2
  %rem80.93 = srem i32 %call79.93, 5
  %call88.93 = tail call i32 @rand() #2
  %rem89.93 = srem i32 %call88.93, 100
  %1302 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.93 = add nsw i32 %rem89.93, %1302
  store i32 %add90.93, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.93 = tail call i32 @rand() #2
  %rem89.1.93 = srem i32 %call88.1.93, 100
  %1303 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.93 = add nsw i32 %rem89.1.93, %1303
  store i32 %add90.1.93, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.93 = tail call i32 @rand() #2
  %rem89.2.93 = srem i32 %call88.2.93, 100
  %1304 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.93 = add nsw i32 %rem89.2.93, %1304
  store i32 %add90.2.93, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.93 = tail call i32 @rand() #2
  %rem89.3.93 = srem i32 %call88.3.93, 100
  %1305 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.93 = add nsw i32 %rem89.3.93, %1305
  store i32 %add90.3.93, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.93 = tail call i32 @rand() #2
  %rem89.4.93 = srem i32 %call88.4.93, 100
  %1306 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.93 = add nsw i32 %rem89.4.93, %1306
  store i32 %add90.4.93, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.93 = tail call i32 @rand() #2
  %rem89.5.93 = srem i32 %call88.5.93, 100
  %1307 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.93 = add nsw i32 %rem89.5.93, %1307
  store i32 %add90.5.93, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.93 = tail call i32 @rand() #2
  %rem89.6.93 = srem i32 %call88.6.93, 100
  %1308 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.93 = add nsw i32 %rem89.6.93, %1308
  store i32 %add90.6.93, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.93 = tail call i32 @rand() #2
  %rem89.7.93 = srem i32 %call88.7.93, 100
  %1309 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.93 = add nsw i32 %rem89.7.93, %1309
  store i32 %add90.7.93, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.93 = tail call i32 @rand() #2
  %rem89.8.93 = srem i32 %call88.8.93, 100
  %1310 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.93 = add nsw i32 %rem89.8.93, %1310
  store i32 %add90.8.93, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.93 = tail call i32 @rand() #2
  %rem89.9.93 = srem i32 %call88.9.93, 100
  %1311 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.93 = add nsw i32 %rem89.9.93, %1311
  store i32 %add90.9.93, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.93 = mul nsw i32 %add74.93, %rem15
  %add81.93 = add nsw i32 %rem80.93, %rem78
  %.pre391 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre392 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then73.93
  %1312 = phi i32 [ %1298, %if.end.93 ], [ %add90.9.93, %if.then73.93 ]
  %1313 = phi i32 [ %rem32.93, %if.end.93 ], [ %.pre392, %if.then73.93 ]
  %1314 = phi i32 [ %add33.93, %if.end.93 ], [ %.pre391, %if.then73.93 ]
  %var4.1.93 = phi i32 [ %var4.1.92, %if.end.93 ], [ %mul75.93, %if.then73.93 ]
  %var5.1.93 = phi i32 [ %var5.1.92, %if.end.93 ], [ %rem9, %if.then73.93 ]
  %var1.1.93 = phi i32 [ %var1.1.92, %if.end.93 ], [ %add81.93, %if.then73.93 ]
  %inc101.93 = add nuw nsw i32 %i25.0178, 94
  %mul.94 = mul nsw i32 %1314, 3
  %div.94 = sdiv i32 %1313, 2
  %sub.94 = sub nsw i32 %mul.94, %div.94
  store i32 %sub.94, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.94 = add nsw i32 %sub.94, %1314
  %rem32.94 = srem i32 %add31.94, 100
  store i32 %rem32.94, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.94 = or i32 %rem32.94, 1
  %add33.94 = add nsw i32 %or.94, %rem17
  store i32 %add33.94, i32* @main.hot_data.2, align 4, !tbaa !7
  %1315 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %add42.94 = add nsw i32 %add33.94, %1315
  store i32 %add42.94, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %rem70.94 = urem i32 %inc101.93, 1000
  %cmp71.94 = icmp eq i32 %rem70.94, 0
  br i1 %cmp71.94, label %if.then73.94, label %if.end.95

if.then73.94:                                     ; preds = %if.end.94
  %add74.94 = add nsw i32 %var1.1.93, %rem13
  %call79.94 = tail call i32 @rand() #2
  %rem80.94 = srem i32 %call79.94, 5
  %call88.94 = tail call i32 @rand() #2
  %rem89.94 = srem i32 %call88.94, 100
  %1316 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.94 = add nsw i32 %rem89.94, %1316
  store i32 %add90.94, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.94 = tail call i32 @rand() #2
  %rem89.1.94 = srem i32 %call88.1.94, 100
  %1317 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.94 = add nsw i32 %rem89.1.94, %1317
  store i32 %add90.1.94, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.94 = tail call i32 @rand() #2
  %rem89.2.94 = srem i32 %call88.2.94, 100
  %1318 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.94 = add nsw i32 %rem89.2.94, %1318
  store i32 %add90.2.94, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.94 = tail call i32 @rand() #2
  %rem89.3.94 = srem i32 %call88.3.94, 100
  %1319 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.94 = add nsw i32 %rem89.3.94, %1319
  store i32 %add90.3.94, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.94 = tail call i32 @rand() #2
  %rem89.4.94 = srem i32 %call88.4.94, 100
  %1320 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.94 = add nsw i32 %rem89.4.94, %1320
  store i32 %add90.4.94, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.94 = tail call i32 @rand() #2
  %rem89.5.94 = srem i32 %call88.5.94, 100
  %1321 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.94 = add nsw i32 %rem89.5.94, %1321
  store i32 %add90.5.94, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.94 = tail call i32 @rand() #2
  %rem89.6.94 = srem i32 %call88.6.94, 100
  %1322 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.94 = add nsw i32 %rem89.6.94, %1322
  store i32 %add90.6.94, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.94 = tail call i32 @rand() #2
  %rem89.7.94 = srem i32 %call88.7.94, 100
  %1323 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.94 = add nsw i32 %rem89.7.94, %1323
  store i32 %add90.7.94, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.94 = tail call i32 @rand() #2
  %rem89.8.94 = srem i32 %call88.8.94, 100
  %1324 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.94 = add nsw i32 %rem89.8.94, %1324
  store i32 %add90.8.94, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.94 = tail call i32 @rand() #2
  %rem89.9.94 = srem i32 %call88.9.94, 100
  %1325 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.94 = add nsw i32 %rem89.9.94, %1325
  store i32 %add90.9.94, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.94 = mul nsw i32 %add74.94, %rem15
  %add81.94 = add nsw i32 %rem80.94, %rem78
  %.pre393 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre394 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then73.94
  %1326 = phi i32 [ %1312, %if.end.94 ], [ %add90.9.94, %if.then73.94 ]
  %1327 = phi i32 [ %rem32.94, %if.end.94 ], [ %.pre394, %if.then73.94 ]
  %1328 = phi i32 [ %add33.94, %if.end.94 ], [ %.pre393, %if.then73.94 ]
  %var4.1.94 = phi i32 [ %var4.1.93, %if.end.94 ], [ %mul75.94, %if.then73.94 ]
  %var5.1.94 = phi i32 [ %var5.1.93, %if.end.94 ], [ %rem9, %if.then73.94 ]
  %var1.1.94 = phi i32 [ %var1.1.93, %if.end.94 ], [ %add81.94, %if.then73.94 ]
  %inc101.94 = add nuw nsw i32 %i25.0178, 95
  %mul.95 = mul nsw i32 %1328, 3
  %div.95 = sdiv i32 %1327, 2
  %sub.95 = sub nsw i32 %mul.95, %div.95
  store i32 %sub.95, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.95 = add nsw i32 %sub.95, %1328
  %rem32.95 = srem i32 %add31.95, 100
  store i32 %rem32.95, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.95 = or i32 %rem32.95, 1
  %add33.95 = add nsw i32 %or.95, %rem17
  store i32 %add33.95, i32* @main.hot_data.2, align 4, !tbaa !7
  %1329 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %add42.95 = add nsw i32 %add33.95, %1329
  store i32 %add42.95, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %rem70.95 = urem i32 %inc101.94, 1000
  %cmp71.95 = icmp eq i32 %rem70.95, 0
  br i1 %cmp71.95, label %if.then73.95, label %if.end.96

if.then73.95:                                     ; preds = %if.end.95
  %add74.95 = add nsw i32 %var1.1.94, %rem13
  %call79.95 = tail call i32 @rand() #2
  %rem80.95 = srem i32 %call79.95, 5
  %call88.95 = tail call i32 @rand() #2
  %rem89.95 = srem i32 %call88.95, 100
  %1330 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.95 = add nsw i32 %rem89.95, %1330
  store i32 %add90.95, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.95 = tail call i32 @rand() #2
  %rem89.1.95 = srem i32 %call88.1.95, 100
  %1331 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.95 = add nsw i32 %rem89.1.95, %1331
  store i32 %add90.1.95, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.95 = tail call i32 @rand() #2
  %rem89.2.95 = srem i32 %call88.2.95, 100
  %1332 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.95 = add nsw i32 %rem89.2.95, %1332
  store i32 %add90.2.95, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.95 = tail call i32 @rand() #2
  %rem89.3.95 = srem i32 %call88.3.95, 100
  %1333 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.95 = add nsw i32 %rem89.3.95, %1333
  store i32 %add90.3.95, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.95 = tail call i32 @rand() #2
  %rem89.4.95 = srem i32 %call88.4.95, 100
  %1334 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.95 = add nsw i32 %rem89.4.95, %1334
  store i32 %add90.4.95, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.95 = tail call i32 @rand() #2
  %rem89.5.95 = srem i32 %call88.5.95, 100
  %1335 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.95 = add nsw i32 %rem89.5.95, %1335
  store i32 %add90.5.95, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.95 = tail call i32 @rand() #2
  %rem89.6.95 = srem i32 %call88.6.95, 100
  %1336 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.95 = add nsw i32 %rem89.6.95, %1336
  store i32 %add90.6.95, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.95 = tail call i32 @rand() #2
  %rem89.7.95 = srem i32 %call88.7.95, 100
  %1337 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.95 = add nsw i32 %rem89.7.95, %1337
  store i32 %add90.7.95, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.95 = tail call i32 @rand() #2
  %rem89.8.95 = srem i32 %call88.8.95, 100
  %1338 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.95 = add nsw i32 %rem89.8.95, %1338
  store i32 %add90.8.95, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.95 = tail call i32 @rand() #2
  %rem89.9.95 = srem i32 %call88.9.95, 100
  %1339 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.95 = add nsw i32 %rem89.9.95, %1339
  store i32 %add90.9.95, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.95 = mul nsw i32 %add74.95, %rem15
  %add81.95 = add nsw i32 %rem80.95, %rem78
  %.pre395 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre396 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %if.then73.95
  %1340 = phi i32 [ %1326, %if.end.95 ], [ %add90.9.95, %if.then73.95 ]
  %1341 = phi i32 [ %rem32.95, %if.end.95 ], [ %.pre396, %if.then73.95 ]
  %1342 = phi i32 [ %add33.95, %if.end.95 ], [ %.pre395, %if.then73.95 ]
  %var4.1.95 = phi i32 [ %var4.1.94, %if.end.95 ], [ %mul75.95, %if.then73.95 ]
  %var5.1.95 = phi i32 [ %var5.1.94, %if.end.95 ], [ %rem9, %if.then73.95 ]
  %var1.1.95 = phi i32 [ %var1.1.94, %if.end.95 ], [ %add81.95, %if.then73.95 ]
  %inc101.95 = add nuw nsw i32 %i25.0178, 96
  %mul.96 = mul nsw i32 %1342, 3
  %div.96 = sdiv i32 %1341, 2
  %sub.96 = sub nsw i32 %mul.96, %div.96
  store i32 %sub.96, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.96 = add nsw i32 %sub.96, %1342
  %rem32.96 = srem i32 %add31.96, 100
  store i32 %rem32.96, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.96 = or i32 %rem32.96, 1
  %add33.96 = add nsw i32 %or.96, %rem17
  store i32 %add33.96, i32* @main.hot_data.2, align 4, !tbaa !7
  %1343 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %add42.96 = add nsw i32 %add33.96, %1343
  store i32 %add42.96, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %rem70.96 = urem i32 %inc101.95, 1000
  %cmp71.96 = icmp eq i32 %rem70.96, 0
  br i1 %cmp71.96, label %if.then73.96, label %if.end.97

if.then73.96:                                     ; preds = %if.end.96
  %add74.96 = add nsw i32 %var1.1.95, %rem13
  %call79.96 = tail call i32 @rand() #2
  %rem80.96 = srem i32 %call79.96, 5
  %call88.96 = tail call i32 @rand() #2
  %rem89.96 = srem i32 %call88.96, 100
  %1344 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.96 = add nsw i32 %rem89.96, %1344
  store i32 %add90.96, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.96 = tail call i32 @rand() #2
  %rem89.1.96 = srem i32 %call88.1.96, 100
  %1345 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.96 = add nsw i32 %rem89.1.96, %1345
  store i32 %add90.1.96, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.96 = tail call i32 @rand() #2
  %rem89.2.96 = srem i32 %call88.2.96, 100
  %1346 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.96 = add nsw i32 %rem89.2.96, %1346
  store i32 %add90.2.96, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.96 = tail call i32 @rand() #2
  %rem89.3.96 = srem i32 %call88.3.96, 100
  %1347 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.96 = add nsw i32 %rem89.3.96, %1347
  store i32 %add90.3.96, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.96 = tail call i32 @rand() #2
  %rem89.4.96 = srem i32 %call88.4.96, 100
  %1348 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.96 = add nsw i32 %rem89.4.96, %1348
  store i32 %add90.4.96, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.96 = tail call i32 @rand() #2
  %rem89.5.96 = srem i32 %call88.5.96, 100
  %1349 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.96 = add nsw i32 %rem89.5.96, %1349
  store i32 %add90.5.96, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.96 = tail call i32 @rand() #2
  %rem89.6.96 = srem i32 %call88.6.96, 100
  %1350 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.96 = add nsw i32 %rem89.6.96, %1350
  store i32 %add90.6.96, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.96 = tail call i32 @rand() #2
  %rem89.7.96 = srem i32 %call88.7.96, 100
  %1351 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.96 = add nsw i32 %rem89.7.96, %1351
  store i32 %add90.7.96, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.96 = tail call i32 @rand() #2
  %rem89.8.96 = srem i32 %call88.8.96, 100
  %1352 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.96 = add nsw i32 %rem89.8.96, %1352
  store i32 %add90.8.96, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.96 = tail call i32 @rand() #2
  %rem89.9.96 = srem i32 %call88.9.96, 100
  %1353 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.96 = add nsw i32 %rem89.9.96, %1353
  store i32 %add90.9.96, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.96 = mul nsw i32 %add74.96, %rem15
  %add81.96 = add nsw i32 %rem80.96, %rem78
  %.pre397 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre398 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then73.96
  %1354 = phi i32 [ %1340, %if.end.96 ], [ %add90.9.96, %if.then73.96 ]
  %1355 = phi i32 [ %rem32.96, %if.end.96 ], [ %.pre398, %if.then73.96 ]
  %1356 = phi i32 [ %add33.96, %if.end.96 ], [ %.pre397, %if.then73.96 ]
  %var4.1.96 = phi i32 [ %var4.1.95, %if.end.96 ], [ %mul75.96, %if.then73.96 ]
  %var5.1.96 = phi i32 [ %var5.1.95, %if.end.96 ], [ %rem9, %if.then73.96 ]
  %var1.1.96 = phi i32 [ %var1.1.95, %if.end.96 ], [ %add81.96, %if.then73.96 ]
  %inc101.96 = add nuw nsw i32 %i25.0178, 97
  %mul.97 = mul nsw i32 %1356, 3
  %div.97 = sdiv i32 %1355, 2
  %sub.97 = sub nsw i32 %mul.97, %div.97
  store i32 %sub.97, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.97 = add nsw i32 %sub.97, %1356
  %rem32.97 = srem i32 %add31.97, 100
  store i32 %rem32.97, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.97 = or i32 %rem32.97, 1
  %add33.97 = add nsw i32 %or.97, %rem17
  store i32 %add33.97, i32* @main.hot_data.2, align 4, !tbaa !7
  %1357 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %add42.97 = add nsw i32 %add33.97, %1357
  store i32 %add42.97, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %rem70.97 = urem i32 %inc101.96, 1000
  %cmp71.97 = icmp eq i32 %rem70.97, 0
  br i1 %cmp71.97, label %if.then73.97, label %if.end.98

if.then73.97:                                     ; preds = %if.end.97
  %add74.97 = add nsw i32 %var1.1.96, %rem13
  %call79.97 = tail call i32 @rand() #2
  %rem80.97 = srem i32 %call79.97, 5
  %call88.97 = tail call i32 @rand() #2
  %rem89.97 = srem i32 %call88.97, 100
  %1358 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.97 = add nsw i32 %rem89.97, %1358
  store i32 %add90.97, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.97 = tail call i32 @rand() #2
  %rem89.1.97 = srem i32 %call88.1.97, 100
  %1359 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.97 = add nsw i32 %rem89.1.97, %1359
  store i32 %add90.1.97, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.97 = tail call i32 @rand() #2
  %rem89.2.97 = srem i32 %call88.2.97, 100
  %1360 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.97 = add nsw i32 %rem89.2.97, %1360
  store i32 %add90.2.97, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.97 = tail call i32 @rand() #2
  %rem89.3.97 = srem i32 %call88.3.97, 100
  %1361 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.97 = add nsw i32 %rem89.3.97, %1361
  store i32 %add90.3.97, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.97 = tail call i32 @rand() #2
  %rem89.4.97 = srem i32 %call88.4.97, 100
  %1362 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.97 = add nsw i32 %rem89.4.97, %1362
  store i32 %add90.4.97, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.97 = tail call i32 @rand() #2
  %rem89.5.97 = srem i32 %call88.5.97, 100
  %1363 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.97 = add nsw i32 %rem89.5.97, %1363
  store i32 %add90.5.97, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.97 = tail call i32 @rand() #2
  %rem89.6.97 = srem i32 %call88.6.97, 100
  %1364 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.97 = add nsw i32 %rem89.6.97, %1364
  store i32 %add90.6.97, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.97 = tail call i32 @rand() #2
  %rem89.7.97 = srem i32 %call88.7.97, 100
  %1365 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.97 = add nsw i32 %rem89.7.97, %1365
  store i32 %add90.7.97, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.97 = tail call i32 @rand() #2
  %rem89.8.97 = srem i32 %call88.8.97, 100
  %1366 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.97 = add nsw i32 %rem89.8.97, %1366
  store i32 %add90.8.97, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.97 = tail call i32 @rand() #2
  %rem89.9.97 = srem i32 %call88.9.97, 100
  %1367 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.97 = add nsw i32 %rem89.9.97, %1367
  store i32 %add90.9.97, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.97 = mul nsw i32 %add74.97, %rem15
  %add81.97 = add nsw i32 %rem80.97, %rem78
  %.pre399 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre400 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then73.97
  %1368 = phi i32 [ %1354, %if.end.97 ], [ %add90.9.97, %if.then73.97 ]
  %1369 = phi i32 [ %rem32.97, %if.end.97 ], [ %.pre400, %if.then73.97 ]
  %1370 = phi i32 [ %add33.97, %if.end.97 ], [ %.pre399, %if.then73.97 ]
  %var4.1.97 = phi i32 [ %var4.1.96, %if.end.97 ], [ %mul75.97, %if.then73.97 ]
  %var5.1.97 = phi i32 [ %var5.1.96, %if.end.97 ], [ %rem9, %if.then73.97 ]
  %var1.1.97 = phi i32 [ %var1.1.96, %if.end.97 ], [ %add81.97, %if.then73.97 ]
  %inc101.97 = add nuw nsw i32 %i25.0178, 98
  %mul.98 = mul nsw i32 %1370, 3
  %div.98 = sdiv i32 %1369, 2
  %sub.98 = sub nsw i32 %mul.98, %div.98
  store i32 %sub.98, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.98 = add nsw i32 %sub.98, %1370
  %rem32.98 = srem i32 %add31.98, 100
  store i32 %rem32.98, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.98 = or i32 %rem32.98, 1
  %add33.98 = add nsw i32 %or.98, %rem17
  store i32 %add33.98, i32* @main.hot_data.2, align 4, !tbaa !7
  %1371 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %add42.98 = add nsw i32 %add33.98, %1371
  store i32 %add42.98, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %rem70.98 = urem i32 %inc101.97, 1000
  %cmp71.98 = icmp eq i32 %rem70.98, 0
  br i1 %cmp71.98, label %if.then73.98, label %if.end.99

if.then73.98:                                     ; preds = %if.end.98
  %add74.98 = add nsw i32 %var1.1.97, %rem13
  %call79.98 = tail call i32 @rand() #2
  %rem80.98 = srem i32 %call79.98, 5
  %call88.98 = tail call i32 @rand() #2
  %rem89.98 = srem i32 %call88.98, 100
  %1372 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.98 = add nsw i32 %rem89.98, %1372
  store i32 %add90.98, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.98 = tail call i32 @rand() #2
  %rem89.1.98 = srem i32 %call88.1.98, 100
  %1373 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.98 = add nsw i32 %rem89.1.98, %1373
  store i32 %add90.1.98, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.98 = tail call i32 @rand() #2
  %rem89.2.98 = srem i32 %call88.2.98, 100
  %1374 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.98 = add nsw i32 %rem89.2.98, %1374
  store i32 %add90.2.98, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.98 = tail call i32 @rand() #2
  %rem89.3.98 = srem i32 %call88.3.98, 100
  %1375 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.98 = add nsw i32 %rem89.3.98, %1375
  store i32 %add90.3.98, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.98 = tail call i32 @rand() #2
  %rem89.4.98 = srem i32 %call88.4.98, 100
  %1376 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.98 = add nsw i32 %rem89.4.98, %1376
  store i32 %add90.4.98, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.98 = tail call i32 @rand() #2
  %rem89.5.98 = srem i32 %call88.5.98, 100
  %1377 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.98 = add nsw i32 %rem89.5.98, %1377
  store i32 %add90.5.98, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.98 = tail call i32 @rand() #2
  %rem89.6.98 = srem i32 %call88.6.98, 100
  %1378 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.98 = add nsw i32 %rem89.6.98, %1378
  store i32 %add90.6.98, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.98 = tail call i32 @rand() #2
  %rem89.7.98 = srem i32 %call88.7.98, 100
  %1379 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.98 = add nsw i32 %rem89.7.98, %1379
  store i32 %add90.7.98, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.98 = tail call i32 @rand() #2
  %rem89.8.98 = srem i32 %call88.8.98, 100
  %1380 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.98 = add nsw i32 %rem89.8.98, %1380
  store i32 %add90.8.98, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.98 = tail call i32 @rand() #2
  %rem89.9.98 = srem i32 %call88.9.98, 100
  %1381 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.98 = add nsw i32 %rem89.9.98, %1381
  store i32 %add90.9.98, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.98 = mul nsw i32 %add74.98, %rem15
  %add81.98 = add nsw i32 %rem80.98, %rem78
  %.pre401 = load i32, i32* @main.hot_data.2, align 4, !tbaa !7
  %.pre402 = load i32, i32* @main.hot_data.4, align 4, !tbaa !8
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then73.98
  %1382 = phi i32 [ %1368, %if.end.98 ], [ %add90.9.98, %if.then73.98 ]
  %1383 = phi i32 [ %rem32.98, %if.end.98 ], [ %.pre402, %if.then73.98 ]
  %1384 = phi i32 [ %add33.98, %if.end.98 ], [ %.pre401, %if.then73.98 ]
  %var4.1.98 = phi i32 [ %var4.1.97, %if.end.98 ], [ %mul75.98, %if.then73.98 ]
  %var5.1.98 = phi i32 [ %var5.1.97, %if.end.98 ], [ %rem9, %if.then73.98 ]
  %var1.1.98 = phi i32 [ %var1.1.97, %if.end.98 ], [ %add81.98, %if.then73.98 ]
  %inc101.98 = add nuw nsw i32 %i25.0178, 99
  %mul.99 = mul nsw i32 %1384, 3
  %div.99 = sdiv i32 %1383, 2
  %sub.99 = sub nsw i32 %mul.99, %div.99
  store i32 %sub.99, i32* @main.hot_data.0, align 4, !tbaa !2
  %add31.99 = add nsw i32 %sub.99, %1384
  %rem32.99 = srem i32 %add31.99, 100
  store i32 %rem32.99, i32* @main.hot_data.4, align 4, !tbaa !8
  %or.99 = or i32 %rem32.99, 1
  %add33.99 = add nsw i32 %or.99, %rem17
  store i32 %add33.99, i32* @main.hot_data.2, align 4, !tbaa !7
  %add42.99 = add nsw i32 %add33.99, %1382
  store i32 %add42.99, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %rem70.99 = urem i32 %inc101.98, 1000
  %cmp71.99 = icmp eq i32 %rem70.99, 0
  br i1 %cmp71.99, label %if.then73.99, label %for.inc100.99

if.then73.99:                                     ; preds = %if.end.99
  %add74.99 = add nsw i32 %var1.1.98, %rem13
  %call79.99 = tail call i32 @rand() #2
  %rem80.99 = srem i32 %call79.99, 5
  %call88.99 = tail call i32 @rand() #2
  %rem89.99 = srem i32 %call88.99, 100
  %1385 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.99 = add nsw i32 %rem89.99, %1385
  store i32 %add90.99, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !9
  %call88.1.99 = tail call i32 @rand() #2
  %rem89.1.99 = srem i32 %call88.1.99, 100
  %1386 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.1.99 = add nsw i32 %rem89.1.99, %1386
  store i32 %add90.1.99, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !9
  %call88.2.99 = tail call i32 @rand() #2
  %rem89.2.99 = srem i32 %call88.2.99, 100
  %1387 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.2.99 = add nsw i32 %rem89.2.99, %1387
  store i32 %add90.2.99, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !9
  %call88.3.99 = tail call i32 @rand() #2
  %rem89.3.99 = srem i32 %call88.3.99, 100
  %1388 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.3.99 = add nsw i32 %rem89.3.99, %1388
  store i32 %add90.3.99, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !9
  %call88.4.99 = tail call i32 @rand() #2
  %rem89.4.99 = srem i32 %call88.4.99, 100
  %1389 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.4.99 = add nsw i32 %rem89.4.99, %1389
  store i32 %add90.4.99, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !9
  %call88.5.99 = tail call i32 @rand() #2
  %rem89.5.99 = srem i32 %call88.5.99, 100
  %1390 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.5.99 = add nsw i32 %rem89.5.99, %1390
  store i32 %add90.5.99, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !9
  %call88.6.99 = tail call i32 @rand() #2
  %rem89.6.99 = srem i32 %call88.6.99, 100
  %1391 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.6.99 = add nsw i32 %rem89.6.99, %1391
  store i32 %add90.6.99, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !9
  %call88.7.99 = tail call i32 @rand() #2
  %rem89.7.99 = srem i32 %call88.7.99, 100
  %1392 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.7.99 = add nsw i32 %rem89.7.99, %1392
  store i32 %add90.7.99, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !9
  %call88.8.99 = tail call i32 @rand() #2
  %rem89.8.99 = srem i32 %call88.8.99, 100
  %1393 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.8.99 = add nsw i32 %rem89.8.99, %1393
  store i32 %add90.8.99, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !9
  %call88.9.99 = tail call i32 @rand() #2
  %rem89.9.99 = srem i32 %call88.9.99, 100
  %1394 = load i32, i32* @main.hot_data.0, align 4, !tbaa !2
  %add90.9.99 = add nsw i32 %rem89.9.99, %1394
  store i32 %add90.9.99, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !9
  %mul75.99 = mul nsw i32 %add74.99, %rem15
  %add81.99 = add nsw i32 %rem80.99, %rem78
  br label %for.inc100.99

for.inc100.99:                                    ; preds = %if.then73.99, %if.end.99
  %1395 = phi i32 [ %sub.99, %if.end.99 ], [ %1394, %if.then73.99 ]
  %var4.1.99 = phi i32 [ %var4.1.98, %if.end.99 ], [ %mul75.99, %if.then73.99 ]
  %var5.1.99 = phi i32 [ %var5.1.98, %if.end.99 ], [ %rem9, %if.then73.99 ]
  %var1.1.99 = phi i32 [ %var1.1.98, %if.end.99 ], [ %add81.99, %if.then73.99 ]
  %inc101.99 = add nuw nsw i32 %i25.0178, 100
  %exitcond.99 = icmp eq i32 %inc101.99, 40000
  br i1 %exitcond.99, label %for.cond.cleanup29, label %if.end, !llvm.loop !10
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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
