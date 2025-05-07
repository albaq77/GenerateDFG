; ModuleID = 'Stack_LocalArray.c'
source_filename = "Stack_LocalArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@main.hot_data.0 = internal unnamed_addr global i32 0, align 4
@main.hot_data.1 = internal unnamed_addr global i32 0, align 4
@main.hot_data.2 = internal unnamed_addr global i32 0, align 4
@localArray = dso_local local_unnamed_addr global [10 x [10 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [32 x i8] c"\E6\A0\B8\E5\BF\83\E5\8F\98\E9\87\8F\EF\BC\9A\0Aa=%d\0Ab=%d\0Ac=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\E4\B8\AD\E9\97\B4\E5\8F\98\E9\87\8F\EF\BC\9Ax=%d y=%d z=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\E5\85\B6\E4\BB\96\E5\8F\98\E9\87\8F\EF\BC\9Avar4=%d var5=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"array: localArray[%d]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call i64 @time(i64* noundef null) #3
  %conv = trunc i64 %call to i32
  tail call void @srand(i32 noundef %conv) #3
  %call1 = tail call i32 @rand() #3
  %rem = srem i32 %call1, 100
  store i32 %rem, i32* @main.hot_data.0, align 4, !tbaa !5
  %call2 = tail call i32 @rand() #3
  %rem3 = srem i32 %call2, 100
  store i32 %rem3, i32* @main.hot_data.1, align 4, !tbaa !10
  %call4 = tail call i32 @rand() #3
  %rem5 = srem i32 %call4, 100
  store i32 %rem5, i32* @main.hot_data.2, align 4, !tbaa !11
  %call6 = tail call i32 @rand() #3
  %call8 = tail call i32 @rand() #3
  %call10 = tail call i32 @rand() #3
  %call12 = tail call i32 @rand() #3
  %call14 = tail call i32 @rand() #3
  %call16 = tail call i32 @rand() #3
  %call18 = tail call i32 @rand() #3
  %call21 = tail call i32 @rand() #3
  %rem22 = srem i32 %call21, 100
  %add = add nsw i32 %rem22, 1
  store i32 %add, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %call21.1 = tail call i32 @rand() #3
  %rem22.1 = srem i32 %call21.1, 100
  %add.1 = add nsw i32 %rem22.1, 1
  store i32 %add.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %call21.2 = tail call i32 @rand() #3
  %rem22.2 = srem i32 %call21.2, 100
  %add.2 = add nsw i32 %rem22.2, 1
  store i32 %add.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %call21.3 = tail call i32 @rand() #3
  %rem22.3 = srem i32 %call21.3, 100
  %add.3 = add nsw i32 %rem22.3, 1
  store i32 %add.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %call21.4 = tail call i32 @rand() #3
  %rem22.4 = srem i32 %call21.4, 100
  %add.4 = add nsw i32 %rem22.4, 1
  store i32 %add.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %call21.5 = tail call i32 @rand() #3
  %rem22.5 = srem i32 %call21.5, 100
  %add.5 = add nsw i32 %rem22.5, 1
  store i32 %add.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %call21.6 = tail call i32 @rand() #3
  %rem22.6 = srem i32 %call21.6, 100
  %add.6 = add nsw i32 %rem22.6, 1
  store i32 %add.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %call21.7 = tail call i32 @rand() #3
  %rem22.7 = srem i32 %call21.7, 100
  %add.7 = add nsw i32 %rem22.7, 1
  store i32 %add.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %call21.8 = tail call i32 @rand() #3
  %rem22.8 = srem i32 %call21.8, 100
  %add.8 = add nsw i32 %rem22.8, 1
  store i32 %add.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %call21.9 = tail call i32 @rand() #3
  %rem22.9 = srem i32 %call21.9, 100
  %add.9 = add nsw i32 %rem22.9, 1
  store i32 %add.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %rem7 = srem i32 %call6, 100
  %rem9 = srem i32 %call8, 100
  %rem11 = srem i32 %call10, 100
  %rem13 = srem i32 %call12, 100
  %rem15 = srem i32 %call14, 100
  %rem17 = srem i32 %call16, 100
  %rem19 = srem i32 %call18, 100
  %rem78.lhs.trunc = trunc i32 %rem9 to i8
  %rem78191 = srem i8 %rem78.lhs.trunc, 10
  %rem78.sext = sext i8 %rem78191 to i32
  br label %for.body30

for.cond.cleanup29:                               ; preds = %for.inc100.159
  %0 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %1 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %call103 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %1276, i32 noundef %0, i32 noundef %1)
  %call107 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef %mid_vars.sroa.0.1.159, i32 noundef %rem9, i32 noundef %mid_vars.sroa.10166.1.159)
  %call108 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 noundef %var4.1.159, i32 noundef %var5.1.159)
  %2 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %call119 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 0, i32 noundef %2)
  %3 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %call119.1 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 1, i32 noundef %3)
  %4 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %call119.2 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 2, i32 noundef %4)
  %5 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %call119.3 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 3, i32 noundef %5)
  %6 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %call119.4 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 4, i32 noundef %6)
  %7 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %call119.5 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 5, i32 noundef %7)
  %8 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %call119.6 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 6, i32 noundef %8)
  %9 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %call119.7 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 7, i32 noundef %9)
  %10 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %call119.8 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 8, i32 noundef %10)
  %11 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %call119.9 = tail call i32 (i8*, ...) @printf(i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef 9, i32 noundef %11)
  ret i32 0

for.body30:                                       ; preds = %for.inc100.159, %entry
  %i25.0182 = phi i32 [ 0, %entry ], [ %inc101.159, %for.inc100.159 ]
  %local2.0181 = phi i32 [ %rem19, %entry ], [ %local2.1.159, %for.inc100.159 ]
  %mid_vars.sroa.10166.0180 = phi i32 [ undef, %entry ], [ %mid_vars.sroa.10166.1.159, %for.inc100.159 ]
  %mid_vars.sroa.0.0179 = phi i32 [ %rem7, %entry ], [ %mid_vars.sroa.0.1.159, %for.inc100.159 ]
  %var1.0178 = phi i32 [ %rem11, %entry ], [ %var1.1.159, %for.inc100.159 ]
  %var5.0177 = phi i32 [ undef, %entry ], [ %var5.1.159, %for.inc100.159 ]
  %var4.0176 = phi i32 [ undef, %entry ], [ %var4.1.159, %for.inc100.159 ]
  %12 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul = mul nsw i32 %12, 3
  %13 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg = sdiv i32 %13, -2
  %sub = add i32 %div.neg, %mul
  store i32 %sub, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31 = add nsw i32 %sub, %12
  %rem32 = srem i32 %add31, 100
  store i32 %rem32, i32* @main.hot_data.2, align 4, !tbaa !11
  %or = or i32 %rem32, 1
  %add33 = add nsw i32 %or, %rem17
  store i32 %add33, i32* @main.hot_data.1, align 4, !tbaa !10
  %14 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42 = add nsw i32 %add33, %14
  store i32 %add42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %rem43.lhs.trunc = trunc i32 %i25.0182 to i16
  %rem43171 = urem i16 %rem43.lhs.trunc, 100
  %cmp44 = icmp eq i16 %rem43171, 0
  br i1 %cmp44, label %if.then, label %if.end

if.then:                                          ; preds = %for.body30
  %add48 = add nsw i32 %mid_vars.sroa.0.0179, %rem9
  %mul49 = mul nsw i32 %local2.0181, %add48
  %shr = ashr i32 %mul49, 1
  %add51 = add nsw i32 %sub, %shr
  %call53 = tail call i32 @rand() #3
  %rem54 = srem i32 %call53, 5
  %add55 = add nsw i32 %rem54, %rem17
  %rem56 = srem i32 %add55, 100
  %15 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59 = add nsw i32 %15, %shr
  %16 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66 = add nsw i32 %add59, %16
  store i32 %add66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body30
  %mid_vars.sroa.0.1 = phi i32 [ %add51, %if.then ], [ %mid_vars.sroa.0.0179, %for.body30 ]
  %mid_vars.sroa.10166.1 = phi i32 [ %mul49, %if.then ], [ %mid_vars.sroa.10166.0180, %for.body30 ]
  %local2.1 = phi i32 [ %rem56, %if.then ], [ %local2.0181, %for.body30 ]
  %rem70172 = urem i16 %rem43.lhs.trunc, 1000
  %cmp71 = icmp eq i16 %rem70172, 0
  br i1 %cmp71, label %if.then73, label %for.inc100

if.then73:                                        ; preds = %if.end
  %add74 = add nsw i32 %var1.0178, %rem13
  %call79 = tail call i32 @rand() #3
  %rem80 = srem i32 %call79, 5
  br label %for.body87

for.body87:                                       ; preds = %if.then73, %for.body87
  %indvars.iv = phi i64 [ 0, %if.then73 ], [ %indvars.iv.next, %for.body87 ]
  %call88 = tail call i32 @rand() #3
  %rem89 = srem i32 %call88, 100
  %17 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90 = add nsw i32 %rem89, %17
  %rem93.lhs.trunc = trunc i64 %indvars.iv to i8
  %rem93173 = urem i8 %rem93.lhs.trunc, 10
  %idxprom94 = zext i8 %rem93173 to i64
  %arrayidx95 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv, i64 %idxprom94
  store i32 %add90, i32* %arrayidx95, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.inc100.loopexit, label %for.body87, !llvm.loop !13

for.inc100.loopexit:                              ; preds = %for.body87
  %mul75 = mul nsw i32 %add74, %rem15
  %add81 = add nsw i32 %rem80, %rem78.sext
  br label %for.inc100

for.inc100:                                       ; preds = %for.inc100.loopexit, %if.end
  %var4.1 = phi i32 [ %var4.0176, %if.end ], [ %mul75, %for.inc100.loopexit ]
  %var5.1 = phi i32 [ %var5.0177, %if.end ], [ %rem9, %for.inc100.loopexit ]
  %var1.1 = phi i32 [ %var1.0178, %if.end ], [ %add81, %for.inc100.loopexit ]
  %18 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.1 = mul nsw i32 %18, 3
  %19 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.1 = sdiv i32 %19, -2
  %sub.1 = add i32 %div.neg.1, %mul.1
  store i32 %sub.1, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.1 = add nsw i32 %sub.1, %18
  %rem32.1 = srem i32 %add31.1, 100
  store i32 %rem32.1, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.1 = or i32 %rem32.1, 1
  %add33.1 = add nsw i32 %or.1, %rem17
  store i32 %add33.1, i32* @main.hot_data.1, align 4, !tbaa !10
  %20 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.1 = add nsw i32 %add33.1, %20
  store i32 %add42.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %21 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.1 = or i16 %21, 1
  %rem43171.1 = urem i16 %rem43.lhs.trunc.1, 100
  %cmp44.1 = icmp eq i16 %rem43171.1, 0
  br i1 %cmp44.1, label %if.then.1, label %if.end.1

if.then.1:                                        ; preds = %for.inc100
  %add48.1 = add nsw i32 %mid_vars.sroa.0.1, %rem9
  %mul49.1 = mul nsw i32 %local2.1, %add48.1
  %shr.1 = ashr i32 %mul49.1, 1
  %add51.1 = add nsw i32 %sub.1, %shr.1
  %call53.1 = tail call i32 @rand() #3
  %rem54.1 = srem i32 %call53.1, 5
  %add55.1 = add nsw i32 %rem54.1, %rem17
  %rem56.1 = srem i32 %add55.1, 100
  %22 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.1 = add nsw i32 %22, %shr.1
  %23 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.1 = add nsw i32 %add59.1, %23
  store i32 %add66.1, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %24 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %24, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %for.inc100
  %mid_vars.sroa.0.1.1 = phi i32 [ %add51.1, %if.then.1 ], [ %mid_vars.sroa.0.1, %for.inc100 ]
  %mid_vars.sroa.10166.1.1 = phi i32 [ %mul49.1, %if.then.1 ], [ %mid_vars.sroa.10166.1, %for.inc100 ]
  %local2.1.1 = phi i32 [ %rem56.1, %if.then.1 ], [ %local2.1, %for.inc100 ]
  %rem70172.1 = urem i16 %rem43.lhs.trunc.1, 1000
  %cmp71.1 = icmp eq i16 %rem70172.1, 0
  br i1 %cmp71.1, label %if.then73.1, label %for.inc100.1

if.then73.1:                                      ; preds = %if.end.1
  %add74.1 = add nsw i32 %var1.1, %rem13
  %call79.1 = tail call i32 @rand() #3
  %rem80.1 = srem i32 %call79.1, 5
  br label %for.body87.1

for.body87.1:                                     ; preds = %for.body87.1, %if.then73.1
  %indvars.iv.1 = phi i64 [ 0, %if.then73.1 ], [ %indvars.iv.next.1, %for.body87.1 ]
  %call88.1 = tail call i32 @rand() #3
  %rem89.1 = srem i32 %call88.1, 100
  %25 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.1 = add nsw i32 %rem89.1, %25
  %rem93.lhs.trunc.1 = trunc i64 %indvars.iv.1 to i8
  %rem93173.1 = urem i8 %rem93.lhs.trunc.1, 10
  %idxprom94.1 = zext i8 %rem93173.1 to i64
  %arrayidx95.1 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.1, i64 %idxprom94.1
  store i32 %add90.1, i32* %arrayidx95.1, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1
  %exitcond.1.not = icmp eq i64 %indvars.iv.next.1, 10
  br i1 %exitcond.1.not, label %for.inc100.loopexit.1, label %for.body87.1, !llvm.loop !13

for.inc100.loopexit.1:                            ; preds = %for.body87.1
  %mul75.1 = mul nsw i32 %add74.1, %rem15
  %add81.1 = add nsw i32 %rem80.1, %rem78.sext
  br label %for.inc100.1

for.inc100.1:                                     ; preds = %for.inc100.loopexit.1, %if.end.1
  %var4.1.1 = phi i32 [ %var4.1, %if.end.1 ], [ %mul75.1, %for.inc100.loopexit.1 ]
  %var5.1.1 = phi i32 [ %var5.1, %if.end.1 ], [ %rem9, %for.inc100.loopexit.1 ]
  %var1.1.1 = phi i32 [ %var1.1, %if.end.1 ], [ %add81.1, %for.inc100.loopexit.1 ]
  %26 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.2 = mul nsw i32 %26, 3
  %27 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.2 = sdiv i32 %27, -2
  %sub.2 = add i32 %div.neg.2, %mul.2
  store i32 %sub.2, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.2 = add nsw i32 %sub.2, %26
  %rem32.2 = srem i32 %add31.2, 100
  store i32 %rem32.2, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.2 = or i32 %rem32.2, 1
  %add33.2 = add nsw i32 %or.2, %rem17
  store i32 %add33.2, i32* @main.hot_data.1, align 4, !tbaa !10
  %28 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.2 = add nsw i32 %add33.2, %28
  store i32 %add42.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %29 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.2 = or i16 %29, 2
  %rem43171.2 = urem i16 %rem43.lhs.trunc.2, 100
  %cmp44.2 = icmp eq i16 %rem43171.2, 0
  br i1 %cmp44.2, label %if.then.2, label %if.end.2

if.then.2:                                        ; preds = %for.inc100.1
  %add48.2 = add nsw i32 %mid_vars.sroa.0.1.1, %rem9
  %mul49.2 = mul nsw i32 %local2.1.1, %add48.2
  %shr.2 = ashr i32 %mul49.2, 1
  %add51.2 = add nsw i32 %sub.2, %shr.2
  %call53.2 = tail call i32 @rand() #3
  %rem54.2 = srem i32 %call53.2, 5
  %add55.2 = add nsw i32 %rem54.2, %rem17
  %rem56.2 = srem i32 %add55.2, 100
  %30 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.2 = add nsw i32 %30, %shr.2
  %31 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.2 = add nsw i32 %add59.2, %31
  store i32 %add66.2, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %32 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %32, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %for.inc100.1
  %mid_vars.sroa.0.1.2 = phi i32 [ %add51.2, %if.then.2 ], [ %mid_vars.sroa.0.1.1, %for.inc100.1 ]
  %mid_vars.sroa.10166.1.2 = phi i32 [ %mul49.2, %if.then.2 ], [ %mid_vars.sroa.10166.1.1, %for.inc100.1 ]
  %local2.1.2 = phi i32 [ %rem56.2, %if.then.2 ], [ %local2.1.1, %for.inc100.1 ]
  %rem70172.2 = urem i16 %rem43.lhs.trunc.2, 1000
  %cmp71.2 = icmp eq i16 %rem70172.2, 0
  br i1 %cmp71.2, label %if.then73.2, label %for.inc100.2

if.then73.2:                                      ; preds = %if.end.2
  %add74.2 = add nsw i32 %var1.1.1, %rem13
  %call79.2 = tail call i32 @rand() #3
  %rem80.2 = srem i32 %call79.2, 5
  br label %for.body87.2

for.body87.2:                                     ; preds = %for.body87.2, %if.then73.2
  %indvars.iv.2 = phi i64 [ 0, %if.then73.2 ], [ %indvars.iv.next.2, %for.body87.2 ]
  %call88.2 = tail call i32 @rand() #3
  %rem89.2 = srem i32 %call88.2, 100
  %33 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.2 = add nsw i32 %rem89.2, %33
  %rem93.lhs.trunc.2 = trunc i64 %indvars.iv.2 to i8
  %rem93173.2 = urem i8 %rem93.lhs.trunc.2, 10
  %idxprom94.2 = zext i8 %rem93173.2 to i64
  %arrayidx95.2 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.2, i64 %idxprom94.2
  store i32 %add90.2, i32* %arrayidx95.2, align 4, !tbaa !12
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1
  %exitcond.2.not = icmp eq i64 %indvars.iv.next.2, 10
  br i1 %exitcond.2.not, label %for.inc100.loopexit.2, label %for.body87.2, !llvm.loop !13

for.inc100.loopexit.2:                            ; preds = %for.body87.2
  %mul75.2 = mul nsw i32 %add74.2, %rem15
  %add81.2 = add nsw i32 %rem80.2, %rem78.sext
  br label %for.inc100.2

for.inc100.2:                                     ; preds = %for.inc100.loopexit.2, %if.end.2
  %var4.1.2 = phi i32 [ %var4.1.1, %if.end.2 ], [ %mul75.2, %for.inc100.loopexit.2 ]
  %var5.1.2 = phi i32 [ %var5.1.1, %if.end.2 ], [ %rem9, %for.inc100.loopexit.2 ]
  %var1.1.2 = phi i32 [ %var1.1.1, %if.end.2 ], [ %add81.2, %for.inc100.loopexit.2 ]
  %34 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.3 = mul nsw i32 %34, 3
  %35 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.3 = sdiv i32 %35, -2
  %sub.3 = add i32 %div.neg.3, %mul.3
  store i32 %sub.3, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.3 = add nsw i32 %sub.3, %34
  %rem32.3 = srem i32 %add31.3, 100
  store i32 %rem32.3, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.3 = or i32 %rem32.3, 1
  %add33.3 = add nsw i32 %or.3, %rem17
  store i32 %add33.3, i32* @main.hot_data.1, align 4, !tbaa !10
  %36 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.3 = add nsw i32 %add33.3, %36
  store i32 %add42.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %37 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.3 = or i16 %37, 3
  %rem43171.3 = urem i16 %rem43.lhs.trunc.3, 100
  %cmp44.3 = icmp eq i16 %rem43171.3, 0
  br i1 %cmp44.3, label %if.then.3, label %if.end.3

if.then.3:                                        ; preds = %for.inc100.2
  %add48.3 = add nsw i32 %mid_vars.sroa.0.1.2, %rem9
  %mul49.3 = mul nsw i32 %local2.1.2, %add48.3
  %shr.3 = ashr i32 %mul49.3, 1
  %add51.3 = add nsw i32 %sub.3, %shr.3
  %call53.3 = tail call i32 @rand() #3
  %rem54.3 = srem i32 %call53.3, 5
  %add55.3 = add nsw i32 %rem54.3, %rem17
  %rem56.3 = srem i32 %add55.3, 100
  %38 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.3 = add nsw i32 %38, %shr.3
  %39 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.3 = add nsw i32 %add59.3, %39
  store i32 %add66.3, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %40 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %40, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %for.inc100.2
  %mid_vars.sroa.0.1.3 = phi i32 [ %add51.3, %if.then.3 ], [ %mid_vars.sroa.0.1.2, %for.inc100.2 ]
  %mid_vars.sroa.10166.1.3 = phi i32 [ %mul49.3, %if.then.3 ], [ %mid_vars.sroa.10166.1.2, %for.inc100.2 ]
  %local2.1.3 = phi i32 [ %rem56.3, %if.then.3 ], [ %local2.1.2, %for.inc100.2 ]
  %rem70172.3 = urem i16 %rem43.lhs.trunc.3, 1000
  %cmp71.3 = icmp eq i16 %rem70172.3, 0
  br i1 %cmp71.3, label %if.then73.3, label %for.inc100.3

if.then73.3:                                      ; preds = %if.end.3
  %add74.3 = add nsw i32 %var1.1.2, %rem13
  %call79.3 = tail call i32 @rand() #3
  %rem80.3 = srem i32 %call79.3, 5
  br label %for.body87.3

for.body87.3:                                     ; preds = %for.body87.3, %if.then73.3
  %indvars.iv.3 = phi i64 [ 0, %if.then73.3 ], [ %indvars.iv.next.3, %for.body87.3 ]
  %call88.3 = tail call i32 @rand() #3
  %rem89.3 = srem i32 %call88.3, 100
  %41 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.3 = add nsw i32 %rem89.3, %41
  %rem93.lhs.trunc.3 = trunc i64 %indvars.iv.3 to i8
  %rem93173.3 = urem i8 %rem93.lhs.trunc.3, 10
  %idxprom94.3 = zext i8 %rem93173.3 to i64
  %arrayidx95.3 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.3, i64 %idxprom94.3
  store i32 %add90.3, i32* %arrayidx95.3, align 4, !tbaa !12
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1
  %exitcond.3.not = icmp eq i64 %indvars.iv.next.3, 10
  br i1 %exitcond.3.not, label %for.inc100.loopexit.3, label %for.body87.3, !llvm.loop !13

for.inc100.loopexit.3:                            ; preds = %for.body87.3
  %mul75.3 = mul nsw i32 %add74.3, %rem15
  %add81.3 = add nsw i32 %rem80.3, %rem78.sext
  br label %for.inc100.3

for.inc100.3:                                     ; preds = %for.inc100.loopexit.3, %if.end.3
  %var4.1.3 = phi i32 [ %var4.1.2, %if.end.3 ], [ %mul75.3, %for.inc100.loopexit.3 ]
  %var5.1.3 = phi i32 [ %var5.1.2, %if.end.3 ], [ %rem9, %for.inc100.loopexit.3 ]
  %var1.1.3 = phi i32 [ %var1.1.2, %if.end.3 ], [ %add81.3, %for.inc100.loopexit.3 ]
  %42 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.4 = mul nsw i32 %42, 3
  %43 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.4 = sdiv i32 %43, -2
  %sub.4 = add i32 %div.neg.4, %mul.4
  store i32 %sub.4, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.4 = add nsw i32 %sub.4, %42
  %rem32.4 = srem i32 %add31.4, 100
  store i32 %rem32.4, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.4 = or i32 %rem32.4, 1
  %add33.4 = add nsw i32 %or.4, %rem17
  store i32 %add33.4, i32* @main.hot_data.1, align 4, !tbaa !10
  %44 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.4 = add nsw i32 %add33.4, %44
  store i32 %add42.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %45 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.4 = or i16 %45, 4
  %rem43171.4 = urem i16 %rem43.lhs.trunc.4, 100
  %cmp44.4 = icmp eq i16 %rem43171.4, 0
  br i1 %cmp44.4, label %if.then.4, label %if.end.4

if.then.4:                                        ; preds = %for.inc100.3
  %add48.4 = add nsw i32 %mid_vars.sroa.0.1.3, %rem9
  %mul49.4 = mul nsw i32 %local2.1.3, %add48.4
  %shr.4 = ashr i32 %mul49.4, 1
  %add51.4 = add nsw i32 %sub.4, %shr.4
  %call53.4 = tail call i32 @rand() #3
  %rem54.4 = srem i32 %call53.4, 5
  %add55.4 = add nsw i32 %rem54.4, %rem17
  %rem56.4 = srem i32 %add55.4, 100
  %46 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.4 = add nsw i32 %46, %shr.4
  %47 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.4 = add nsw i32 %add59.4, %47
  store i32 %add66.4, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %48 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %48, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %for.inc100.3
  %mid_vars.sroa.0.1.4 = phi i32 [ %add51.4, %if.then.4 ], [ %mid_vars.sroa.0.1.3, %for.inc100.3 ]
  %mid_vars.sroa.10166.1.4 = phi i32 [ %mul49.4, %if.then.4 ], [ %mid_vars.sroa.10166.1.3, %for.inc100.3 ]
  %local2.1.4 = phi i32 [ %rem56.4, %if.then.4 ], [ %local2.1.3, %for.inc100.3 ]
  %rem70172.4 = urem i16 %rem43.lhs.trunc.4, 1000
  %cmp71.4 = icmp eq i16 %rem70172.4, 0
  br i1 %cmp71.4, label %if.then73.4, label %for.inc100.4

if.then73.4:                                      ; preds = %if.end.4
  %add74.4 = add nsw i32 %var1.1.3, %rem13
  %call79.4 = tail call i32 @rand() #3
  %rem80.4 = srem i32 %call79.4, 5
  br label %for.body87.4

for.body87.4:                                     ; preds = %for.body87.4, %if.then73.4
  %indvars.iv.4 = phi i64 [ 0, %if.then73.4 ], [ %indvars.iv.next.4, %for.body87.4 ]
  %call88.4 = tail call i32 @rand() #3
  %rem89.4 = srem i32 %call88.4, 100
  %49 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.4 = add nsw i32 %rem89.4, %49
  %rem93.lhs.trunc.4 = trunc i64 %indvars.iv.4 to i8
  %rem93173.4 = urem i8 %rem93.lhs.trunc.4, 10
  %idxprom94.4 = zext i8 %rem93173.4 to i64
  %arrayidx95.4 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.4, i64 %idxprom94.4
  store i32 %add90.4, i32* %arrayidx95.4, align 4, !tbaa !12
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv.4, 1
  %exitcond.4.not = icmp eq i64 %indvars.iv.next.4, 10
  br i1 %exitcond.4.not, label %for.inc100.loopexit.4, label %for.body87.4, !llvm.loop !13

for.inc100.loopexit.4:                            ; preds = %for.body87.4
  %mul75.4 = mul nsw i32 %add74.4, %rem15
  %add81.4 = add nsw i32 %rem80.4, %rem78.sext
  br label %for.inc100.4

for.inc100.4:                                     ; preds = %for.inc100.loopexit.4, %if.end.4
  %var4.1.4 = phi i32 [ %var4.1.3, %if.end.4 ], [ %mul75.4, %for.inc100.loopexit.4 ]
  %var5.1.4 = phi i32 [ %var5.1.3, %if.end.4 ], [ %rem9, %for.inc100.loopexit.4 ]
  %var1.1.4 = phi i32 [ %var1.1.3, %if.end.4 ], [ %add81.4, %for.inc100.loopexit.4 ]
  %50 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.5 = mul nsw i32 %50, 3
  %51 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.5 = sdiv i32 %51, -2
  %sub.5 = add i32 %div.neg.5, %mul.5
  store i32 %sub.5, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.5 = add nsw i32 %sub.5, %50
  %rem32.5 = srem i32 %add31.5, 100
  store i32 %rem32.5, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.5 = or i32 %rem32.5, 1
  %add33.5 = add nsw i32 %or.5, %rem17
  store i32 %add33.5, i32* @main.hot_data.1, align 4, !tbaa !10
  %52 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.5 = add nsw i32 %add33.5, %52
  store i32 %add42.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %53 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.5 = or i16 %53, 5
  %rem43171.5 = urem i16 %rem43.lhs.trunc.5, 100
  %cmp44.5 = icmp eq i16 %rem43171.5, 0
  br i1 %cmp44.5, label %if.then.5, label %if.end.5

if.then.5:                                        ; preds = %for.inc100.4
  %add48.5 = add nsw i32 %mid_vars.sroa.0.1.4, %rem9
  %mul49.5 = mul nsw i32 %local2.1.4, %add48.5
  %shr.5 = ashr i32 %mul49.5, 1
  %add51.5 = add nsw i32 %sub.5, %shr.5
  %call53.5 = tail call i32 @rand() #3
  %rem54.5 = srem i32 %call53.5, 5
  %add55.5 = add nsw i32 %rem54.5, %rem17
  %rem56.5 = srem i32 %add55.5, 100
  %54 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.5 = add nsw i32 %54, %shr.5
  %55 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.5 = add nsw i32 %add59.5, %55
  store i32 %add66.5, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %56 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %56, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %for.inc100.4
  %mid_vars.sroa.0.1.5 = phi i32 [ %add51.5, %if.then.5 ], [ %mid_vars.sroa.0.1.4, %for.inc100.4 ]
  %mid_vars.sroa.10166.1.5 = phi i32 [ %mul49.5, %if.then.5 ], [ %mid_vars.sroa.10166.1.4, %for.inc100.4 ]
  %local2.1.5 = phi i32 [ %rem56.5, %if.then.5 ], [ %local2.1.4, %for.inc100.4 ]
  %rem70172.5 = urem i16 %rem43.lhs.trunc.5, 1000
  %cmp71.5 = icmp eq i16 %rem70172.5, 0
  br i1 %cmp71.5, label %if.then73.5, label %for.inc100.5

if.then73.5:                                      ; preds = %if.end.5
  %add74.5 = add nsw i32 %var1.1.4, %rem13
  %call79.5 = tail call i32 @rand() #3
  %rem80.5 = srem i32 %call79.5, 5
  br label %for.body87.5

for.body87.5:                                     ; preds = %for.body87.5, %if.then73.5
  %indvars.iv.5 = phi i64 [ 0, %if.then73.5 ], [ %indvars.iv.next.5, %for.body87.5 ]
  %call88.5 = tail call i32 @rand() #3
  %rem89.5 = srem i32 %call88.5, 100
  %57 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.5 = add nsw i32 %rem89.5, %57
  %rem93.lhs.trunc.5 = trunc i64 %indvars.iv.5 to i8
  %rem93173.5 = urem i8 %rem93.lhs.trunc.5, 10
  %idxprom94.5 = zext i8 %rem93173.5 to i64
  %arrayidx95.5 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.5, i64 %idxprom94.5
  store i32 %add90.5, i32* %arrayidx95.5, align 4, !tbaa !12
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv.5, 1
  %exitcond.5.not = icmp eq i64 %indvars.iv.next.5, 10
  br i1 %exitcond.5.not, label %for.inc100.loopexit.5, label %for.body87.5, !llvm.loop !13

for.inc100.loopexit.5:                            ; preds = %for.body87.5
  %mul75.5 = mul nsw i32 %add74.5, %rem15
  %add81.5 = add nsw i32 %rem80.5, %rem78.sext
  br label %for.inc100.5

for.inc100.5:                                     ; preds = %for.inc100.loopexit.5, %if.end.5
  %var4.1.5 = phi i32 [ %var4.1.4, %if.end.5 ], [ %mul75.5, %for.inc100.loopexit.5 ]
  %var5.1.5 = phi i32 [ %var5.1.4, %if.end.5 ], [ %rem9, %for.inc100.loopexit.5 ]
  %var1.1.5 = phi i32 [ %var1.1.4, %if.end.5 ], [ %add81.5, %for.inc100.loopexit.5 ]
  %58 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.6 = mul nsw i32 %58, 3
  %59 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.6 = sdiv i32 %59, -2
  %sub.6 = add i32 %div.neg.6, %mul.6
  store i32 %sub.6, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.6 = add nsw i32 %sub.6, %58
  %rem32.6 = srem i32 %add31.6, 100
  store i32 %rem32.6, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.6 = or i32 %rem32.6, 1
  %add33.6 = add nsw i32 %or.6, %rem17
  store i32 %add33.6, i32* @main.hot_data.1, align 4, !tbaa !10
  %60 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.6 = add nsw i32 %add33.6, %60
  store i32 %add42.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %61 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.6 = or i16 %61, 6
  %rem43171.6 = urem i16 %rem43.lhs.trunc.6, 100
  %cmp44.6 = icmp eq i16 %rem43171.6, 0
  br i1 %cmp44.6, label %if.then.6, label %if.end.6

if.then.6:                                        ; preds = %for.inc100.5
  %add48.6 = add nsw i32 %mid_vars.sroa.0.1.5, %rem9
  %mul49.6 = mul nsw i32 %local2.1.5, %add48.6
  %shr.6 = ashr i32 %mul49.6, 1
  %add51.6 = add nsw i32 %sub.6, %shr.6
  %call53.6 = tail call i32 @rand() #3
  %rem54.6 = srem i32 %call53.6, 5
  %add55.6 = add nsw i32 %rem54.6, %rem17
  %rem56.6 = srem i32 %add55.6, 100
  %62 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.6 = add nsw i32 %62, %shr.6
  %63 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.6 = add nsw i32 %add59.6, %63
  store i32 %add66.6, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %64 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %64, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %for.inc100.5
  %mid_vars.sroa.0.1.6 = phi i32 [ %add51.6, %if.then.6 ], [ %mid_vars.sroa.0.1.5, %for.inc100.5 ]
  %mid_vars.sroa.10166.1.6 = phi i32 [ %mul49.6, %if.then.6 ], [ %mid_vars.sroa.10166.1.5, %for.inc100.5 ]
  %local2.1.6 = phi i32 [ %rem56.6, %if.then.6 ], [ %local2.1.5, %for.inc100.5 ]
  %rem70172.6 = urem i16 %rem43.lhs.trunc.6, 1000
  %cmp71.6 = icmp eq i16 %rem70172.6, 0
  br i1 %cmp71.6, label %if.then73.6, label %for.inc100.6

if.then73.6:                                      ; preds = %if.end.6
  %add74.6 = add nsw i32 %var1.1.5, %rem13
  %call79.6 = tail call i32 @rand() #3
  %rem80.6 = srem i32 %call79.6, 5
  br label %for.body87.6

for.body87.6:                                     ; preds = %for.body87.6, %if.then73.6
  %indvars.iv.6 = phi i64 [ 0, %if.then73.6 ], [ %indvars.iv.next.6, %for.body87.6 ]
  %call88.6 = tail call i32 @rand() #3
  %rem89.6 = srem i32 %call88.6, 100
  %65 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.6 = add nsw i32 %rem89.6, %65
  %rem93.lhs.trunc.6 = trunc i64 %indvars.iv.6 to i8
  %rem93173.6 = urem i8 %rem93.lhs.trunc.6, 10
  %idxprom94.6 = zext i8 %rem93173.6 to i64
  %arrayidx95.6 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.6, i64 %idxprom94.6
  store i32 %add90.6, i32* %arrayidx95.6, align 4, !tbaa !12
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv.6, 1
  %exitcond.6.not = icmp eq i64 %indvars.iv.next.6, 10
  br i1 %exitcond.6.not, label %for.inc100.loopexit.6, label %for.body87.6, !llvm.loop !13

for.inc100.loopexit.6:                            ; preds = %for.body87.6
  %mul75.6 = mul nsw i32 %add74.6, %rem15
  %add81.6 = add nsw i32 %rem80.6, %rem78.sext
  br label %for.inc100.6

for.inc100.6:                                     ; preds = %for.inc100.loopexit.6, %if.end.6
  %var4.1.6 = phi i32 [ %var4.1.5, %if.end.6 ], [ %mul75.6, %for.inc100.loopexit.6 ]
  %var5.1.6 = phi i32 [ %var5.1.5, %if.end.6 ], [ %rem9, %for.inc100.loopexit.6 ]
  %var1.1.6 = phi i32 [ %var1.1.5, %if.end.6 ], [ %add81.6, %for.inc100.loopexit.6 ]
  %66 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.7 = mul nsw i32 %66, 3
  %67 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.7 = sdiv i32 %67, -2
  %sub.7 = add i32 %div.neg.7, %mul.7
  store i32 %sub.7, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.7 = add nsw i32 %sub.7, %66
  %rem32.7 = srem i32 %add31.7, 100
  store i32 %rem32.7, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.7 = or i32 %rem32.7, 1
  %add33.7 = add nsw i32 %or.7, %rem17
  store i32 %add33.7, i32* @main.hot_data.1, align 4, !tbaa !10
  %68 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.7 = add nsw i32 %add33.7, %68
  store i32 %add42.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %69 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.7 = or i16 %69, 7
  %rem43171.7 = urem i16 %rem43.lhs.trunc.7, 100
  %cmp44.7 = icmp eq i16 %rem43171.7, 0
  br i1 %cmp44.7, label %if.then.7, label %if.end.7

if.then.7:                                        ; preds = %for.inc100.6
  %add48.7 = add nsw i32 %mid_vars.sroa.0.1.6, %rem9
  %mul49.7 = mul nsw i32 %local2.1.6, %add48.7
  %shr.7 = ashr i32 %mul49.7, 1
  %add51.7 = add nsw i32 %sub.7, %shr.7
  %call53.7 = tail call i32 @rand() #3
  %rem54.7 = srem i32 %call53.7, 5
  %add55.7 = add nsw i32 %rem54.7, %rem17
  %rem56.7 = srem i32 %add55.7, 100
  %70 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.7 = add nsw i32 %70, %shr.7
  %71 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.7 = add nsw i32 %add59.7, %71
  store i32 %add66.7, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %72 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %72, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %for.inc100.6
  %mid_vars.sroa.0.1.7 = phi i32 [ %add51.7, %if.then.7 ], [ %mid_vars.sroa.0.1.6, %for.inc100.6 ]
  %mid_vars.sroa.10166.1.7 = phi i32 [ %mul49.7, %if.then.7 ], [ %mid_vars.sroa.10166.1.6, %for.inc100.6 ]
  %local2.1.7 = phi i32 [ %rem56.7, %if.then.7 ], [ %local2.1.6, %for.inc100.6 ]
  %rem70172.7 = urem i16 %rem43.lhs.trunc.7, 1000
  %cmp71.7 = icmp eq i16 %rem70172.7, 0
  br i1 %cmp71.7, label %if.then73.7, label %for.inc100.7

if.then73.7:                                      ; preds = %if.end.7
  %add74.7 = add nsw i32 %var1.1.6, %rem13
  %call79.7 = tail call i32 @rand() #3
  %rem80.7 = srem i32 %call79.7, 5
  br label %for.body87.7

for.body87.7:                                     ; preds = %for.body87.7, %if.then73.7
  %indvars.iv.7 = phi i64 [ 0, %if.then73.7 ], [ %indvars.iv.next.7, %for.body87.7 ]
  %call88.7 = tail call i32 @rand() #3
  %rem89.7 = srem i32 %call88.7, 100
  %73 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.7 = add nsw i32 %rem89.7, %73
  %rem93.lhs.trunc.7 = trunc i64 %indvars.iv.7 to i8
  %rem93173.7 = urem i8 %rem93.lhs.trunc.7, 10
  %idxprom94.7 = zext i8 %rem93173.7 to i64
  %arrayidx95.7 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.7, i64 %idxprom94.7
  store i32 %add90.7, i32* %arrayidx95.7, align 4, !tbaa !12
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv.7, 1
  %exitcond.7.not = icmp eq i64 %indvars.iv.next.7, 10
  br i1 %exitcond.7.not, label %for.inc100.loopexit.7, label %for.body87.7, !llvm.loop !13

for.inc100.loopexit.7:                            ; preds = %for.body87.7
  %mul75.7 = mul nsw i32 %add74.7, %rem15
  %add81.7 = add nsw i32 %rem80.7, %rem78.sext
  br label %for.inc100.7

for.inc100.7:                                     ; preds = %for.inc100.loopexit.7, %if.end.7
  %var4.1.7 = phi i32 [ %var4.1.6, %if.end.7 ], [ %mul75.7, %for.inc100.loopexit.7 ]
  %var5.1.7 = phi i32 [ %var5.1.6, %if.end.7 ], [ %rem9, %for.inc100.loopexit.7 ]
  %var1.1.7 = phi i32 [ %var1.1.6, %if.end.7 ], [ %add81.7, %for.inc100.loopexit.7 ]
  %74 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.8 = mul nsw i32 %74, 3
  %75 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.8 = sdiv i32 %75, -2
  %sub.8 = add i32 %div.neg.8, %mul.8
  store i32 %sub.8, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.8 = add nsw i32 %sub.8, %74
  %rem32.8 = srem i32 %add31.8, 100
  store i32 %rem32.8, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.8 = or i32 %rem32.8, 1
  %add33.8 = add nsw i32 %or.8, %rem17
  store i32 %add33.8, i32* @main.hot_data.1, align 4, !tbaa !10
  %76 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.8 = add nsw i32 %add33.8, %76
  store i32 %add42.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %77 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.8 = or i16 %77, 8
  %rem43171.8 = urem i16 %rem43.lhs.trunc.8, 100
  %cmp44.8 = icmp eq i16 %rem43171.8, 0
  br i1 %cmp44.8, label %if.then.8, label %if.end.8

if.then.8:                                        ; preds = %for.inc100.7
  %add48.8 = add nsw i32 %mid_vars.sroa.0.1.7, %rem9
  %mul49.8 = mul nsw i32 %local2.1.7, %add48.8
  %shr.8 = ashr i32 %mul49.8, 1
  %add51.8 = add nsw i32 %sub.8, %shr.8
  %call53.8 = tail call i32 @rand() #3
  %rem54.8 = srem i32 %call53.8, 5
  %add55.8 = add nsw i32 %rem54.8, %rem17
  %rem56.8 = srem i32 %add55.8, 100
  %78 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.8 = add nsw i32 %78, %shr.8
  %79 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.8 = add nsw i32 %add59.8, %79
  store i32 %add66.8, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %80 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %80, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.8, %for.inc100.7
  %mid_vars.sroa.0.1.8 = phi i32 [ %add51.8, %if.then.8 ], [ %mid_vars.sroa.0.1.7, %for.inc100.7 ]
  %mid_vars.sroa.10166.1.8 = phi i32 [ %mul49.8, %if.then.8 ], [ %mid_vars.sroa.10166.1.7, %for.inc100.7 ]
  %local2.1.8 = phi i32 [ %rem56.8, %if.then.8 ], [ %local2.1.7, %for.inc100.7 ]
  %rem70172.8 = urem i16 %rem43.lhs.trunc.8, 1000
  %cmp71.8 = icmp eq i16 %rem70172.8, 0
  br i1 %cmp71.8, label %if.then73.8, label %for.inc100.8

if.then73.8:                                      ; preds = %if.end.8
  %add74.8 = add nsw i32 %var1.1.7, %rem13
  %call79.8 = tail call i32 @rand() #3
  %rem80.8 = srem i32 %call79.8, 5
  br label %for.body87.8

for.body87.8:                                     ; preds = %for.body87.8, %if.then73.8
  %indvars.iv.8 = phi i64 [ 0, %if.then73.8 ], [ %indvars.iv.next.8, %for.body87.8 ]
  %call88.8 = tail call i32 @rand() #3
  %rem89.8 = srem i32 %call88.8, 100
  %81 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.8 = add nsw i32 %rem89.8, %81
  %rem93.lhs.trunc.8 = trunc i64 %indvars.iv.8 to i8
  %rem93173.8 = urem i8 %rem93.lhs.trunc.8, 10
  %idxprom94.8 = zext i8 %rem93173.8 to i64
  %arrayidx95.8 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.8, i64 %idxprom94.8
  store i32 %add90.8, i32* %arrayidx95.8, align 4, !tbaa !12
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv.8, 1
  %exitcond.8.not = icmp eq i64 %indvars.iv.next.8, 10
  br i1 %exitcond.8.not, label %for.inc100.loopexit.8, label %for.body87.8, !llvm.loop !13

for.inc100.loopexit.8:                            ; preds = %for.body87.8
  %mul75.8 = mul nsw i32 %add74.8, %rem15
  %add81.8 = add nsw i32 %rem80.8, %rem78.sext
  br label %for.inc100.8

for.inc100.8:                                     ; preds = %for.inc100.loopexit.8, %if.end.8
  %var4.1.8 = phi i32 [ %var4.1.7, %if.end.8 ], [ %mul75.8, %for.inc100.loopexit.8 ]
  %var5.1.8 = phi i32 [ %var5.1.7, %if.end.8 ], [ %rem9, %for.inc100.loopexit.8 ]
  %var1.1.8 = phi i32 [ %var1.1.7, %if.end.8 ], [ %add81.8, %for.inc100.loopexit.8 ]
  %82 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.9 = mul nsw i32 %82, 3
  %83 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.9 = sdiv i32 %83, -2
  %sub.9 = add i32 %div.neg.9, %mul.9
  store i32 %sub.9, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.9 = add nsw i32 %sub.9, %82
  %rem32.9 = srem i32 %add31.9, 100
  store i32 %rem32.9, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.9 = or i32 %rem32.9, 1
  %add33.9 = add nsw i32 %or.9, %rem17
  store i32 %add33.9, i32* @main.hot_data.1, align 4, !tbaa !10
  %84 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.9 = add nsw i32 %add33.9, %84
  store i32 %add42.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %85 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.9 = or i16 %85, 9
  %rem43171.9 = urem i16 %rem43.lhs.trunc.9, 100
  %cmp44.9 = icmp eq i16 %rem43171.9, 0
  br i1 %cmp44.9, label %if.then.9, label %if.end.9

if.then.9:                                        ; preds = %for.inc100.8
  %add48.9 = add nsw i32 %mid_vars.sroa.0.1.8, %rem9
  %mul49.9 = mul nsw i32 %local2.1.8, %add48.9
  %shr.9 = ashr i32 %mul49.9, 1
  %add51.9 = add nsw i32 %sub.9, %shr.9
  %call53.9 = tail call i32 @rand() #3
  %rem54.9 = srem i32 %call53.9, 5
  %add55.9 = add nsw i32 %rem54.9, %rem17
  %rem56.9 = srem i32 %add55.9, 100
  %86 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.9 = add nsw i32 %86, %shr.9
  %87 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.9 = add nsw i32 %add59.9, %87
  store i32 %add66.9, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %88 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %88, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.9, %for.inc100.8
  %mid_vars.sroa.0.1.9 = phi i32 [ %add51.9, %if.then.9 ], [ %mid_vars.sroa.0.1.8, %for.inc100.8 ]
  %mid_vars.sroa.10166.1.9 = phi i32 [ %mul49.9, %if.then.9 ], [ %mid_vars.sroa.10166.1.8, %for.inc100.8 ]
  %local2.1.9 = phi i32 [ %rem56.9, %if.then.9 ], [ %local2.1.8, %for.inc100.8 ]
  %rem70172.9 = urem i16 %rem43.lhs.trunc.9, 1000
  %cmp71.9 = icmp eq i16 %rem70172.9, 0
  br i1 %cmp71.9, label %if.then73.9, label %for.inc100.9

if.then73.9:                                      ; preds = %if.end.9
  %add74.9 = add nsw i32 %var1.1.8, %rem13
  %call79.9 = tail call i32 @rand() #3
  %rem80.9 = srem i32 %call79.9, 5
  br label %for.body87.9

for.body87.9:                                     ; preds = %for.body87.9, %if.then73.9
  %indvars.iv.9 = phi i64 [ 0, %if.then73.9 ], [ %indvars.iv.next.9, %for.body87.9 ]
  %call88.9 = tail call i32 @rand() #3
  %rem89.9 = srem i32 %call88.9, 100
  %89 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.9 = add nsw i32 %rem89.9, %89
  %rem93.lhs.trunc.9 = trunc i64 %indvars.iv.9 to i8
  %rem93173.9 = urem i8 %rem93.lhs.trunc.9, 10
  %idxprom94.9 = zext i8 %rem93173.9 to i64
  %arrayidx95.9 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.9, i64 %idxprom94.9
  store i32 %add90.9, i32* %arrayidx95.9, align 4, !tbaa !12
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv.9, 1
  %exitcond.9.not = icmp eq i64 %indvars.iv.next.9, 10
  br i1 %exitcond.9.not, label %for.inc100.loopexit.9, label %for.body87.9, !llvm.loop !13

for.inc100.loopexit.9:                            ; preds = %for.body87.9
  %mul75.9 = mul nsw i32 %add74.9, %rem15
  %add81.9 = add nsw i32 %rem80.9, %rem78.sext
  br label %for.inc100.9

for.inc100.9:                                     ; preds = %for.inc100.loopexit.9, %if.end.9
  %var4.1.9 = phi i32 [ %var4.1.8, %if.end.9 ], [ %mul75.9, %for.inc100.loopexit.9 ]
  %var5.1.9 = phi i32 [ %var5.1.8, %if.end.9 ], [ %rem9, %for.inc100.loopexit.9 ]
  %var1.1.9 = phi i32 [ %var1.1.8, %if.end.9 ], [ %add81.9, %for.inc100.loopexit.9 ]
  %90 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.10 = mul nsw i32 %90, 3
  %91 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.10 = sdiv i32 %91, -2
  %sub.10 = add i32 %div.neg.10, %mul.10
  store i32 %sub.10, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.10 = add nsw i32 %sub.10, %90
  %rem32.10 = srem i32 %add31.10, 100
  store i32 %rem32.10, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.10 = or i32 %rem32.10, 1
  %add33.10 = add nsw i32 %or.10, %rem17
  store i32 %add33.10, i32* @main.hot_data.1, align 4, !tbaa !10
  %92 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.10 = add nsw i32 %add33.10, %92
  store i32 %add42.10, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %93 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.10 = or i16 %93, 10
  %rem43171.10 = urem i16 %rem43.lhs.trunc.10, 100
  %cmp44.10 = icmp eq i16 %rem43171.10, 0
  br i1 %cmp44.10, label %if.then.10, label %if.end.10

if.then.10:                                       ; preds = %for.inc100.9
  %add48.10 = add nsw i32 %mid_vars.sroa.0.1.9, %rem9
  %mul49.10 = mul nsw i32 %local2.1.9, %add48.10
  %shr.10 = ashr i32 %mul49.10, 1
  %add51.10 = add nsw i32 %sub.10, %shr.10
  %call53.10 = tail call i32 @rand() #3
  %rem54.10 = srem i32 %call53.10, 5
  %add55.10 = add nsw i32 %rem54.10, %rem17
  %rem56.10 = srem i32 %add55.10, 100
  %94 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.10 = add nsw i32 %94, %shr.10
  %95 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.10 = add nsw i32 %add59.10, %95
  store i32 %add66.10, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.10, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.10, %for.inc100.9
  %mid_vars.sroa.0.1.10 = phi i32 [ %add51.10, %if.then.10 ], [ %mid_vars.sroa.0.1.9, %for.inc100.9 ]
  %mid_vars.sroa.10166.1.10 = phi i32 [ %mul49.10, %if.then.10 ], [ %mid_vars.sroa.10166.1.9, %for.inc100.9 ]
  %local2.1.10 = phi i32 [ %rem56.10, %if.then.10 ], [ %local2.1.9, %for.inc100.9 ]
  %rem70172.10 = urem i16 %rem43.lhs.trunc.10, 1000
  %cmp71.10 = icmp eq i16 %rem70172.10, 0
  br i1 %cmp71.10, label %if.then73.10, label %for.inc100.10

if.then73.10:                                     ; preds = %if.end.10
  %add74.10 = add nsw i32 %var1.1.9, %rem13
  %call79.10 = tail call i32 @rand() #3
  %rem80.10 = srem i32 %call79.10, 5
  br label %for.body87.10

for.body87.10:                                    ; preds = %for.body87.10, %if.then73.10
  %indvars.iv.10 = phi i64 [ 0, %if.then73.10 ], [ %indvars.iv.next.10, %for.body87.10 ]
  %call88.10 = tail call i32 @rand() #3
  %rem89.10 = srem i32 %call88.10, 100
  %96 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.10 = add nsw i32 %rem89.10, %96
  %rem93.lhs.trunc.10 = trunc i64 %indvars.iv.10 to i8
  %rem93173.10 = urem i8 %rem93.lhs.trunc.10, 10
  %idxprom94.10 = zext i8 %rem93173.10 to i64
  %arrayidx95.10 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.10, i64 %idxprom94.10
  store i32 %add90.10, i32* %arrayidx95.10, align 4, !tbaa !12
  %indvars.iv.next.10 = add nuw nsw i64 %indvars.iv.10, 1
  %exitcond.10.not = icmp eq i64 %indvars.iv.next.10, 10
  br i1 %exitcond.10.not, label %for.inc100.loopexit.10, label %for.body87.10, !llvm.loop !13

for.inc100.loopexit.10:                           ; preds = %for.body87.10
  %mul75.10 = mul nsw i32 %add74.10, %rem15
  %add81.10 = add nsw i32 %rem80.10, %rem78.sext
  br label %for.inc100.10

for.inc100.10:                                    ; preds = %for.inc100.loopexit.10, %if.end.10
  %var4.1.10 = phi i32 [ %var4.1.9, %if.end.10 ], [ %mul75.10, %for.inc100.loopexit.10 ]
  %var5.1.10 = phi i32 [ %var5.1.9, %if.end.10 ], [ %rem9, %for.inc100.loopexit.10 ]
  %var1.1.10 = phi i32 [ %var1.1.9, %if.end.10 ], [ %add81.10, %for.inc100.loopexit.10 ]
  %97 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.11 = mul nsw i32 %97, 3
  %98 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.11 = sdiv i32 %98, -2
  %sub.11 = add i32 %div.neg.11, %mul.11
  store i32 %sub.11, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.11 = add nsw i32 %sub.11, %97
  %rem32.11 = srem i32 %add31.11, 100
  store i32 %rem32.11, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.11 = or i32 %rem32.11, 1
  %add33.11 = add nsw i32 %or.11, %rem17
  store i32 %add33.11, i32* @main.hot_data.1, align 4, !tbaa !10
  %99 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.11 = add nsw i32 %add33.11, %99
  store i32 %add42.11, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %100 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.11 = or i16 %100, 11
  %rem43171.11 = urem i16 %rem43.lhs.trunc.11, 100
  %cmp44.11 = icmp eq i16 %rem43171.11, 0
  br i1 %cmp44.11, label %if.then.11, label %if.end.11

if.then.11:                                       ; preds = %for.inc100.10
  %add48.11 = add nsw i32 %mid_vars.sroa.0.1.10, %rem9
  %mul49.11 = mul nsw i32 %local2.1.10, %add48.11
  %shr.11 = ashr i32 %mul49.11, 1
  %add51.11 = add nsw i32 %sub.11, %shr.11
  %call53.11 = tail call i32 @rand() #3
  %rem54.11 = srem i32 %call53.11, 5
  %add55.11 = add nsw i32 %rem54.11, %rem17
  %rem56.11 = srem i32 %add55.11, 100
  %101 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.11 = add nsw i32 %101, %shr.11
  %102 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.11 = add nsw i32 %add59.11, %102
  store i32 %add66.11, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %103 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %103, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.11, %for.inc100.10
  %mid_vars.sroa.0.1.11 = phi i32 [ %add51.11, %if.then.11 ], [ %mid_vars.sroa.0.1.10, %for.inc100.10 ]
  %mid_vars.sroa.10166.1.11 = phi i32 [ %mul49.11, %if.then.11 ], [ %mid_vars.sroa.10166.1.10, %for.inc100.10 ]
  %local2.1.11 = phi i32 [ %rem56.11, %if.then.11 ], [ %local2.1.10, %for.inc100.10 ]
  %rem70172.11 = urem i16 %rem43.lhs.trunc.11, 1000
  %cmp71.11 = icmp eq i16 %rem70172.11, 0
  br i1 %cmp71.11, label %if.then73.11, label %for.inc100.11

if.then73.11:                                     ; preds = %if.end.11
  %add74.11 = add nsw i32 %var1.1.10, %rem13
  %call79.11 = tail call i32 @rand() #3
  %rem80.11 = srem i32 %call79.11, 5
  br label %for.body87.11

for.body87.11:                                    ; preds = %for.body87.11, %if.then73.11
  %indvars.iv.11 = phi i64 [ 0, %if.then73.11 ], [ %indvars.iv.next.11, %for.body87.11 ]
  %call88.11 = tail call i32 @rand() #3
  %rem89.11 = srem i32 %call88.11, 100
  %104 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.11 = add nsw i32 %rem89.11, %104
  %rem93.lhs.trunc.11 = trunc i64 %indvars.iv.11 to i8
  %rem93173.11 = urem i8 %rem93.lhs.trunc.11, 10
  %idxprom94.11 = zext i8 %rem93173.11 to i64
  %arrayidx95.11 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.11, i64 %idxprom94.11
  store i32 %add90.11, i32* %arrayidx95.11, align 4, !tbaa !12
  %indvars.iv.next.11 = add nuw nsw i64 %indvars.iv.11, 1
  %exitcond.11.not = icmp eq i64 %indvars.iv.next.11, 10
  br i1 %exitcond.11.not, label %for.inc100.loopexit.11, label %for.body87.11, !llvm.loop !13

for.inc100.loopexit.11:                           ; preds = %for.body87.11
  %mul75.11 = mul nsw i32 %add74.11, %rem15
  %add81.11 = add nsw i32 %rem80.11, %rem78.sext
  br label %for.inc100.11

for.inc100.11:                                    ; preds = %for.inc100.loopexit.11, %if.end.11
  %var4.1.11 = phi i32 [ %var4.1.10, %if.end.11 ], [ %mul75.11, %for.inc100.loopexit.11 ]
  %var5.1.11 = phi i32 [ %var5.1.10, %if.end.11 ], [ %rem9, %for.inc100.loopexit.11 ]
  %var1.1.11 = phi i32 [ %var1.1.10, %if.end.11 ], [ %add81.11, %for.inc100.loopexit.11 ]
  %105 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.12 = mul nsw i32 %105, 3
  %106 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.12 = sdiv i32 %106, -2
  %sub.12 = add i32 %div.neg.12, %mul.12
  store i32 %sub.12, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.12 = add nsw i32 %sub.12, %105
  %rem32.12 = srem i32 %add31.12, 100
  store i32 %rem32.12, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.12 = or i32 %rem32.12, 1
  %add33.12 = add nsw i32 %or.12, %rem17
  store i32 %add33.12, i32* @main.hot_data.1, align 4, !tbaa !10
  %107 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.12 = add nsw i32 %add33.12, %107
  store i32 %add42.12, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %108 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.12 = or i16 %108, 12
  %rem43171.12 = urem i16 %rem43.lhs.trunc.12, 100
  %cmp44.12 = icmp eq i16 %rem43171.12, 0
  br i1 %cmp44.12, label %if.then.12, label %if.end.12

if.then.12:                                       ; preds = %for.inc100.11
  %add48.12 = add nsw i32 %mid_vars.sroa.0.1.11, %rem9
  %mul49.12 = mul nsw i32 %local2.1.11, %add48.12
  %shr.12 = ashr i32 %mul49.12, 1
  %add51.12 = add nsw i32 %sub.12, %shr.12
  %call53.12 = tail call i32 @rand() #3
  %rem54.12 = srem i32 %call53.12, 5
  %add55.12 = add nsw i32 %rem54.12, %rem17
  %rem56.12 = srem i32 %add55.12, 100
  %109 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.12 = add nsw i32 %109, %shr.12
  %110 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.12 = add nsw i32 %add59.12, %110
  store i32 %add66.12, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %111 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %111, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.12, %for.inc100.11
  %mid_vars.sroa.0.1.12 = phi i32 [ %add51.12, %if.then.12 ], [ %mid_vars.sroa.0.1.11, %for.inc100.11 ]
  %mid_vars.sroa.10166.1.12 = phi i32 [ %mul49.12, %if.then.12 ], [ %mid_vars.sroa.10166.1.11, %for.inc100.11 ]
  %local2.1.12 = phi i32 [ %rem56.12, %if.then.12 ], [ %local2.1.11, %for.inc100.11 ]
  %rem70172.12 = urem i16 %rem43.lhs.trunc.12, 1000
  %cmp71.12 = icmp eq i16 %rem70172.12, 0
  br i1 %cmp71.12, label %if.then73.12, label %for.inc100.12

if.then73.12:                                     ; preds = %if.end.12
  %add74.12 = add nsw i32 %var1.1.11, %rem13
  %call79.12 = tail call i32 @rand() #3
  %rem80.12 = srem i32 %call79.12, 5
  br label %for.body87.12

for.body87.12:                                    ; preds = %for.body87.12, %if.then73.12
  %indvars.iv.12 = phi i64 [ 0, %if.then73.12 ], [ %indvars.iv.next.12, %for.body87.12 ]
  %call88.12 = tail call i32 @rand() #3
  %rem89.12 = srem i32 %call88.12, 100
  %112 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.12 = add nsw i32 %rem89.12, %112
  %rem93.lhs.trunc.12 = trunc i64 %indvars.iv.12 to i8
  %rem93173.12 = urem i8 %rem93.lhs.trunc.12, 10
  %idxprom94.12 = zext i8 %rem93173.12 to i64
  %arrayidx95.12 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.12, i64 %idxprom94.12
  store i32 %add90.12, i32* %arrayidx95.12, align 4, !tbaa !12
  %indvars.iv.next.12 = add nuw nsw i64 %indvars.iv.12, 1
  %exitcond.12.not = icmp eq i64 %indvars.iv.next.12, 10
  br i1 %exitcond.12.not, label %for.inc100.loopexit.12, label %for.body87.12, !llvm.loop !13

for.inc100.loopexit.12:                           ; preds = %for.body87.12
  %mul75.12 = mul nsw i32 %add74.12, %rem15
  %add81.12 = add nsw i32 %rem80.12, %rem78.sext
  br label %for.inc100.12

for.inc100.12:                                    ; preds = %for.inc100.loopexit.12, %if.end.12
  %var4.1.12 = phi i32 [ %var4.1.11, %if.end.12 ], [ %mul75.12, %for.inc100.loopexit.12 ]
  %var5.1.12 = phi i32 [ %var5.1.11, %if.end.12 ], [ %rem9, %for.inc100.loopexit.12 ]
  %var1.1.12 = phi i32 [ %var1.1.11, %if.end.12 ], [ %add81.12, %for.inc100.loopexit.12 ]
  %113 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.13 = mul nsw i32 %113, 3
  %114 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.13 = sdiv i32 %114, -2
  %sub.13 = add i32 %div.neg.13, %mul.13
  store i32 %sub.13, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.13 = add nsw i32 %sub.13, %113
  %rem32.13 = srem i32 %add31.13, 100
  store i32 %rem32.13, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.13 = or i32 %rem32.13, 1
  %add33.13 = add nsw i32 %or.13, %rem17
  store i32 %add33.13, i32* @main.hot_data.1, align 4, !tbaa !10
  %115 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.13 = add nsw i32 %add33.13, %115
  store i32 %add42.13, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %116 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.13 = or i16 %116, 13
  %rem43171.13 = urem i16 %rem43.lhs.trunc.13, 100
  %cmp44.13 = icmp eq i16 %rem43171.13, 0
  br i1 %cmp44.13, label %if.then.13, label %if.end.13

if.then.13:                                       ; preds = %for.inc100.12
  %add48.13 = add nsw i32 %mid_vars.sroa.0.1.12, %rem9
  %mul49.13 = mul nsw i32 %local2.1.12, %add48.13
  %shr.13 = ashr i32 %mul49.13, 1
  %add51.13 = add nsw i32 %sub.13, %shr.13
  %call53.13 = tail call i32 @rand() #3
  %rem54.13 = srem i32 %call53.13, 5
  %add55.13 = add nsw i32 %rem54.13, %rem17
  %rem56.13 = srem i32 %add55.13, 100
  %117 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.13 = add nsw i32 %117, %shr.13
  %118 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.13 = add nsw i32 %add59.13, %118
  store i32 %add66.13, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %119 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %119, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.13, %for.inc100.12
  %mid_vars.sroa.0.1.13 = phi i32 [ %add51.13, %if.then.13 ], [ %mid_vars.sroa.0.1.12, %for.inc100.12 ]
  %mid_vars.sroa.10166.1.13 = phi i32 [ %mul49.13, %if.then.13 ], [ %mid_vars.sroa.10166.1.12, %for.inc100.12 ]
  %local2.1.13 = phi i32 [ %rem56.13, %if.then.13 ], [ %local2.1.12, %for.inc100.12 ]
  %rem70172.13 = urem i16 %rem43.lhs.trunc.13, 1000
  %cmp71.13 = icmp eq i16 %rem70172.13, 0
  br i1 %cmp71.13, label %if.then73.13, label %for.inc100.13

if.then73.13:                                     ; preds = %if.end.13
  %add74.13 = add nsw i32 %var1.1.12, %rem13
  %call79.13 = tail call i32 @rand() #3
  %rem80.13 = srem i32 %call79.13, 5
  br label %for.body87.13

for.body87.13:                                    ; preds = %for.body87.13, %if.then73.13
  %indvars.iv.13 = phi i64 [ 0, %if.then73.13 ], [ %indvars.iv.next.13, %for.body87.13 ]
  %call88.13 = tail call i32 @rand() #3
  %rem89.13 = srem i32 %call88.13, 100
  %120 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.13 = add nsw i32 %rem89.13, %120
  %rem93.lhs.trunc.13 = trunc i64 %indvars.iv.13 to i8
  %rem93173.13 = urem i8 %rem93.lhs.trunc.13, 10
  %idxprom94.13 = zext i8 %rem93173.13 to i64
  %arrayidx95.13 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.13, i64 %idxprom94.13
  store i32 %add90.13, i32* %arrayidx95.13, align 4, !tbaa !12
  %indvars.iv.next.13 = add nuw nsw i64 %indvars.iv.13, 1
  %exitcond.13.not = icmp eq i64 %indvars.iv.next.13, 10
  br i1 %exitcond.13.not, label %for.inc100.loopexit.13, label %for.body87.13, !llvm.loop !13

for.inc100.loopexit.13:                           ; preds = %for.body87.13
  %mul75.13 = mul nsw i32 %add74.13, %rem15
  %add81.13 = add nsw i32 %rem80.13, %rem78.sext
  br label %for.inc100.13

for.inc100.13:                                    ; preds = %for.inc100.loopexit.13, %if.end.13
  %var4.1.13 = phi i32 [ %var4.1.12, %if.end.13 ], [ %mul75.13, %for.inc100.loopexit.13 ]
  %var5.1.13 = phi i32 [ %var5.1.12, %if.end.13 ], [ %rem9, %for.inc100.loopexit.13 ]
  %var1.1.13 = phi i32 [ %var1.1.12, %if.end.13 ], [ %add81.13, %for.inc100.loopexit.13 ]
  %121 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.14 = mul nsw i32 %121, 3
  %122 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.14 = sdiv i32 %122, -2
  %sub.14 = add i32 %div.neg.14, %mul.14
  store i32 %sub.14, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.14 = add nsw i32 %sub.14, %121
  %rem32.14 = srem i32 %add31.14, 100
  store i32 %rem32.14, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.14 = or i32 %rem32.14, 1
  %add33.14 = add nsw i32 %or.14, %rem17
  store i32 %add33.14, i32* @main.hot_data.1, align 4, !tbaa !10
  %123 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.14 = add nsw i32 %add33.14, %123
  store i32 %add42.14, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %124 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.14 = or i16 %124, 14
  %rem43171.14 = urem i16 %rem43.lhs.trunc.14, 100
  %cmp44.14 = icmp eq i16 %rem43171.14, 0
  br i1 %cmp44.14, label %if.then.14, label %if.end.14

if.then.14:                                       ; preds = %for.inc100.13
  %add48.14 = add nsw i32 %mid_vars.sroa.0.1.13, %rem9
  %mul49.14 = mul nsw i32 %local2.1.13, %add48.14
  %shr.14 = ashr i32 %mul49.14, 1
  %add51.14 = add nsw i32 %sub.14, %shr.14
  %call53.14 = tail call i32 @rand() #3
  %rem54.14 = srem i32 %call53.14, 5
  %add55.14 = add nsw i32 %rem54.14, %rem17
  %rem56.14 = srem i32 %add55.14, 100
  %125 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.14 = add nsw i32 %125, %shr.14
  %126 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.14 = add nsw i32 %add59.14, %126
  store i32 %add66.14, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %127 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %127, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.14, %for.inc100.13
  %mid_vars.sroa.0.1.14 = phi i32 [ %add51.14, %if.then.14 ], [ %mid_vars.sroa.0.1.13, %for.inc100.13 ]
  %mid_vars.sroa.10166.1.14 = phi i32 [ %mul49.14, %if.then.14 ], [ %mid_vars.sroa.10166.1.13, %for.inc100.13 ]
  %local2.1.14 = phi i32 [ %rem56.14, %if.then.14 ], [ %local2.1.13, %for.inc100.13 ]
  %rem70172.14 = urem i16 %rem43.lhs.trunc.14, 1000
  %cmp71.14 = icmp eq i16 %rem70172.14, 0
  br i1 %cmp71.14, label %if.then73.14, label %for.inc100.14

if.then73.14:                                     ; preds = %if.end.14
  %add74.14 = add nsw i32 %var1.1.13, %rem13
  %call79.14 = tail call i32 @rand() #3
  %rem80.14 = srem i32 %call79.14, 5
  br label %for.body87.14

for.body87.14:                                    ; preds = %for.body87.14, %if.then73.14
  %indvars.iv.14 = phi i64 [ 0, %if.then73.14 ], [ %indvars.iv.next.14, %for.body87.14 ]
  %call88.14 = tail call i32 @rand() #3
  %rem89.14 = srem i32 %call88.14, 100
  %128 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.14 = add nsw i32 %rem89.14, %128
  %rem93.lhs.trunc.14 = trunc i64 %indvars.iv.14 to i8
  %rem93173.14 = urem i8 %rem93.lhs.trunc.14, 10
  %idxprom94.14 = zext i8 %rem93173.14 to i64
  %arrayidx95.14 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.14, i64 %idxprom94.14
  store i32 %add90.14, i32* %arrayidx95.14, align 4, !tbaa !12
  %indvars.iv.next.14 = add nuw nsw i64 %indvars.iv.14, 1
  %exitcond.14.not = icmp eq i64 %indvars.iv.next.14, 10
  br i1 %exitcond.14.not, label %for.inc100.loopexit.14, label %for.body87.14, !llvm.loop !13

for.inc100.loopexit.14:                           ; preds = %for.body87.14
  %mul75.14 = mul nsw i32 %add74.14, %rem15
  %add81.14 = add nsw i32 %rem80.14, %rem78.sext
  br label %for.inc100.14

for.inc100.14:                                    ; preds = %for.inc100.loopexit.14, %if.end.14
  %var4.1.14 = phi i32 [ %var4.1.13, %if.end.14 ], [ %mul75.14, %for.inc100.loopexit.14 ]
  %var5.1.14 = phi i32 [ %var5.1.13, %if.end.14 ], [ %rem9, %for.inc100.loopexit.14 ]
  %var1.1.14 = phi i32 [ %var1.1.13, %if.end.14 ], [ %add81.14, %for.inc100.loopexit.14 ]
  %129 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.15 = mul nsw i32 %129, 3
  %130 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.15 = sdiv i32 %130, -2
  %sub.15 = add i32 %div.neg.15, %mul.15
  store i32 %sub.15, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.15 = add nsw i32 %sub.15, %129
  %rem32.15 = srem i32 %add31.15, 100
  store i32 %rem32.15, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.15 = or i32 %rem32.15, 1
  %add33.15 = add nsw i32 %or.15, %rem17
  store i32 %add33.15, i32* @main.hot_data.1, align 4, !tbaa !10
  %131 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.15 = add nsw i32 %add33.15, %131
  store i32 %add42.15, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %132 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.15 = or i16 %132, 15
  %rem43171.15 = urem i16 %rem43.lhs.trunc.15, 100
  %cmp44.15 = icmp eq i16 %rem43171.15, 0
  br i1 %cmp44.15, label %if.then.15, label %if.end.15

if.then.15:                                       ; preds = %for.inc100.14
  %add48.15 = add nsw i32 %mid_vars.sroa.0.1.14, %rem9
  %mul49.15 = mul nsw i32 %local2.1.14, %add48.15
  %shr.15 = ashr i32 %mul49.15, 1
  %add51.15 = add nsw i32 %sub.15, %shr.15
  %call53.15 = tail call i32 @rand() #3
  %rem54.15 = srem i32 %call53.15, 5
  %add55.15 = add nsw i32 %rem54.15, %rem17
  %rem56.15 = srem i32 %add55.15, 100
  %133 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.15 = add nsw i32 %133, %shr.15
  %134 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.15 = add nsw i32 %add59.15, %134
  store i32 %add66.15, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %135 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %135, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.15, %for.inc100.14
  %mid_vars.sroa.0.1.15 = phi i32 [ %add51.15, %if.then.15 ], [ %mid_vars.sroa.0.1.14, %for.inc100.14 ]
  %mid_vars.sroa.10166.1.15 = phi i32 [ %mul49.15, %if.then.15 ], [ %mid_vars.sroa.10166.1.14, %for.inc100.14 ]
  %local2.1.15 = phi i32 [ %rem56.15, %if.then.15 ], [ %local2.1.14, %for.inc100.14 ]
  %rem70172.15 = urem i16 %rem43.lhs.trunc.15, 1000
  %cmp71.15 = icmp eq i16 %rem70172.15, 0
  br i1 %cmp71.15, label %if.then73.15, label %for.inc100.15

if.then73.15:                                     ; preds = %if.end.15
  %add74.15 = add nsw i32 %var1.1.14, %rem13
  %call79.15 = tail call i32 @rand() #3
  %rem80.15 = srem i32 %call79.15, 5
  br label %for.body87.15

for.body87.15:                                    ; preds = %for.body87.15, %if.then73.15
  %indvars.iv.15 = phi i64 [ 0, %if.then73.15 ], [ %indvars.iv.next.15, %for.body87.15 ]
  %call88.15 = tail call i32 @rand() #3
  %rem89.15 = srem i32 %call88.15, 100
  %136 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.15 = add nsw i32 %rem89.15, %136
  %rem93.lhs.trunc.15 = trunc i64 %indvars.iv.15 to i8
  %rem93173.15 = urem i8 %rem93.lhs.trunc.15, 10
  %idxprom94.15 = zext i8 %rem93173.15 to i64
  %arrayidx95.15 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.15, i64 %idxprom94.15
  store i32 %add90.15, i32* %arrayidx95.15, align 4, !tbaa !12
  %indvars.iv.next.15 = add nuw nsw i64 %indvars.iv.15, 1
  %exitcond.15.not = icmp eq i64 %indvars.iv.next.15, 10
  br i1 %exitcond.15.not, label %for.inc100.loopexit.15, label %for.body87.15, !llvm.loop !13

for.inc100.loopexit.15:                           ; preds = %for.body87.15
  %mul75.15 = mul nsw i32 %add74.15, %rem15
  %add81.15 = add nsw i32 %rem80.15, %rem78.sext
  br label %for.inc100.15

for.inc100.15:                                    ; preds = %for.inc100.loopexit.15, %if.end.15
  %var4.1.15 = phi i32 [ %var4.1.14, %if.end.15 ], [ %mul75.15, %for.inc100.loopexit.15 ]
  %var5.1.15 = phi i32 [ %var5.1.14, %if.end.15 ], [ %rem9, %for.inc100.loopexit.15 ]
  %var1.1.15 = phi i32 [ %var1.1.14, %if.end.15 ], [ %add81.15, %for.inc100.loopexit.15 ]
  %137 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.16 = mul nsw i32 %137, 3
  %138 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.16 = sdiv i32 %138, -2
  %sub.16 = add i32 %div.neg.16, %mul.16
  store i32 %sub.16, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.16 = add nsw i32 %sub.16, %137
  %rem32.16 = srem i32 %add31.16, 100
  store i32 %rem32.16, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.16 = or i32 %rem32.16, 1
  %add33.16 = add nsw i32 %or.16, %rem17
  store i32 %add33.16, i32* @main.hot_data.1, align 4, !tbaa !10
  %139 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.16 = add nsw i32 %add33.16, %139
  store i32 %add42.16, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %140 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.16 = or i16 %140, 16
  %rem43171.16 = urem i16 %rem43.lhs.trunc.16, 100
  %cmp44.16 = icmp eq i16 %rem43171.16, 0
  br i1 %cmp44.16, label %if.then.16, label %if.end.16

if.then.16:                                       ; preds = %for.inc100.15
  %add48.16 = add nsw i32 %mid_vars.sroa.0.1.15, %rem9
  %mul49.16 = mul nsw i32 %local2.1.15, %add48.16
  %shr.16 = ashr i32 %mul49.16, 1
  %add51.16 = add nsw i32 %sub.16, %shr.16
  %call53.16 = tail call i32 @rand() #3
  %rem54.16 = srem i32 %call53.16, 5
  %add55.16 = add nsw i32 %rem54.16, %rem17
  %rem56.16 = srem i32 %add55.16, 100
  %141 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.16 = add nsw i32 %141, %shr.16
  %142 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.16 = add nsw i32 %add59.16, %142
  store i32 %add66.16, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %143 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %143, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.16, %for.inc100.15
  %mid_vars.sroa.0.1.16 = phi i32 [ %add51.16, %if.then.16 ], [ %mid_vars.sroa.0.1.15, %for.inc100.15 ]
  %mid_vars.sroa.10166.1.16 = phi i32 [ %mul49.16, %if.then.16 ], [ %mid_vars.sroa.10166.1.15, %for.inc100.15 ]
  %local2.1.16 = phi i32 [ %rem56.16, %if.then.16 ], [ %local2.1.15, %for.inc100.15 ]
  %rem70172.16 = urem i16 %rem43.lhs.trunc.16, 1000
  %cmp71.16 = icmp eq i16 %rem70172.16, 0
  br i1 %cmp71.16, label %if.then73.16, label %for.inc100.16

if.then73.16:                                     ; preds = %if.end.16
  %add74.16 = add nsw i32 %var1.1.15, %rem13
  %call79.16 = tail call i32 @rand() #3
  %rem80.16 = srem i32 %call79.16, 5
  br label %for.body87.16

for.body87.16:                                    ; preds = %for.body87.16, %if.then73.16
  %indvars.iv.16 = phi i64 [ 0, %if.then73.16 ], [ %indvars.iv.next.16, %for.body87.16 ]
  %call88.16 = tail call i32 @rand() #3
  %rem89.16 = srem i32 %call88.16, 100
  %144 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.16 = add nsw i32 %rem89.16, %144
  %rem93.lhs.trunc.16 = trunc i64 %indvars.iv.16 to i8
  %rem93173.16 = urem i8 %rem93.lhs.trunc.16, 10
  %idxprom94.16 = zext i8 %rem93173.16 to i64
  %arrayidx95.16 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.16, i64 %idxprom94.16
  store i32 %add90.16, i32* %arrayidx95.16, align 4, !tbaa !12
  %indvars.iv.next.16 = add nuw nsw i64 %indvars.iv.16, 1
  %exitcond.16.not = icmp eq i64 %indvars.iv.next.16, 10
  br i1 %exitcond.16.not, label %for.inc100.loopexit.16, label %for.body87.16, !llvm.loop !13

for.inc100.loopexit.16:                           ; preds = %for.body87.16
  %mul75.16 = mul nsw i32 %add74.16, %rem15
  %add81.16 = add nsw i32 %rem80.16, %rem78.sext
  br label %for.inc100.16

for.inc100.16:                                    ; preds = %for.inc100.loopexit.16, %if.end.16
  %var4.1.16 = phi i32 [ %var4.1.15, %if.end.16 ], [ %mul75.16, %for.inc100.loopexit.16 ]
  %var5.1.16 = phi i32 [ %var5.1.15, %if.end.16 ], [ %rem9, %for.inc100.loopexit.16 ]
  %var1.1.16 = phi i32 [ %var1.1.15, %if.end.16 ], [ %add81.16, %for.inc100.loopexit.16 ]
  %145 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.17 = mul nsw i32 %145, 3
  %146 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.17 = sdiv i32 %146, -2
  %sub.17 = add i32 %div.neg.17, %mul.17
  store i32 %sub.17, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.17 = add nsw i32 %sub.17, %145
  %rem32.17 = srem i32 %add31.17, 100
  store i32 %rem32.17, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.17 = or i32 %rem32.17, 1
  %add33.17 = add nsw i32 %or.17, %rem17
  store i32 %add33.17, i32* @main.hot_data.1, align 4, !tbaa !10
  %147 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.17 = add nsw i32 %add33.17, %147
  store i32 %add42.17, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %148 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.17 = or i16 %148, 17
  %rem43171.17 = urem i16 %rem43.lhs.trunc.17, 100
  %cmp44.17 = icmp eq i16 %rem43171.17, 0
  br i1 %cmp44.17, label %if.then.17, label %if.end.17

if.then.17:                                       ; preds = %for.inc100.16
  %add48.17 = add nsw i32 %mid_vars.sroa.0.1.16, %rem9
  %mul49.17 = mul nsw i32 %local2.1.16, %add48.17
  %shr.17 = ashr i32 %mul49.17, 1
  %add51.17 = add nsw i32 %sub.17, %shr.17
  %call53.17 = tail call i32 @rand() #3
  %rem54.17 = srem i32 %call53.17, 5
  %add55.17 = add nsw i32 %rem54.17, %rem17
  %rem56.17 = srem i32 %add55.17, 100
  %149 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.17 = add nsw i32 %149, %shr.17
  %150 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.17 = add nsw i32 %add59.17, %150
  store i32 %add66.17, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %151 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %151, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.17, %for.inc100.16
  %mid_vars.sroa.0.1.17 = phi i32 [ %add51.17, %if.then.17 ], [ %mid_vars.sroa.0.1.16, %for.inc100.16 ]
  %mid_vars.sroa.10166.1.17 = phi i32 [ %mul49.17, %if.then.17 ], [ %mid_vars.sroa.10166.1.16, %for.inc100.16 ]
  %local2.1.17 = phi i32 [ %rem56.17, %if.then.17 ], [ %local2.1.16, %for.inc100.16 ]
  %rem70172.17 = urem i16 %rem43.lhs.trunc.17, 1000
  %cmp71.17 = icmp eq i16 %rem70172.17, 0
  br i1 %cmp71.17, label %if.then73.17, label %for.inc100.17

if.then73.17:                                     ; preds = %if.end.17
  %add74.17 = add nsw i32 %var1.1.16, %rem13
  %call79.17 = tail call i32 @rand() #3
  %rem80.17 = srem i32 %call79.17, 5
  br label %for.body87.17

for.body87.17:                                    ; preds = %for.body87.17, %if.then73.17
  %indvars.iv.17 = phi i64 [ 0, %if.then73.17 ], [ %indvars.iv.next.17, %for.body87.17 ]
  %call88.17 = tail call i32 @rand() #3
  %rem89.17 = srem i32 %call88.17, 100
  %152 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.17 = add nsw i32 %rem89.17, %152
  %rem93.lhs.trunc.17 = trunc i64 %indvars.iv.17 to i8
  %rem93173.17 = urem i8 %rem93.lhs.trunc.17, 10
  %idxprom94.17 = zext i8 %rem93173.17 to i64
  %arrayidx95.17 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.17, i64 %idxprom94.17
  store i32 %add90.17, i32* %arrayidx95.17, align 4, !tbaa !12
  %indvars.iv.next.17 = add nuw nsw i64 %indvars.iv.17, 1
  %exitcond.17.not = icmp eq i64 %indvars.iv.next.17, 10
  br i1 %exitcond.17.not, label %for.inc100.loopexit.17, label %for.body87.17, !llvm.loop !13

for.inc100.loopexit.17:                           ; preds = %for.body87.17
  %mul75.17 = mul nsw i32 %add74.17, %rem15
  %add81.17 = add nsw i32 %rem80.17, %rem78.sext
  br label %for.inc100.17

for.inc100.17:                                    ; preds = %for.inc100.loopexit.17, %if.end.17
  %var4.1.17 = phi i32 [ %var4.1.16, %if.end.17 ], [ %mul75.17, %for.inc100.loopexit.17 ]
  %var5.1.17 = phi i32 [ %var5.1.16, %if.end.17 ], [ %rem9, %for.inc100.loopexit.17 ]
  %var1.1.17 = phi i32 [ %var1.1.16, %if.end.17 ], [ %add81.17, %for.inc100.loopexit.17 ]
  %153 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.18 = mul nsw i32 %153, 3
  %154 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.18 = sdiv i32 %154, -2
  %sub.18 = add i32 %div.neg.18, %mul.18
  store i32 %sub.18, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.18 = add nsw i32 %sub.18, %153
  %rem32.18 = srem i32 %add31.18, 100
  store i32 %rem32.18, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.18 = or i32 %rem32.18, 1
  %add33.18 = add nsw i32 %or.18, %rem17
  store i32 %add33.18, i32* @main.hot_data.1, align 4, !tbaa !10
  %155 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.18 = add nsw i32 %add33.18, %155
  store i32 %add42.18, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %156 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.18 = or i16 %156, 18
  %rem43171.18 = urem i16 %rem43.lhs.trunc.18, 100
  %cmp44.18 = icmp eq i16 %rem43171.18, 0
  br i1 %cmp44.18, label %if.then.18, label %if.end.18

if.then.18:                                       ; preds = %for.inc100.17
  %add48.18 = add nsw i32 %mid_vars.sroa.0.1.17, %rem9
  %mul49.18 = mul nsw i32 %local2.1.17, %add48.18
  %shr.18 = ashr i32 %mul49.18, 1
  %add51.18 = add nsw i32 %sub.18, %shr.18
  %call53.18 = tail call i32 @rand() #3
  %rem54.18 = srem i32 %call53.18, 5
  %add55.18 = add nsw i32 %rem54.18, %rem17
  %rem56.18 = srem i32 %add55.18, 100
  %157 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.18 = add nsw i32 %157, %shr.18
  %158 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.18 = add nsw i32 %add59.18, %158
  store i32 %add66.18, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %159 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %159, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.18, %for.inc100.17
  %mid_vars.sroa.0.1.18 = phi i32 [ %add51.18, %if.then.18 ], [ %mid_vars.sroa.0.1.17, %for.inc100.17 ]
  %mid_vars.sroa.10166.1.18 = phi i32 [ %mul49.18, %if.then.18 ], [ %mid_vars.sroa.10166.1.17, %for.inc100.17 ]
  %local2.1.18 = phi i32 [ %rem56.18, %if.then.18 ], [ %local2.1.17, %for.inc100.17 ]
  %rem70172.18 = urem i16 %rem43.lhs.trunc.18, 1000
  %cmp71.18 = icmp eq i16 %rem70172.18, 0
  br i1 %cmp71.18, label %if.then73.18, label %for.inc100.18

if.then73.18:                                     ; preds = %if.end.18
  %add74.18 = add nsw i32 %var1.1.17, %rem13
  %call79.18 = tail call i32 @rand() #3
  %rem80.18 = srem i32 %call79.18, 5
  br label %for.body87.18

for.body87.18:                                    ; preds = %for.body87.18, %if.then73.18
  %indvars.iv.18 = phi i64 [ 0, %if.then73.18 ], [ %indvars.iv.next.18, %for.body87.18 ]
  %call88.18 = tail call i32 @rand() #3
  %rem89.18 = srem i32 %call88.18, 100
  %160 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.18 = add nsw i32 %rem89.18, %160
  %rem93.lhs.trunc.18 = trunc i64 %indvars.iv.18 to i8
  %rem93173.18 = urem i8 %rem93.lhs.trunc.18, 10
  %idxprom94.18 = zext i8 %rem93173.18 to i64
  %arrayidx95.18 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.18, i64 %idxprom94.18
  store i32 %add90.18, i32* %arrayidx95.18, align 4, !tbaa !12
  %indvars.iv.next.18 = add nuw nsw i64 %indvars.iv.18, 1
  %exitcond.18.not = icmp eq i64 %indvars.iv.next.18, 10
  br i1 %exitcond.18.not, label %for.inc100.loopexit.18, label %for.body87.18, !llvm.loop !13

for.inc100.loopexit.18:                           ; preds = %for.body87.18
  %mul75.18 = mul nsw i32 %add74.18, %rem15
  %add81.18 = add nsw i32 %rem80.18, %rem78.sext
  br label %for.inc100.18

for.inc100.18:                                    ; preds = %for.inc100.loopexit.18, %if.end.18
  %var4.1.18 = phi i32 [ %var4.1.17, %if.end.18 ], [ %mul75.18, %for.inc100.loopexit.18 ]
  %var5.1.18 = phi i32 [ %var5.1.17, %if.end.18 ], [ %rem9, %for.inc100.loopexit.18 ]
  %var1.1.18 = phi i32 [ %var1.1.17, %if.end.18 ], [ %add81.18, %for.inc100.loopexit.18 ]
  %161 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.19 = mul nsw i32 %161, 3
  %162 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.19 = sdiv i32 %162, -2
  %sub.19 = add i32 %div.neg.19, %mul.19
  store i32 %sub.19, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.19 = add nsw i32 %sub.19, %161
  %rem32.19 = srem i32 %add31.19, 100
  store i32 %rem32.19, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.19 = or i32 %rem32.19, 1
  %add33.19 = add nsw i32 %or.19, %rem17
  store i32 %add33.19, i32* @main.hot_data.1, align 4, !tbaa !10
  %163 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.19 = add nsw i32 %add33.19, %163
  store i32 %add42.19, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %164 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.19 = or i16 %164, 19
  %rem43171.19 = urem i16 %rem43.lhs.trunc.19, 100
  %cmp44.19 = icmp eq i16 %rem43171.19, 0
  br i1 %cmp44.19, label %if.then.19, label %if.end.19

if.then.19:                                       ; preds = %for.inc100.18
  %add48.19 = add nsw i32 %mid_vars.sroa.0.1.18, %rem9
  %mul49.19 = mul nsw i32 %local2.1.18, %add48.19
  %shr.19 = ashr i32 %mul49.19, 1
  %add51.19 = add nsw i32 %sub.19, %shr.19
  %call53.19 = tail call i32 @rand() #3
  %rem54.19 = srem i32 %call53.19, 5
  %add55.19 = add nsw i32 %rem54.19, %rem17
  %rem56.19 = srem i32 %add55.19, 100
  %165 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.19 = add nsw i32 %165, %shr.19
  %166 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.19 = add nsw i32 %add59.19, %166
  store i32 %add66.19, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %167 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %167, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.19, %for.inc100.18
  %mid_vars.sroa.0.1.19 = phi i32 [ %add51.19, %if.then.19 ], [ %mid_vars.sroa.0.1.18, %for.inc100.18 ]
  %mid_vars.sroa.10166.1.19 = phi i32 [ %mul49.19, %if.then.19 ], [ %mid_vars.sroa.10166.1.18, %for.inc100.18 ]
  %local2.1.19 = phi i32 [ %rem56.19, %if.then.19 ], [ %local2.1.18, %for.inc100.18 ]
  %rem70172.19 = urem i16 %rem43.lhs.trunc.19, 1000
  %cmp71.19 = icmp eq i16 %rem70172.19, 0
  br i1 %cmp71.19, label %if.then73.19, label %for.inc100.19

if.then73.19:                                     ; preds = %if.end.19
  %add74.19 = add nsw i32 %var1.1.18, %rem13
  %call79.19 = tail call i32 @rand() #3
  %rem80.19 = srem i32 %call79.19, 5
  br label %for.body87.19

for.body87.19:                                    ; preds = %for.body87.19, %if.then73.19
  %indvars.iv.19 = phi i64 [ 0, %if.then73.19 ], [ %indvars.iv.next.19, %for.body87.19 ]
  %call88.19 = tail call i32 @rand() #3
  %rem89.19 = srem i32 %call88.19, 100
  %168 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.19 = add nsw i32 %rem89.19, %168
  %rem93.lhs.trunc.19 = trunc i64 %indvars.iv.19 to i8
  %rem93173.19 = urem i8 %rem93.lhs.trunc.19, 10
  %idxprom94.19 = zext i8 %rem93173.19 to i64
  %arrayidx95.19 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.19, i64 %idxprom94.19
  store i32 %add90.19, i32* %arrayidx95.19, align 4, !tbaa !12
  %indvars.iv.next.19 = add nuw nsw i64 %indvars.iv.19, 1
  %exitcond.19.not = icmp eq i64 %indvars.iv.next.19, 10
  br i1 %exitcond.19.not, label %for.inc100.loopexit.19, label %for.body87.19, !llvm.loop !13

for.inc100.loopexit.19:                           ; preds = %for.body87.19
  %mul75.19 = mul nsw i32 %add74.19, %rem15
  %add81.19 = add nsw i32 %rem80.19, %rem78.sext
  br label %for.inc100.19

for.inc100.19:                                    ; preds = %for.inc100.loopexit.19, %if.end.19
  %var4.1.19 = phi i32 [ %var4.1.18, %if.end.19 ], [ %mul75.19, %for.inc100.loopexit.19 ]
  %var5.1.19 = phi i32 [ %var5.1.18, %if.end.19 ], [ %rem9, %for.inc100.loopexit.19 ]
  %var1.1.19 = phi i32 [ %var1.1.18, %if.end.19 ], [ %add81.19, %for.inc100.loopexit.19 ]
  %169 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.20 = mul nsw i32 %169, 3
  %170 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.20 = sdiv i32 %170, -2
  %sub.20 = add i32 %div.neg.20, %mul.20
  store i32 %sub.20, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.20 = add nsw i32 %sub.20, %169
  %rem32.20 = srem i32 %add31.20, 100
  store i32 %rem32.20, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.20 = or i32 %rem32.20, 1
  %add33.20 = add nsw i32 %or.20, %rem17
  store i32 %add33.20, i32* @main.hot_data.1, align 4, !tbaa !10
  %171 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.20 = add nsw i32 %add33.20, %171
  store i32 %add42.20, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %172 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.20 = or i16 %172, 20
  %rem43171.20 = urem i16 %rem43.lhs.trunc.20, 100
  %cmp44.20 = icmp eq i16 %rem43171.20, 0
  br i1 %cmp44.20, label %if.then.20, label %if.end.20

if.then.20:                                       ; preds = %for.inc100.19
  %add48.20 = add nsw i32 %mid_vars.sroa.0.1.19, %rem9
  %mul49.20 = mul nsw i32 %local2.1.19, %add48.20
  %shr.20 = ashr i32 %mul49.20, 1
  %add51.20 = add nsw i32 %sub.20, %shr.20
  %call53.20 = tail call i32 @rand() #3
  %rem54.20 = srem i32 %call53.20, 5
  %add55.20 = add nsw i32 %rem54.20, %rem17
  %rem56.20 = srem i32 %add55.20, 100
  %173 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.20 = add nsw i32 %173, %shr.20
  %174 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.20 = add nsw i32 %add59.20, %174
  store i32 %add66.20, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.20, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.20, %for.inc100.19
  %mid_vars.sroa.0.1.20 = phi i32 [ %add51.20, %if.then.20 ], [ %mid_vars.sroa.0.1.19, %for.inc100.19 ]
  %mid_vars.sroa.10166.1.20 = phi i32 [ %mul49.20, %if.then.20 ], [ %mid_vars.sroa.10166.1.19, %for.inc100.19 ]
  %local2.1.20 = phi i32 [ %rem56.20, %if.then.20 ], [ %local2.1.19, %for.inc100.19 ]
  %rem70172.20 = urem i16 %rem43.lhs.trunc.20, 1000
  %cmp71.20 = icmp eq i16 %rem70172.20, 0
  br i1 %cmp71.20, label %if.then73.20, label %for.inc100.20

if.then73.20:                                     ; preds = %if.end.20
  %add74.20 = add nsw i32 %var1.1.19, %rem13
  %call79.20 = tail call i32 @rand() #3
  %rem80.20 = srem i32 %call79.20, 5
  br label %for.body87.20

for.body87.20:                                    ; preds = %for.body87.20, %if.then73.20
  %indvars.iv.20 = phi i64 [ 0, %if.then73.20 ], [ %indvars.iv.next.20, %for.body87.20 ]
  %call88.20 = tail call i32 @rand() #3
  %rem89.20 = srem i32 %call88.20, 100
  %175 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.20 = add nsw i32 %rem89.20, %175
  %rem93.lhs.trunc.20 = trunc i64 %indvars.iv.20 to i8
  %rem93173.20 = urem i8 %rem93.lhs.trunc.20, 10
  %idxprom94.20 = zext i8 %rem93173.20 to i64
  %arrayidx95.20 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.20, i64 %idxprom94.20
  store i32 %add90.20, i32* %arrayidx95.20, align 4, !tbaa !12
  %indvars.iv.next.20 = add nuw nsw i64 %indvars.iv.20, 1
  %exitcond.20.not = icmp eq i64 %indvars.iv.next.20, 10
  br i1 %exitcond.20.not, label %for.inc100.loopexit.20, label %for.body87.20, !llvm.loop !13

for.inc100.loopexit.20:                           ; preds = %for.body87.20
  %mul75.20 = mul nsw i32 %add74.20, %rem15
  %add81.20 = add nsw i32 %rem80.20, %rem78.sext
  br label %for.inc100.20

for.inc100.20:                                    ; preds = %for.inc100.loopexit.20, %if.end.20
  %var4.1.20 = phi i32 [ %var4.1.19, %if.end.20 ], [ %mul75.20, %for.inc100.loopexit.20 ]
  %var5.1.20 = phi i32 [ %var5.1.19, %if.end.20 ], [ %rem9, %for.inc100.loopexit.20 ]
  %var1.1.20 = phi i32 [ %var1.1.19, %if.end.20 ], [ %add81.20, %for.inc100.loopexit.20 ]
  %176 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.21 = mul nsw i32 %176, 3
  %177 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.21 = sdiv i32 %177, -2
  %sub.21 = add i32 %div.neg.21, %mul.21
  store i32 %sub.21, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.21 = add nsw i32 %sub.21, %176
  %rem32.21 = srem i32 %add31.21, 100
  store i32 %rem32.21, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.21 = or i32 %rem32.21, 1
  %add33.21 = add nsw i32 %or.21, %rem17
  store i32 %add33.21, i32* @main.hot_data.1, align 4, !tbaa !10
  %178 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.21 = add nsw i32 %add33.21, %178
  store i32 %add42.21, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %179 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.21 = or i16 %179, 21
  %rem43171.21 = urem i16 %rem43.lhs.trunc.21, 100
  %cmp44.21 = icmp eq i16 %rem43171.21, 0
  br i1 %cmp44.21, label %if.then.21, label %if.end.21

if.then.21:                                       ; preds = %for.inc100.20
  %add48.21 = add nsw i32 %mid_vars.sroa.0.1.20, %rem9
  %mul49.21 = mul nsw i32 %local2.1.20, %add48.21
  %shr.21 = ashr i32 %mul49.21, 1
  %add51.21 = add nsw i32 %sub.21, %shr.21
  %call53.21 = tail call i32 @rand() #3
  %rem54.21 = srem i32 %call53.21, 5
  %add55.21 = add nsw i32 %rem54.21, %rem17
  %rem56.21 = srem i32 %add55.21, 100
  %180 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.21 = add nsw i32 %180, %shr.21
  %181 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.21 = add nsw i32 %add59.21, %181
  store i32 %add66.21, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %182 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %182, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.21, %for.inc100.20
  %mid_vars.sroa.0.1.21 = phi i32 [ %add51.21, %if.then.21 ], [ %mid_vars.sroa.0.1.20, %for.inc100.20 ]
  %mid_vars.sroa.10166.1.21 = phi i32 [ %mul49.21, %if.then.21 ], [ %mid_vars.sroa.10166.1.20, %for.inc100.20 ]
  %local2.1.21 = phi i32 [ %rem56.21, %if.then.21 ], [ %local2.1.20, %for.inc100.20 ]
  %rem70172.21 = urem i16 %rem43.lhs.trunc.21, 1000
  %cmp71.21 = icmp eq i16 %rem70172.21, 0
  br i1 %cmp71.21, label %if.then73.21, label %for.inc100.21

if.then73.21:                                     ; preds = %if.end.21
  %add74.21 = add nsw i32 %var1.1.20, %rem13
  %call79.21 = tail call i32 @rand() #3
  %rem80.21 = srem i32 %call79.21, 5
  br label %for.body87.21

for.body87.21:                                    ; preds = %for.body87.21, %if.then73.21
  %indvars.iv.21 = phi i64 [ 0, %if.then73.21 ], [ %indvars.iv.next.21, %for.body87.21 ]
  %call88.21 = tail call i32 @rand() #3
  %rem89.21 = srem i32 %call88.21, 100
  %183 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.21 = add nsw i32 %rem89.21, %183
  %rem93.lhs.trunc.21 = trunc i64 %indvars.iv.21 to i8
  %rem93173.21 = urem i8 %rem93.lhs.trunc.21, 10
  %idxprom94.21 = zext i8 %rem93173.21 to i64
  %arrayidx95.21 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.21, i64 %idxprom94.21
  store i32 %add90.21, i32* %arrayidx95.21, align 4, !tbaa !12
  %indvars.iv.next.21 = add nuw nsw i64 %indvars.iv.21, 1
  %exitcond.21.not = icmp eq i64 %indvars.iv.next.21, 10
  br i1 %exitcond.21.not, label %for.inc100.loopexit.21, label %for.body87.21, !llvm.loop !13

for.inc100.loopexit.21:                           ; preds = %for.body87.21
  %mul75.21 = mul nsw i32 %add74.21, %rem15
  %add81.21 = add nsw i32 %rem80.21, %rem78.sext
  br label %for.inc100.21

for.inc100.21:                                    ; preds = %for.inc100.loopexit.21, %if.end.21
  %var4.1.21 = phi i32 [ %var4.1.20, %if.end.21 ], [ %mul75.21, %for.inc100.loopexit.21 ]
  %var5.1.21 = phi i32 [ %var5.1.20, %if.end.21 ], [ %rem9, %for.inc100.loopexit.21 ]
  %var1.1.21 = phi i32 [ %var1.1.20, %if.end.21 ], [ %add81.21, %for.inc100.loopexit.21 ]
  %184 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.22 = mul nsw i32 %184, 3
  %185 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.22 = sdiv i32 %185, -2
  %sub.22 = add i32 %div.neg.22, %mul.22
  store i32 %sub.22, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.22 = add nsw i32 %sub.22, %184
  %rem32.22 = srem i32 %add31.22, 100
  store i32 %rem32.22, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.22 = or i32 %rem32.22, 1
  %add33.22 = add nsw i32 %or.22, %rem17
  store i32 %add33.22, i32* @main.hot_data.1, align 4, !tbaa !10
  %186 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.22 = add nsw i32 %add33.22, %186
  store i32 %add42.22, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %187 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.22 = or i16 %187, 22
  %rem43171.22 = urem i16 %rem43.lhs.trunc.22, 100
  %cmp44.22 = icmp eq i16 %rem43171.22, 0
  br i1 %cmp44.22, label %if.then.22, label %if.end.22

if.then.22:                                       ; preds = %for.inc100.21
  %add48.22 = add nsw i32 %mid_vars.sroa.0.1.21, %rem9
  %mul49.22 = mul nsw i32 %local2.1.21, %add48.22
  %shr.22 = ashr i32 %mul49.22, 1
  %add51.22 = add nsw i32 %sub.22, %shr.22
  %call53.22 = tail call i32 @rand() #3
  %rem54.22 = srem i32 %call53.22, 5
  %add55.22 = add nsw i32 %rem54.22, %rem17
  %rem56.22 = srem i32 %add55.22, 100
  %188 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.22 = add nsw i32 %188, %shr.22
  %189 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.22 = add nsw i32 %add59.22, %189
  store i32 %add66.22, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %190 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %190, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.22, %for.inc100.21
  %mid_vars.sroa.0.1.22 = phi i32 [ %add51.22, %if.then.22 ], [ %mid_vars.sroa.0.1.21, %for.inc100.21 ]
  %mid_vars.sroa.10166.1.22 = phi i32 [ %mul49.22, %if.then.22 ], [ %mid_vars.sroa.10166.1.21, %for.inc100.21 ]
  %local2.1.22 = phi i32 [ %rem56.22, %if.then.22 ], [ %local2.1.21, %for.inc100.21 ]
  %rem70172.22 = urem i16 %rem43.lhs.trunc.22, 1000
  %cmp71.22 = icmp eq i16 %rem70172.22, 0
  br i1 %cmp71.22, label %if.then73.22, label %for.inc100.22

if.then73.22:                                     ; preds = %if.end.22
  %add74.22 = add nsw i32 %var1.1.21, %rem13
  %call79.22 = tail call i32 @rand() #3
  %rem80.22 = srem i32 %call79.22, 5
  br label %for.body87.22

for.body87.22:                                    ; preds = %for.body87.22, %if.then73.22
  %indvars.iv.22 = phi i64 [ 0, %if.then73.22 ], [ %indvars.iv.next.22, %for.body87.22 ]
  %call88.22 = tail call i32 @rand() #3
  %rem89.22 = srem i32 %call88.22, 100
  %191 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.22 = add nsw i32 %rem89.22, %191
  %rem93.lhs.trunc.22 = trunc i64 %indvars.iv.22 to i8
  %rem93173.22 = urem i8 %rem93.lhs.trunc.22, 10
  %idxprom94.22 = zext i8 %rem93173.22 to i64
  %arrayidx95.22 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.22, i64 %idxprom94.22
  store i32 %add90.22, i32* %arrayidx95.22, align 4, !tbaa !12
  %indvars.iv.next.22 = add nuw nsw i64 %indvars.iv.22, 1
  %exitcond.22.not = icmp eq i64 %indvars.iv.next.22, 10
  br i1 %exitcond.22.not, label %for.inc100.loopexit.22, label %for.body87.22, !llvm.loop !13

for.inc100.loopexit.22:                           ; preds = %for.body87.22
  %mul75.22 = mul nsw i32 %add74.22, %rem15
  %add81.22 = add nsw i32 %rem80.22, %rem78.sext
  br label %for.inc100.22

for.inc100.22:                                    ; preds = %for.inc100.loopexit.22, %if.end.22
  %var4.1.22 = phi i32 [ %var4.1.21, %if.end.22 ], [ %mul75.22, %for.inc100.loopexit.22 ]
  %var5.1.22 = phi i32 [ %var5.1.21, %if.end.22 ], [ %rem9, %for.inc100.loopexit.22 ]
  %var1.1.22 = phi i32 [ %var1.1.21, %if.end.22 ], [ %add81.22, %for.inc100.loopexit.22 ]
  %192 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.23 = mul nsw i32 %192, 3
  %193 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.23 = sdiv i32 %193, -2
  %sub.23 = add i32 %div.neg.23, %mul.23
  store i32 %sub.23, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.23 = add nsw i32 %sub.23, %192
  %rem32.23 = srem i32 %add31.23, 100
  store i32 %rem32.23, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.23 = or i32 %rem32.23, 1
  %add33.23 = add nsw i32 %or.23, %rem17
  store i32 %add33.23, i32* @main.hot_data.1, align 4, !tbaa !10
  %194 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.23 = add nsw i32 %add33.23, %194
  store i32 %add42.23, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %195 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.23 = or i16 %195, 23
  %rem43171.23 = urem i16 %rem43.lhs.trunc.23, 100
  %cmp44.23 = icmp eq i16 %rem43171.23, 0
  br i1 %cmp44.23, label %if.then.23, label %if.end.23

if.then.23:                                       ; preds = %for.inc100.22
  %add48.23 = add nsw i32 %mid_vars.sroa.0.1.22, %rem9
  %mul49.23 = mul nsw i32 %local2.1.22, %add48.23
  %shr.23 = ashr i32 %mul49.23, 1
  %add51.23 = add nsw i32 %sub.23, %shr.23
  %call53.23 = tail call i32 @rand() #3
  %rem54.23 = srem i32 %call53.23, 5
  %add55.23 = add nsw i32 %rem54.23, %rem17
  %rem56.23 = srem i32 %add55.23, 100
  %196 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.23 = add nsw i32 %196, %shr.23
  %197 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.23 = add nsw i32 %add59.23, %197
  store i32 %add66.23, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %198 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %198, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.23, %for.inc100.22
  %mid_vars.sroa.0.1.23 = phi i32 [ %add51.23, %if.then.23 ], [ %mid_vars.sroa.0.1.22, %for.inc100.22 ]
  %mid_vars.sroa.10166.1.23 = phi i32 [ %mul49.23, %if.then.23 ], [ %mid_vars.sroa.10166.1.22, %for.inc100.22 ]
  %local2.1.23 = phi i32 [ %rem56.23, %if.then.23 ], [ %local2.1.22, %for.inc100.22 ]
  %rem70172.23 = urem i16 %rem43.lhs.trunc.23, 1000
  %cmp71.23 = icmp eq i16 %rem70172.23, 0
  br i1 %cmp71.23, label %if.then73.23, label %for.inc100.23

if.then73.23:                                     ; preds = %if.end.23
  %add74.23 = add nsw i32 %var1.1.22, %rem13
  %call79.23 = tail call i32 @rand() #3
  %rem80.23 = srem i32 %call79.23, 5
  br label %for.body87.23

for.body87.23:                                    ; preds = %for.body87.23, %if.then73.23
  %indvars.iv.23 = phi i64 [ 0, %if.then73.23 ], [ %indvars.iv.next.23, %for.body87.23 ]
  %call88.23 = tail call i32 @rand() #3
  %rem89.23 = srem i32 %call88.23, 100
  %199 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.23 = add nsw i32 %rem89.23, %199
  %rem93.lhs.trunc.23 = trunc i64 %indvars.iv.23 to i8
  %rem93173.23 = urem i8 %rem93.lhs.trunc.23, 10
  %idxprom94.23 = zext i8 %rem93173.23 to i64
  %arrayidx95.23 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.23, i64 %idxprom94.23
  store i32 %add90.23, i32* %arrayidx95.23, align 4, !tbaa !12
  %indvars.iv.next.23 = add nuw nsw i64 %indvars.iv.23, 1
  %exitcond.23.not = icmp eq i64 %indvars.iv.next.23, 10
  br i1 %exitcond.23.not, label %for.inc100.loopexit.23, label %for.body87.23, !llvm.loop !13

for.inc100.loopexit.23:                           ; preds = %for.body87.23
  %mul75.23 = mul nsw i32 %add74.23, %rem15
  %add81.23 = add nsw i32 %rem80.23, %rem78.sext
  br label %for.inc100.23

for.inc100.23:                                    ; preds = %for.inc100.loopexit.23, %if.end.23
  %var4.1.23 = phi i32 [ %var4.1.22, %if.end.23 ], [ %mul75.23, %for.inc100.loopexit.23 ]
  %var5.1.23 = phi i32 [ %var5.1.22, %if.end.23 ], [ %rem9, %for.inc100.loopexit.23 ]
  %var1.1.23 = phi i32 [ %var1.1.22, %if.end.23 ], [ %add81.23, %for.inc100.loopexit.23 ]
  %200 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.24 = mul nsw i32 %200, 3
  %201 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.24 = sdiv i32 %201, -2
  %sub.24 = add i32 %div.neg.24, %mul.24
  store i32 %sub.24, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.24 = add nsw i32 %sub.24, %200
  %rem32.24 = srem i32 %add31.24, 100
  store i32 %rem32.24, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.24 = or i32 %rem32.24, 1
  %add33.24 = add nsw i32 %or.24, %rem17
  store i32 %add33.24, i32* @main.hot_data.1, align 4, !tbaa !10
  %202 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.24 = add nsw i32 %add33.24, %202
  store i32 %add42.24, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %203 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.24 = or i16 %203, 24
  %rem43171.24 = urem i16 %rem43.lhs.trunc.24, 100
  %cmp44.24 = icmp eq i16 %rem43171.24, 0
  br i1 %cmp44.24, label %if.then.24, label %if.end.24

if.then.24:                                       ; preds = %for.inc100.23
  %add48.24 = add nsw i32 %mid_vars.sroa.0.1.23, %rem9
  %mul49.24 = mul nsw i32 %local2.1.23, %add48.24
  %shr.24 = ashr i32 %mul49.24, 1
  %add51.24 = add nsw i32 %sub.24, %shr.24
  %call53.24 = tail call i32 @rand() #3
  %rem54.24 = srem i32 %call53.24, 5
  %add55.24 = add nsw i32 %rem54.24, %rem17
  %rem56.24 = srem i32 %add55.24, 100
  %204 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.24 = add nsw i32 %204, %shr.24
  %205 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.24 = add nsw i32 %add59.24, %205
  store i32 %add66.24, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %206 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %206, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.24, %for.inc100.23
  %mid_vars.sroa.0.1.24 = phi i32 [ %add51.24, %if.then.24 ], [ %mid_vars.sroa.0.1.23, %for.inc100.23 ]
  %mid_vars.sroa.10166.1.24 = phi i32 [ %mul49.24, %if.then.24 ], [ %mid_vars.sroa.10166.1.23, %for.inc100.23 ]
  %local2.1.24 = phi i32 [ %rem56.24, %if.then.24 ], [ %local2.1.23, %for.inc100.23 ]
  %rem70172.24 = urem i16 %rem43.lhs.trunc.24, 1000
  %cmp71.24 = icmp eq i16 %rem70172.24, 0
  br i1 %cmp71.24, label %if.then73.24, label %for.inc100.24

if.then73.24:                                     ; preds = %if.end.24
  %add74.24 = add nsw i32 %var1.1.23, %rem13
  %call79.24 = tail call i32 @rand() #3
  %rem80.24 = srem i32 %call79.24, 5
  br label %for.body87.24

for.body87.24:                                    ; preds = %for.body87.24, %if.then73.24
  %indvars.iv.24 = phi i64 [ 0, %if.then73.24 ], [ %indvars.iv.next.24, %for.body87.24 ]
  %call88.24 = tail call i32 @rand() #3
  %rem89.24 = srem i32 %call88.24, 100
  %207 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.24 = add nsw i32 %rem89.24, %207
  %rem93.lhs.trunc.24 = trunc i64 %indvars.iv.24 to i8
  %rem93173.24 = urem i8 %rem93.lhs.trunc.24, 10
  %idxprom94.24 = zext i8 %rem93173.24 to i64
  %arrayidx95.24 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.24, i64 %idxprom94.24
  store i32 %add90.24, i32* %arrayidx95.24, align 4, !tbaa !12
  %indvars.iv.next.24 = add nuw nsw i64 %indvars.iv.24, 1
  %exitcond.24.not = icmp eq i64 %indvars.iv.next.24, 10
  br i1 %exitcond.24.not, label %for.inc100.loopexit.24, label %for.body87.24, !llvm.loop !13

for.inc100.loopexit.24:                           ; preds = %for.body87.24
  %mul75.24 = mul nsw i32 %add74.24, %rem15
  %add81.24 = add nsw i32 %rem80.24, %rem78.sext
  br label %for.inc100.24

for.inc100.24:                                    ; preds = %for.inc100.loopexit.24, %if.end.24
  %var4.1.24 = phi i32 [ %var4.1.23, %if.end.24 ], [ %mul75.24, %for.inc100.loopexit.24 ]
  %var5.1.24 = phi i32 [ %var5.1.23, %if.end.24 ], [ %rem9, %for.inc100.loopexit.24 ]
  %var1.1.24 = phi i32 [ %var1.1.23, %if.end.24 ], [ %add81.24, %for.inc100.loopexit.24 ]
  %208 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.25 = mul nsw i32 %208, 3
  %209 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.25 = sdiv i32 %209, -2
  %sub.25 = add i32 %div.neg.25, %mul.25
  store i32 %sub.25, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.25 = add nsw i32 %sub.25, %208
  %rem32.25 = srem i32 %add31.25, 100
  store i32 %rem32.25, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.25 = or i32 %rem32.25, 1
  %add33.25 = add nsw i32 %or.25, %rem17
  store i32 %add33.25, i32* @main.hot_data.1, align 4, !tbaa !10
  %210 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.25 = add nsw i32 %add33.25, %210
  store i32 %add42.25, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %211 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.25 = or i16 %211, 25
  %rem43171.25 = urem i16 %rem43.lhs.trunc.25, 100
  %cmp44.25 = icmp eq i16 %rem43171.25, 0
  br i1 %cmp44.25, label %if.then.25, label %if.end.25

if.then.25:                                       ; preds = %for.inc100.24
  %add48.25 = add nsw i32 %mid_vars.sroa.0.1.24, %rem9
  %mul49.25 = mul nsw i32 %local2.1.24, %add48.25
  %shr.25 = ashr i32 %mul49.25, 1
  %add51.25 = add nsw i32 %sub.25, %shr.25
  %call53.25 = tail call i32 @rand() #3
  %rem54.25 = srem i32 %call53.25, 5
  %add55.25 = add nsw i32 %rem54.25, %rem17
  %rem56.25 = srem i32 %add55.25, 100
  %212 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.25 = add nsw i32 %212, %shr.25
  %213 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.25 = add nsw i32 %add59.25, %213
  store i32 %add66.25, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %214 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %214, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.25, %for.inc100.24
  %mid_vars.sroa.0.1.25 = phi i32 [ %add51.25, %if.then.25 ], [ %mid_vars.sroa.0.1.24, %for.inc100.24 ]
  %mid_vars.sroa.10166.1.25 = phi i32 [ %mul49.25, %if.then.25 ], [ %mid_vars.sroa.10166.1.24, %for.inc100.24 ]
  %local2.1.25 = phi i32 [ %rem56.25, %if.then.25 ], [ %local2.1.24, %for.inc100.24 ]
  %rem70172.25 = urem i16 %rem43.lhs.trunc.25, 1000
  %cmp71.25 = icmp eq i16 %rem70172.25, 0
  br i1 %cmp71.25, label %if.then73.25, label %for.inc100.25

if.then73.25:                                     ; preds = %if.end.25
  %add74.25 = add nsw i32 %var1.1.24, %rem13
  %call79.25 = tail call i32 @rand() #3
  %rem80.25 = srem i32 %call79.25, 5
  br label %for.body87.25

for.body87.25:                                    ; preds = %for.body87.25, %if.then73.25
  %indvars.iv.25 = phi i64 [ 0, %if.then73.25 ], [ %indvars.iv.next.25, %for.body87.25 ]
  %call88.25 = tail call i32 @rand() #3
  %rem89.25 = srem i32 %call88.25, 100
  %215 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.25 = add nsw i32 %rem89.25, %215
  %rem93.lhs.trunc.25 = trunc i64 %indvars.iv.25 to i8
  %rem93173.25 = urem i8 %rem93.lhs.trunc.25, 10
  %idxprom94.25 = zext i8 %rem93173.25 to i64
  %arrayidx95.25 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.25, i64 %idxprom94.25
  store i32 %add90.25, i32* %arrayidx95.25, align 4, !tbaa !12
  %indvars.iv.next.25 = add nuw nsw i64 %indvars.iv.25, 1
  %exitcond.25.not = icmp eq i64 %indvars.iv.next.25, 10
  br i1 %exitcond.25.not, label %for.inc100.loopexit.25, label %for.body87.25, !llvm.loop !13

for.inc100.loopexit.25:                           ; preds = %for.body87.25
  %mul75.25 = mul nsw i32 %add74.25, %rem15
  %add81.25 = add nsw i32 %rem80.25, %rem78.sext
  br label %for.inc100.25

for.inc100.25:                                    ; preds = %for.inc100.loopexit.25, %if.end.25
  %var4.1.25 = phi i32 [ %var4.1.24, %if.end.25 ], [ %mul75.25, %for.inc100.loopexit.25 ]
  %var5.1.25 = phi i32 [ %var5.1.24, %if.end.25 ], [ %rem9, %for.inc100.loopexit.25 ]
  %var1.1.25 = phi i32 [ %var1.1.24, %if.end.25 ], [ %add81.25, %for.inc100.loopexit.25 ]
  %216 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.26 = mul nsw i32 %216, 3
  %217 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.26 = sdiv i32 %217, -2
  %sub.26 = add i32 %div.neg.26, %mul.26
  store i32 %sub.26, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.26 = add nsw i32 %sub.26, %216
  %rem32.26 = srem i32 %add31.26, 100
  store i32 %rem32.26, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.26 = or i32 %rem32.26, 1
  %add33.26 = add nsw i32 %or.26, %rem17
  store i32 %add33.26, i32* @main.hot_data.1, align 4, !tbaa !10
  %218 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.26 = add nsw i32 %add33.26, %218
  store i32 %add42.26, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %219 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.26 = or i16 %219, 26
  %rem43171.26 = urem i16 %rem43.lhs.trunc.26, 100
  %cmp44.26 = icmp eq i16 %rem43171.26, 0
  br i1 %cmp44.26, label %if.then.26, label %if.end.26

if.then.26:                                       ; preds = %for.inc100.25
  %add48.26 = add nsw i32 %mid_vars.sroa.0.1.25, %rem9
  %mul49.26 = mul nsw i32 %local2.1.25, %add48.26
  %shr.26 = ashr i32 %mul49.26, 1
  %add51.26 = add nsw i32 %sub.26, %shr.26
  %call53.26 = tail call i32 @rand() #3
  %rem54.26 = srem i32 %call53.26, 5
  %add55.26 = add nsw i32 %rem54.26, %rem17
  %rem56.26 = srem i32 %add55.26, 100
  %220 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.26 = add nsw i32 %220, %shr.26
  %221 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.26 = add nsw i32 %add59.26, %221
  store i32 %add66.26, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %222 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %222, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.26, %for.inc100.25
  %mid_vars.sroa.0.1.26 = phi i32 [ %add51.26, %if.then.26 ], [ %mid_vars.sroa.0.1.25, %for.inc100.25 ]
  %mid_vars.sroa.10166.1.26 = phi i32 [ %mul49.26, %if.then.26 ], [ %mid_vars.sroa.10166.1.25, %for.inc100.25 ]
  %local2.1.26 = phi i32 [ %rem56.26, %if.then.26 ], [ %local2.1.25, %for.inc100.25 ]
  %rem70172.26 = urem i16 %rem43.lhs.trunc.26, 1000
  %cmp71.26 = icmp eq i16 %rem70172.26, 0
  br i1 %cmp71.26, label %if.then73.26, label %for.inc100.26

if.then73.26:                                     ; preds = %if.end.26
  %add74.26 = add nsw i32 %var1.1.25, %rem13
  %call79.26 = tail call i32 @rand() #3
  %rem80.26 = srem i32 %call79.26, 5
  br label %for.body87.26

for.body87.26:                                    ; preds = %for.body87.26, %if.then73.26
  %indvars.iv.26 = phi i64 [ 0, %if.then73.26 ], [ %indvars.iv.next.26, %for.body87.26 ]
  %call88.26 = tail call i32 @rand() #3
  %rem89.26 = srem i32 %call88.26, 100
  %223 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.26 = add nsw i32 %rem89.26, %223
  %rem93.lhs.trunc.26 = trunc i64 %indvars.iv.26 to i8
  %rem93173.26 = urem i8 %rem93.lhs.trunc.26, 10
  %idxprom94.26 = zext i8 %rem93173.26 to i64
  %arrayidx95.26 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.26, i64 %idxprom94.26
  store i32 %add90.26, i32* %arrayidx95.26, align 4, !tbaa !12
  %indvars.iv.next.26 = add nuw nsw i64 %indvars.iv.26, 1
  %exitcond.26.not = icmp eq i64 %indvars.iv.next.26, 10
  br i1 %exitcond.26.not, label %for.inc100.loopexit.26, label %for.body87.26, !llvm.loop !13

for.inc100.loopexit.26:                           ; preds = %for.body87.26
  %mul75.26 = mul nsw i32 %add74.26, %rem15
  %add81.26 = add nsw i32 %rem80.26, %rem78.sext
  br label %for.inc100.26

for.inc100.26:                                    ; preds = %for.inc100.loopexit.26, %if.end.26
  %var4.1.26 = phi i32 [ %var4.1.25, %if.end.26 ], [ %mul75.26, %for.inc100.loopexit.26 ]
  %var5.1.26 = phi i32 [ %var5.1.25, %if.end.26 ], [ %rem9, %for.inc100.loopexit.26 ]
  %var1.1.26 = phi i32 [ %var1.1.25, %if.end.26 ], [ %add81.26, %for.inc100.loopexit.26 ]
  %224 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.27 = mul nsw i32 %224, 3
  %225 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.27 = sdiv i32 %225, -2
  %sub.27 = add i32 %div.neg.27, %mul.27
  store i32 %sub.27, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.27 = add nsw i32 %sub.27, %224
  %rem32.27 = srem i32 %add31.27, 100
  store i32 %rem32.27, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.27 = or i32 %rem32.27, 1
  %add33.27 = add nsw i32 %or.27, %rem17
  store i32 %add33.27, i32* @main.hot_data.1, align 4, !tbaa !10
  %226 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.27 = add nsw i32 %add33.27, %226
  store i32 %add42.27, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %227 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.27 = or i16 %227, 27
  %rem43171.27 = urem i16 %rem43.lhs.trunc.27, 100
  %cmp44.27 = icmp eq i16 %rem43171.27, 0
  br i1 %cmp44.27, label %if.then.27, label %if.end.27

if.then.27:                                       ; preds = %for.inc100.26
  %add48.27 = add nsw i32 %mid_vars.sroa.0.1.26, %rem9
  %mul49.27 = mul nsw i32 %local2.1.26, %add48.27
  %shr.27 = ashr i32 %mul49.27, 1
  %add51.27 = add nsw i32 %sub.27, %shr.27
  %call53.27 = tail call i32 @rand() #3
  %rem54.27 = srem i32 %call53.27, 5
  %add55.27 = add nsw i32 %rem54.27, %rem17
  %rem56.27 = srem i32 %add55.27, 100
  %228 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.27 = add nsw i32 %228, %shr.27
  %229 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.27 = add nsw i32 %add59.27, %229
  store i32 %add66.27, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %230 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %230, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.27, %for.inc100.26
  %mid_vars.sroa.0.1.27 = phi i32 [ %add51.27, %if.then.27 ], [ %mid_vars.sroa.0.1.26, %for.inc100.26 ]
  %mid_vars.sroa.10166.1.27 = phi i32 [ %mul49.27, %if.then.27 ], [ %mid_vars.sroa.10166.1.26, %for.inc100.26 ]
  %local2.1.27 = phi i32 [ %rem56.27, %if.then.27 ], [ %local2.1.26, %for.inc100.26 ]
  %rem70172.27 = urem i16 %rem43.lhs.trunc.27, 1000
  %cmp71.27 = icmp eq i16 %rem70172.27, 0
  br i1 %cmp71.27, label %if.then73.27, label %for.inc100.27

if.then73.27:                                     ; preds = %if.end.27
  %add74.27 = add nsw i32 %var1.1.26, %rem13
  %call79.27 = tail call i32 @rand() #3
  %rem80.27 = srem i32 %call79.27, 5
  br label %for.body87.27

for.body87.27:                                    ; preds = %for.body87.27, %if.then73.27
  %indvars.iv.27 = phi i64 [ 0, %if.then73.27 ], [ %indvars.iv.next.27, %for.body87.27 ]
  %call88.27 = tail call i32 @rand() #3
  %rem89.27 = srem i32 %call88.27, 100
  %231 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.27 = add nsw i32 %rem89.27, %231
  %rem93.lhs.trunc.27 = trunc i64 %indvars.iv.27 to i8
  %rem93173.27 = urem i8 %rem93.lhs.trunc.27, 10
  %idxprom94.27 = zext i8 %rem93173.27 to i64
  %arrayidx95.27 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.27, i64 %idxprom94.27
  store i32 %add90.27, i32* %arrayidx95.27, align 4, !tbaa !12
  %indvars.iv.next.27 = add nuw nsw i64 %indvars.iv.27, 1
  %exitcond.27.not = icmp eq i64 %indvars.iv.next.27, 10
  br i1 %exitcond.27.not, label %for.inc100.loopexit.27, label %for.body87.27, !llvm.loop !13

for.inc100.loopexit.27:                           ; preds = %for.body87.27
  %mul75.27 = mul nsw i32 %add74.27, %rem15
  %add81.27 = add nsw i32 %rem80.27, %rem78.sext
  br label %for.inc100.27

for.inc100.27:                                    ; preds = %for.inc100.loopexit.27, %if.end.27
  %var4.1.27 = phi i32 [ %var4.1.26, %if.end.27 ], [ %mul75.27, %for.inc100.loopexit.27 ]
  %var5.1.27 = phi i32 [ %var5.1.26, %if.end.27 ], [ %rem9, %for.inc100.loopexit.27 ]
  %var1.1.27 = phi i32 [ %var1.1.26, %if.end.27 ], [ %add81.27, %for.inc100.loopexit.27 ]
  %232 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.28 = mul nsw i32 %232, 3
  %233 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.28 = sdiv i32 %233, -2
  %sub.28 = add i32 %div.neg.28, %mul.28
  store i32 %sub.28, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.28 = add nsw i32 %sub.28, %232
  %rem32.28 = srem i32 %add31.28, 100
  store i32 %rem32.28, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.28 = or i32 %rem32.28, 1
  %add33.28 = add nsw i32 %or.28, %rem17
  store i32 %add33.28, i32* @main.hot_data.1, align 4, !tbaa !10
  %234 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.28 = add nsw i32 %add33.28, %234
  store i32 %add42.28, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %235 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.28 = or i16 %235, 28
  %rem43171.28 = urem i16 %rem43.lhs.trunc.28, 100
  %cmp44.28 = icmp eq i16 %rem43171.28, 0
  br i1 %cmp44.28, label %if.then.28, label %if.end.28

if.then.28:                                       ; preds = %for.inc100.27
  %add48.28 = add nsw i32 %mid_vars.sroa.0.1.27, %rem9
  %mul49.28 = mul nsw i32 %local2.1.27, %add48.28
  %shr.28 = ashr i32 %mul49.28, 1
  %add51.28 = add nsw i32 %sub.28, %shr.28
  %call53.28 = tail call i32 @rand() #3
  %rem54.28 = srem i32 %call53.28, 5
  %add55.28 = add nsw i32 %rem54.28, %rem17
  %rem56.28 = srem i32 %add55.28, 100
  %236 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.28 = add nsw i32 %236, %shr.28
  %237 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.28 = add nsw i32 %add59.28, %237
  store i32 %add66.28, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %238 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %238, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.28, %for.inc100.27
  %mid_vars.sroa.0.1.28 = phi i32 [ %add51.28, %if.then.28 ], [ %mid_vars.sroa.0.1.27, %for.inc100.27 ]
  %mid_vars.sroa.10166.1.28 = phi i32 [ %mul49.28, %if.then.28 ], [ %mid_vars.sroa.10166.1.27, %for.inc100.27 ]
  %local2.1.28 = phi i32 [ %rem56.28, %if.then.28 ], [ %local2.1.27, %for.inc100.27 ]
  %rem70172.28 = urem i16 %rem43.lhs.trunc.28, 1000
  %cmp71.28 = icmp eq i16 %rem70172.28, 0
  br i1 %cmp71.28, label %if.then73.28, label %for.inc100.28

if.then73.28:                                     ; preds = %if.end.28
  %add74.28 = add nsw i32 %var1.1.27, %rem13
  %call79.28 = tail call i32 @rand() #3
  %rem80.28 = srem i32 %call79.28, 5
  br label %for.body87.28

for.body87.28:                                    ; preds = %for.body87.28, %if.then73.28
  %indvars.iv.28 = phi i64 [ 0, %if.then73.28 ], [ %indvars.iv.next.28, %for.body87.28 ]
  %call88.28 = tail call i32 @rand() #3
  %rem89.28 = srem i32 %call88.28, 100
  %239 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.28 = add nsw i32 %rem89.28, %239
  %rem93.lhs.trunc.28 = trunc i64 %indvars.iv.28 to i8
  %rem93173.28 = urem i8 %rem93.lhs.trunc.28, 10
  %idxprom94.28 = zext i8 %rem93173.28 to i64
  %arrayidx95.28 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.28, i64 %idxprom94.28
  store i32 %add90.28, i32* %arrayidx95.28, align 4, !tbaa !12
  %indvars.iv.next.28 = add nuw nsw i64 %indvars.iv.28, 1
  %exitcond.28.not = icmp eq i64 %indvars.iv.next.28, 10
  br i1 %exitcond.28.not, label %for.inc100.loopexit.28, label %for.body87.28, !llvm.loop !13

for.inc100.loopexit.28:                           ; preds = %for.body87.28
  %mul75.28 = mul nsw i32 %add74.28, %rem15
  %add81.28 = add nsw i32 %rem80.28, %rem78.sext
  br label %for.inc100.28

for.inc100.28:                                    ; preds = %for.inc100.loopexit.28, %if.end.28
  %var4.1.28 = phi i32 [ %var4.1.27, %if.end.28 ], [ %mul75.28, %for.inc100.loopexit.28 ]
  %var5.1.28 = phi i32 [ %var5.1.27, %if.end.28 ], [ %rem9, %for.inc100.loopexit.28 ]
  %var1.1.28 = phi i32 [ %var1.1.27, %if.end.28 ], [ %add81.28, %for.inc100.loopexit.28 ]
  %240 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.29 = mul nsw i32 %240, 3
  %241 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.29 = sdiv i32 %241, -2
  %sub.29 = add i32 %div.neg.29, %mul.29
  store i32 %sub.29, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.29 = add nsw i32 %sub.29, %240
  %rem32.29 = srem i32 %add31.29, 100
  store i32 %rem32.29, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.29 = or i32 %rem32.29, 1
  %add33.29 = add nsw i32 %or.29, %rem17
  store i32 %add33.29, i32* @main.hot_data.1, align 4, !tbaa !10
  %242 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.29 = add nsw i32 %add33.29, %242
  store i32 %add42.29, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %243 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.29 = or i16 %243, 29
  %rem43171.29 = urem i16 %rem43.lhs.trunc.29, 100
  %cmp44.29 = icmp eq i16 %rem43171.29, 0
  br i1 %cmp44.29, label %if.then.29, label %if.end.29

if.then.29:                                       ; preds = %for.inc100.28
  %add48.29 = add nsw i32 %mid_vars.sroa.0.1.28, %rem9
  %mul49.29 = mul nsw i32 %local2.1.28, %add48.29
  %shr.29 = ashr i32 %mul49.29, 1
  %add51.29 = add nsw i32 %sub.29, %shr.29
  %call53.29 = tail call i32 @rand() #3
  %rem54.29 = srem i32 %call53.29, 5
  %add55.29 = add nsw i32 %rem54.29, %rem17
  %rem56.29 = srem i32 %add55.29, 100
  %244 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.29 = add nsw i32 %244, %shr.29
  %245 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.29 = add nsw i32 %add59.29, %245
  store i32 %add66.29, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %246 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %246, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.29, %for.inc100.28
  %mid_vars.sroa.0.1.29 = phi i32 [ %add51.29, %if.then.29 ], [ %mid_vars.sroa.0.1.28, %for.inc100.28 ]
  %mid_vars.sroa.10166.1.29 = phi i32 [ %mul49.29, %if.then.29 ], [ %mid_vars.sroa.10166.1.28, %for.inc100.28 ]
  %local2.1.29 = phi i32 [ %rem56.29, %if.then.29 ], [ %local2.1.28, %for.inc100.28 ]
  %rem70172.29 = urem i16 %rem43.lhs.trunc.29, 1000
  %cmp71.29 = icmp eq i16 %rem70172.29, 0
  br i1 %cmp71.29, label %if.then73.29, label %for.inc100.29

if.then73.29:                                     ; preds = %if.end.29
  %add74.29 = add nsw i32 %var1.1.28, %rem13
  %call79.29 = tail call i32 @rand() #3
  %rem80.29 = srem i32 %call79.29, 5
  br label %for.body87.29

for.body87.29:                                    ; preds = %for.body87.29, %if.then73.29
  %indvars.iv.29 = phi i64 [ 0, %if.then73.29 ], [ %indvars.iv.next.29, %for.body87.29 ]
  %call88.29 = tail call i32 @rand() #3
  %rem89.29 = srem i32 %call88.29, 100
  %247 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.29 = add nsw i32 %rem89.29, %247
  %rem93.lhs.trunc.29 = trunc i64 %indvars.iv.29 to i8
  %rem93173.29 = urem i8 %rem93.lhs.trunc.29, 10
  %idxprom94.29 = zext i8 %rem93173.29 to i64
  %arrayidx95.29 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.29, i64 %idxprom94.29
  store i32 %add90.29, i32* %arrayidx95.29, align 4, !tbaa !12
  %indvars.iv.next.29 = add nuw nsw i64 %indvars.iv.29, 1
  %exitcond.29.not = icmp eq i64 %indvars.iv.next.29, 10
  br i1 %exitcond.29.not, label %for.inc100.loopexit.29, label %for.body87.29, !llvm.loop !13

for.inc100.loopexit.29:                           ; preds = %for.body87.29
  %mul75.29 = mul nsw i32 %add74.29, %rem15
  %add81.29 = add nsw i32 %rem80.29, %rem78.sext
  br label %for.inc100.29

for.inc100.29:                                    ; preds = %for.inc100.loopexit.29, %if.end.29
  %var4.1.29 = phi i32 [ %var4.1.28, %if.end.29 ], [ %mul75.29, %for.inc100.loopexit.29 ]
  %var5.1.29 = phi i32 [ %var5.1.28, %if.end.29 ], [ %rem9, %for.inc100.loopexit.29 ]
  %var1.1.29 = phi i32 [ %var1.1.28, %if.end.29 ], [ %add81.29, %for.inc100.loopexit.29 ]
  %248 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.30 = mul nsw i32 %248, 3
  %249 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.30 = sdiv i32 %249, -2
  %sub.30 = add i32 %div.neg.30, %mul.30
  store i32 %sub.30, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.30 = add nsw i32 %sub.30, %248
  %rem32.30 = srem i32 %add31.30, 100
  store i32 %rem32.30, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.30 = or i32 %rem32.30, 1
  %add33.30 = add nsw i32 %or.30, %rem17
  store i32 %add33.30, i32* @main.hot_data.1, align 4, !tbaa !10
  %250 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.30 = add nsw i32 %add33.30, %250
  store i32 %add42.30, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %251 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.30 = or i16 %251, 30
  %rem43171.30 = urem i16 %rem43.lhs.trunc.30, 100
  %cmp44.30 = icmp eq i16 %rem43171.30, 0
  br i1 %cmp44.30, label %if.then.30, label %if.end.30

if.then.30:                                       ; preds = %for.inc100.29
  %add48.30 = add nsw i32 %mid_vars.sroa.0.1.29, %rem9
  %mul49.30 = mul nsw i32 %local2.1.29, %add48.30
  %shr.30 = ashr i32 %mul49.30, 1
  %add51.30 = add nsw i32 %sub.30, %shr.30
  %call53.30 = tail call i32 @rand() #3
  %rem54.30 = srem i32 %call53.30, 5
  %add55.30 = add nsw i32 %rem54.30, %rem17
  %rem56.30 = srem i32 %add55.30, 100
  %252 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.30 = add nsw i32 %252, %shr.30
  %253 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.30 = add nsw i32 %add59.30, %253
  store i32 %add66.30, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.30, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.30, %for.inc100.29
  %mid_vars.sroa.0.1.30 = phi i32 [ %add51.30, %if.then.30 ], [ %mid_vars.sroa.0.1.29, %for.inc100.29 ]
  %mid_vars.sroa.10166.1.30 = phi i32 [ %mul49.30, %if.then.30 ], [ %mid_vars.sroa.10166.1.29, %for.inc100.29 ]
  %local2.1.30 = phi i32 [ %rem56.30, %if.then.30 ], [ %local2.1.29, %for.inc100.29 ]
  %rem70172.30 = urem i16 %rem43.lhs.trunc.30, 1000
  %cmp71.30 = icmp eq i16 %rem70172.30, 0
  br i1 %cmp71.30, label %if.then73.30, label %for.inc100.30

if.then73.30:                                     ; preds = %if.end.30
  %add74.30 = add nsw i32 %var1.1.29, %rem13
  %call79.30 = tail call i32 @rand() #3
  %rem80.30 = srem i32 %call79.30, 5
  br label %for.body87.30

for.body87.30:                                    ; preds = %for.body87.30, %if.then73.30
  %indvars.iv.30 = phi i64 [ 0, %if.then73.30 ], [ %indvars.iv.next.30, %for.body87.30 ]
  %call88.30 = tail call i32 @rand() #3
  %rem89.30 = srem i32 %call88.30, 100
  %254 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.30 = add nsw i32 %rem89.30, %254
  %rem93.lhs.trunc.30 = trunc i64 %indvars.iv.30 to i8
  %rem93173.30 = urem i8 %rem93.lhs.trunc.30, 10
  %idxprom94.30 = zext i8 %rem93173.30 to i64
  %arrayidx95.30 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.30, i64 %idxprom94.30
  store i32 %add90.30, i32* %arrayidx95.30, align 4, !tbaa !12
  %indvars.iv.next.30 = add nuw nsw i64 %indvars.iv.30, 1
  %exitcond.30.not = icmp eq i64 %indvars.iv.next.30, 10
  br i1 %exitcond.30.not, label %for.inc100.loopexit.30, label %for.body87.30, !llvm.loop !13

for.inc100.loopexit.30:                           ; preds = %for.body87.30
  %mul75.30 = mul nsw i32 %add74.30, %rem15
  %add81.30 = add nsw i32 %rem80.30, %rem78.sext
  br label %for.inc100.30

for.inc100.30:                                    ; preds = %for.inc100.loopexit.30, %if.end.30
  %var4.1.30 = phi i32 [ %var4.1.29, %if.end.30 ], [ %mul75.30, %for.inc100.loopexit.30 ]
  %var5.1.30 = phi i32 [ %var5.1.29, %if.end.30 ], [ %rem9, %for.inc100.loopexit.30 ]
  %var1.1.30 = phi i32 [ %var1.1.29, %if.end.30 ], [ %add81.30, %for.inc100.loopexit.30 ]
  %255 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.31 = mul nsw i32 %255, 3
  %256 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.31 = sdiv i32 %256, -2
  %sub.31 = add i32 %div.neg.31, %mul.31
  store i32 %sub.31, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.31 = add nsw i32 %sub.31, %255
  %rem32.31 = srem i32 %add31.31, 100
  store i32 %rem32.31, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.31 = or i32 %rem32.31, 1
  %add33.31 = add nsw i32 %or.31, %rem17
  store i32 %add33.31, i32* @main.hot_data.1, align 4, !tbaa !10
  %257 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.31 = add nsw i32 %add33.31, %257
  store i32 %add42.31, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %258 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.31 = or i16 %258, 31
  %rem43171.31 = urem i16 %rem43.lhs.trunc.31, 100
  %cmp44.31 = icmp eq i16 %rem43171.31, 0
  br i1 %cmp44.31, label %if.then.31, label %if.end.31

if.then.31:                                       ; preds = %for.inc100.30
  %add48.31 = add nsw i32 %mid_vars.sroa.0.1.30, %rem9
  %mul49.31 = mul nsw i32 %local2.1.30, %add48.31
  %shr.31 = ashr i32 %mul49.31, 1
  %add51.31 = add nsw i32 %sub.31, %shr.31
  %call53.31 = tail call i32 @rand() #3
  %rem54.31 = srem i32 %call53.31, 5
  %add55.31 = add nsw i32 %rem54.31, %rem17
  %rem56.31 = srem i32 %add55.31, 100
  %259 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.31 = add nsw i32 %259, %shr.31
  %260 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.31 = add nsw i32 %add59.31, %260
  store i32 %add66.31, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %261 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %261, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.31, %for.inc100.30
  %mid_vars.sroa.0.1.31 = phi i32 [ %add51.31, %if.then.31 ], [ %mid_vars.sroa.0.1.30, %for.inc100.30 ]
  %mid_vars.sroa.10166.1.31 = phi i32 [ %mul49.31, %if.then.31 ], [ %mid_vars.sroa.10166.1.30, %for.inc100.30 ]
  %local2.1.31 = phi i32 [ %rem56.31, %if.then.31 ], [ %local2.1.30, %for.inc100.30 ]
  %rem70172.31 = urem i16 %rem43.lhs.trunc.31, 1000
  %cmp71.31 = icmp eq i16 %rem70172.31, 0
  br i1 %cmp71.31, label %if.then73.31, label %for.inc100.31

if.then73.31:                                     ; preds = %if.end.31
  %add74.31 = add nsw i32 %var1.1.30, %rem13
  %call79.31 = tail call i32 @rand() #3
  %rem80.31 = srem i32 %call79.31, 5
  br label %for.body87.31

for.body87.31:                                    ; preds = %for.body87.31, %if.then73.31
  %indvars.iv.31 = phi i64 [ 0, %if.then73.31 ], [ %indvars.iv.next.31, %for.body87.31 ]
  %call88.31 = tail call i32 @rand() #3
  %rem89.31 = srem i32 %call88.31, 100
  %262 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.31 = add nsw i32 %rem89.31, %262
  %rem93.lhs.trunc.31 = trunc i64 %indvars.iv.31 to i8
  %rem93173.31 = urem i8 %rem93.lhs.trunc.31, 10
  %idxprom94.31 = zext i8 %rem93173.31 to i64
  %arrayidx95.31 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.31, i64 %idxprom94.31
  store i32 %add90.31, i32* %arrayidx95.31, align 4, !tbaa !12
  %indvars.iv.next.31 = add nuw nsw i64 %indvars.iv.31, 1
  %exitcond.31.not = icmp eq i64 %indvars.iv.next.31, 10
  br i1 %exitcond.31.not, label %for.inc100.loopexit.31, label %for.body87.31, !llvm.loop !13

for.inc100.loopexit.31:                           ; preds = %for.body87.31
  %mul75.31 = mul nsw i32 %add74.31, %rem15
  %add81.31 = add nsw i32 %rem80.31, %rem78.sext
  br label %for.inc100.31

for.inc100.31:                                    ; preds = %for.inc100.loopexit.31, %if.end.31
  %var4.1.31 = phi i32 [ %var4.1.30, %if.end.31 ], [ %mul75.31, %for.inc100.loopexit.31 ]
  %var5.1.31 = phi i32 [ %var5.1.30, %if.end.31 ], [ %rem9, %for.inc100.loopexit.31 ]
  %var1.1.31 = phi i32 [ %var1.1.30, %if.end.31 ], [ %add81.31, %for.inc100.loopexit.31 ]
  %263 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.32 = mul nsw i32 %263, 3
  %264 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.32 = sdiv i32 %264, -2
  %sub.32 = add i32 %div.neg.32, %mul.32
  store i32 %sub.32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.32 = add nsw i32 %sub.32, %263
  %rem32.32 = srem i32 %add31.32, 100
  store i32 %rem32.32, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.32 = or i32 %rem32.32, 1
  %add33.32 = add nsw i32 %or.32, %rem17
  store i32 %add33.32, i32* @main.hot_data.1, align 4, !tbaa !10
  %265 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.32 = add nsw i32 %add33.32, %265
  store i32 %add42.32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %266 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.32 = add i16 %266, 32
  %rem43171.32 = urem i16 %rem43.lhs.trunc.32, 100
  %cmp44.32 = icmp eq i16 %rem43171.32, 0
  br i1 %cmp44.32, label %if.then.32, label %if.end.32

if.then.32:                                       ; preds = %for.inc100.31
  %add48.32 = add nsw i32 %mid_vars.sroa.0.1.31, %rem9
  %mul49.32 = mul nsw i32 %local2.1.31, %add48.32
  %shr.32 = ashr i32 %mul49.32, 1
  %add51.32 = add nsw i32 %sub.32, %shr.32
  %call53.32 = tail call i32 @rand() #3
  %rem54.32 = srem i32 %call53.32, 5
  %add55.32 = add nsw i32 %rem54.32, %rem17
  %rem56.32 = srem i32 %add55.32, 100
  %267 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.32 = add nsw i32 %267, %shr.32
  %268 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.32 = add nsw i32 %add59.32, %268
  store i32 %add66.32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %269 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %269, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.32, %for.inc100.31
  %mid_vars.sroa.0.1.32 = phi i32 [ %add51.32, %if.then.32 ], [ %mid_vars.sroa.0.1.31, %for.inc100.31 ]
  %mid_vars.sroa.10166.1.32 = phi i32 [ %mul49.32, %if.then.32 ], [ %mid_vars.sroa.10166.1.31, %for.inc100.31 ]
  %local2.1.32 = phi i32 [ %rem56.32, %if.then.32 ], [ %local2.1.31, %for.inc100.31 ]
  %rem70172.32 = urem i16 %rem43.lhs.trunc.32, 1000
  %cmp71.32 = icmp eq i16 %rem70172.32, 0
  br i1 %cmp71.32, label %if.then73.32, label %for.inc100.32

if.then73.32:                                     ; preds = %if.end.32
  %add74.32 = add nsw i32 %var1.1.31, %rem13
  %call79.32 = tail call i32 @rand() #3
  %rem80.32 = srem i32 %call79.32, 5
  br label %for.body87.32

for.body87.32:                                    ; preds = %for.body87.32, %if.then73.32
  %indvars.iv.32 = phi i64 [ 0, %if.then73.32 ], [ %indvars.iv.next.32, %for.body87.32 ]
  %call88.32 = tail call i32 @rand() #3
  %rem89.32 = srem i32 %call88.32, 100
  %270 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.32 = add nsw i32 %rem89.32, %270
  %rem93.lhs.trunc.32 = trunc i64 %indvars.iv.32 to i8
  %rem93173.32 = urem i8 %rem93.lhs.trunc.32, 10
  %idxprom94.32 = zext i8 %rem93173.32 to i64
  %arrayidx95.32 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.32, i64 %idxprom94.32
  store i32 %add90.32, i32* %arrayidx95.32, align 4, !tbaa !12
  %indvars.iv.next.32 = add nuw nsw i64 %indvars.iv.32, 1
  %exitcond.32.not = icmp eq i64 %indvars.iv.next.32, 10
  br i1 %exitcond.32.not, label %for.inc100.loopexit.32, label %for.body87.32, !llvm.loop !13

for.inc100.loopexit.32:                           ; preds = %for.body87.32
  %mul75.32 = mul nsw i32 %add74.32, %rem15
  %add81.32 = add nsw i32 %rem80.32, %rem78.sext
  br label %for.inc100.32

for.inc100.32:                                    ; preds = %for.inc100.loopexit.32, %if.end.32
  %var4.1.32 = phi i32 [ %var4.1.31, %if.end.32 ], [ %mul75.32, %for.inc100.loopexit.32 ]
  %var5.1.32 = phi i32 [ %var5.1.31, %if.end.32 ], [ %rem9, %for.inc100.loopexit.32 ]
  %var1.1.32 = phi i32 [ %var1.1.31, %if.end.32 ], [ %add81.32, %for.inc100.loopexit.32 ]
  %271 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.33 = mul nsw i32 %271, 3
  %272 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.33 = sdiv i32 %272, -2
  %sub.33 = add i32 %div.neg.33, %mul.33
  store i32 %sub.33, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.33 = add nsw i32 %sub.33, %271
  %rem32.33 = srem i32 %add31.33, 100
  store i32 %rem32.33, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.33 = or i32 %rem32.33, 1
  %add33.33 = add nsw i32 %or.33, %rem17
  store i32 %add33.33, i32* @main.hot_data.1, align 4, !tbaa !10
  %273 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.33 = add nsw i32 %add33.33, %273
  store i32 %add42.33, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %274 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.33 = add i16 %274, 33
  %rem43171.33 = urem i16 %rem43.lhs.trunc.33, 100
  %cmp44.33 = icmp eq i16 %rem43171.33, 0
  br i1 %cmp44.33, label %if.then.33, label %if.end.33

if.then.33:                                       ; preds = %for.inc100.32
  %add48.33 = add nsw i32 %mid_vars.sroa.0.1.32, %rem9
  %mul49.33 = mul nsw i32 %local2.1.32, %add48.33
  %shr.33 = ashr i32 %mul49.33, 1
  %add51.33 = add nsw i32 %sub.33, %shr.33
  %call53.33 = tail call i32 @rand() #3
  %rem54.33 = srem i32 %call53.33, 5
  %add55.33 = add nsw i32 %rem54.33, %rem17
  %rem56.33 = srem i32 %add55.33, 100
  %275 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.33 = add nsw i32 %275, %shr.33
  %276 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.33 = add nsw i32 %add59.33, %276
  store i32 %add66.33, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %277 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %277, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.33, %for.inc100.32
  %mid_vars.sroa.0.1.33 = phi i32 [ %add51.33, %if.then.33 ], [ %mid_vars.sroa.0.1.32, %for.inc100.32 ]
  %mid_vars.sroa.10166.1.33 = phi i32 [ %mul49.33, %if.then.33 ], [ %mid_vars.sroa.10166.1.32, %for.inc100.32 ]
  %local2.1.33 = phi i32 [ %rem56.33, %if.then.33 ], [ %local2.1.32, %for.inc100.32 ]
  %rem70172.33 = urem i16 %rem43.lhs.trunc.33, 1000
  %cmp71.33 = icmp eq i16 %rem70172.33, 0
  br i1 %cmp71.33, label %if.then73.33, label %for.inc100.33

if.then73.33:                                     ; preds = %if.end.33
  %add74.33 = add nsw i32 %var1.1.32, %rem13
  %call79.33 = tail call i32 @rand() #3
  %rem80.33 = srem i32 %call79.33, 5
  br label %for.body87.33

for.body87.33:                                    ; preds = %for.body87.33, %if.then73.33
  %indvars.iv.33 = phi i64 [ 0, %if.then73.33 ], [ %indvars.iv.next.33, %for.body87.33 ]
  %call88.33 = tail call i32 @rand() #3
  %rem89.33 = srem i32 %call88.33, 100
  %278 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.33 = add nsw i32 %rem89.33, %278
  %rem93.lhs.trunc.33 = trunc i64 %indvars.iv.33 to i8
  %rem93173.33 = urem i8 %rem93.lhs.trunc.33, 10
  %idxprom94.33 = zext i8 %rem93173.33 to i64
  %arrayidx95.33 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.33, i64 %idxprom94.33
  store i32 %add90.33, i32* %arrayidx95.33, align 4, !tbaa !12
  %indvars.iv.next.33 = add nuw nsw i64 %indvars.iv.33, 1
  %exitcond.33.not = icmp eq i64 %indvars.iv.next.33, 10
  br i1 %exitcond.33.not, label %for.inc100.loopexit.33, label %for.body87.33, !llvm.loop !13

for.inc100.loopexit.33:                           ; preds = %for.body87.33
  %mul75.33 = mul nsw i32 %add74.33, %rem15
  %add81.33 = add nsw i32 %rem80.33, %rem78.sext
  br label %for.inc100.33

for.inc100.33:                                    ; preds = %for.inc100.loopexit.33, %if.end.33
  %var4.1.33 = phi i32 [ %var4.1.32, %if.end.33 ], [ %mul75.33, %for.inc100.loopexit.33 ]
  %var5.1.33 = phi i32 [ %var5.1.32, %if.end.33 ], [ %rem9, %for.inc100.loopexit.33 ]
  %var1.1.33 = phi i32 [ %var1.1.32, %if.end.33 ], [ %add81.33, %for.inc100.loopexit.33 ]
  %279 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.34 = mul nsw i32 %279, 3
  %280 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.34 = sdiv i32 %280, -2
  %sub.34 = add i32 %div.neg.34, %mul.34
  store i32 %sub.34, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.34 = add nsw i32 %sub.34, %279
  %rem32.34 = srem i32 %add31.34, 100
  store i32 %rem32.34, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.34 = or i32 %rem32.34, 1
  %add33.34 = add nsw i32 %or.34, %rem17
  store i32 %add33.34, i32* @main.hot_data.1, align 4, !tbaa !10
  %281 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.34 = add nsw i32 %add33.34, %281
  store i32 %add42.34, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %282 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.34 = add i16 %282, 34
  %rem43171.34 = urem i16 %rem43.lhs.trunc.34, 100
  %cmp44.34 = icmp eq i16 %rem43171.34, 0
  br i1 %cmp44.34, label %if.then.34, label %if.end.34

if.then.34:                                       ; preds = %for.inc100.33
  %add48.34 = add nsw i32 %mid_vars.sroa.0.1.33, %rem9
  %mul49.34 = mul nsw i32 %local2.1.33, %add48.34
  %shr.34 = ashr i32 %mul49.34, 1
  %add51.34 = add nsw i32 %sub.34, %shr.34
  %call53.34 = tail call i32 @rand() #3
  %rem54.34 = srem i32 %call53.34, 5
  %add55.34 = add nsw i32 %rem54.34, %rem17
  %rem56.34 = srem i32 %add55.34, 100
  %283 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.34 = add nsw i32 %283, %shr.34
  %284 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.34 = add nsw i32 %add59.34, %284
  store i32 %add66.34, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %285 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %285, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.34, %for.inc100.33
  %mid_vars.sroa.0.1.34 = phi i32 [ %add51.34, %if.then.34 ], [ %mid_vars.sroa.0.1.33, %for.inc100.33 ]
  %mid_vars.sroa.10166.1.34 = phi i32 [ %mul49.34, %if.then.34 ], [ %mid_vars.sroa.10166.1.33, %for.inc100.33 ]
  %local2.1.34 = phi i32 [ %rem56.34, %if.then.34 ], [ %local2.1.33, %for.inc100.33 ]
  %rem70172.34 = urem i16 %rem43.lhs.trunc.34, 1000
  %cmp71.34 = icmp eq i16 %rem70172.34, 0
  br i1 %cmp71.34, label %if.then73.34, label %for.inc100.34

if.then73.34:                                     ; preds = %if.end.34
  %add74.34 = add nsw i32 %var1.1.33, %rem13
  %call79.34 = tail call i32 @rand() #3
  %rem80.34 = srem i32 %call79.34, 5
  br label %for.body87.34

for.body87.34:                                    ; preds = %for.body87.34, %if.then73.34
  %indvars.iv.34 = phi i64 [ 0, %if.then73.34 ], [ %indvars.iv.next.34, %for.body87.34 ]
  %call88.34 = tail call i32 @rand() #3
  %rem89.34 = srem i32 %call88.34, 100
  %286 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.34 = add nsw i32 %rem89.34, %286
  %rem93.lhs.trunc.34 = trunc i64 %indvars.iv.34 to i8
  %rem93173.34 = urem i8 %rem93.lhs.trunc.34, 10
  %idxprom94.34 = zext i8 %rem93173.34 to i64
  %arrayidx95.34 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.34, i64 %idxprom94.34
  store i32 %add90.34, i32* %arrayidx95.34, align 4, !tbaa !12
  %indvars.iv.next.34 = add nuw nsw i64 %indvars.iv.34, 1
  %exitcond.34.not = icmp eq i64 %indvars.iv.next.34, 10
  br i1 %exitcond.34.not, label %for.inc100.loopexit.34, label %for.body87.34, !llvm.loop !13

for.inc100.loopexit.34:                           ; preds = %for.body87.34
  %mul75.34 = mul nsw i32 %add74.34, %rem15
  %add81.34 = add nsw i32 %rem80.34, %rem78.sext
  br label %for.inc100.34

for.inc100.34:                                    ; preds = %for.inc100.loopexit.34, %if.end.34
  %var4.1.34 = phi i32 [ %var4.1.33, %if.end.34 ], [ %mul75.34, %for.inc100.loopexit.34 ]
  %var5.1.34 = phi i32 [ %var5.1.33, %if.end.34 ], [ %rem9, %for.inc100.loopexit.34 ]
  %var1.1.34 = phi i32 [ %var1.1.33, %if.end.34 ], [ %add81.34, %for.inc100.loopexit.34 ]
  %287 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.35 = mul nsw i32 %287, 3
  %288 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.35 = sdiv i32 %288, -2
  %sub.35 = add i32 %div.neg.35, %mul.35
  store i32 %sub.35, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.35 = add nsw i32 %sub.35, %287
  %rem32.35 = srem i32 %add31.35, 100
  store i32 %rem32.35, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.35 = or i32 %rem32.35, 1
  %add33.35 = add nsw i32 %or.35, %rem17
  store i32 %add33.35, i32* @main.hot_data.1, align 4, !tbaa !10
  %289 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.35 = add nsw i32 %add33.35, %289
  store i32 %add42.35, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %290 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.35 = add i16 %290, 35
  %rem43171.35 = urem i16 %rem43.lhs.trunc.35, 100
  %cmp44.35 = icmp eq i16 %rem43171.35, 0
  br i1 %cmp44.35, label %if.then.35, label %if.end.35

if.then.35:                                       ; preds = %for.inc100.34
  %add48.35 = add nsw i32 %mid_vars.sroa.0.1.34, %rem9
  %mul49.35 = mul nsw i32 %local2.1.34, %add48.35
  %shr.35 = ashr i32 %mul49.35, 1
  %add51.35 = add nsw i32 %sub.35, %shr.35
  %call53.35 = tail call i32 @rand() #3
  %rem54.35 = srem i32 %call53.35, 5
  %add55.35 = add nsw i32 %rem54.35, %rem17
  %rem56.35 = srem i32 %add55.35, 100
  %291 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.35 = add nsw i32 %291, %shr.35
  %292 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.35 = add nsw i32 %add59.35, %292
  store i32 %add66.35, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %293 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %293, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.35, %for.inc100.34
  %mid_vars.sroa.0.1.35 = phi i32 [ %add51.35, %if.then.35 ], [ %mid_vars.sroa.0.1.34, %for.inc100.34 ]
  %mid_vars.sroa.10166.1.35 = phi i32 [ %mul49.35, %if.then.35 ], [ %mid_vars.sroa.10166.1.34, %for.inc100.34 ]
  %local2.1.35 = phi i32 [ %rem56.35, %if.then.35 ], [ %local2.1.34, %for.inc100.34 ]
  %rem70172.35 = urem i16 %rem43.lhs.trunc.35, 1000
  %cmp71.35 = icmp eq i16 %rem70172.35, 0
  br i1 %cmp71.35, label %if.then73.35, label %for.inc100.35

if.then73.35:                                     ; preds = %if.end.35
  %add74.35 = add nsw i32 %var1.1.34, %rem13
  %call79.35 = tail call i32 @rand() #3
  %rem80.35 = srem i32 %call79.35, 5
  br label %for.body87.35

for.body87.35:                                    ; preds = %for.body87.35, %if.then73.35
  %indvars.iv.35 = phi i64 [ 0, %if.then73.35 ], [ %indvars.iv.next.35, %for.body87.35 ]
  %call88.35 = tail call i32 @rand() #3
  %rem89.35 = srem i32 %call88.35, 100
  %294 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.35 = add nsw i32 %rem89.35, %294
  %rem93.lhs.trunc.35 = trunc i64 %indvars.iv.35 to i8
  %rem93173.35 = urem i8 %rem93.lhs.trunc.35, 10
  %idxprom94.35 = zext i8 %rem93173.35 to i64
  %arrayidx95.35 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.35, i64 %idxprom94.35
  store i32 %add90.35, i32* %arrayidx95.35, align 4, !tbaa !12
  %indvars.iv.next.35 = add nuw nsw i64 %indvars.iv.35, 1
  %exitcond.35.not = icmp eq i64 %indvars.iv.next.35, 10
  br i1 %exitcond.35.not, label %for.inc100.loopexit.35, label %for.body87.35, !llvm.loop !13

for.inc100.loopexit.35:                           ; preds = %for.body87.35
  %mul75.35 = mul nsw i32 %add74.35, %rem15
  %add81.35 = add nsw i32 %rem80.35, %rem78.sext
  br label %for.inc100.35

for.inc100.35:                                    ; preds = %for.inc100.loopexit.35, %if.end.35
  %var4.1.35 = phi i32 [ %var4.1.34, %if.end.35 ], [ %mul75.35, %for.inc100.loopexit.35 ]
  %var5.1.35 = phi i32 [ %var5.1.34, %if.end.35 ], [ %rem9, %for.inc100.loopexit.35 ]
  %var1.1.35 = phi i32 [ %var1.1.34, %if.end.35 ], [ %add81.35, %for.inc100.loopexit.35 ]
  %295 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.36 = mul nsw i32 %295, 3
  %296 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.36 = sdiv i32 %296, -2
  %sub.36 = add i32 %div.neg.36, %mul.36
  store i32 %sub.36, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.36 = add nsw i32 %sub.36, %295
  %rem32.36 = srem i32 %add31.36, 100
  store i32 %rem32.36, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.36 = or i32 %rem32.36, 1
  %add33.36 = add nsw i32 %or.36, %rem17
  store i32 %add33.36, i32* @main.hot_data.1, align 4, !tbaa !10
  %297 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.36 = add nsw i32 %add33.36, %297
  store i32 %add42.36, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %298 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.36 = add i16 %298, 36
  %rem43171.36 = urem i16 %rem43.lhs.trunc.36, 100
  %cmp44.36 = icmp eq i16 %rem43171.36, 0
  br i1 %cmp44.36, label %if.then.36, label %if.end.36

if.then.36:                                       ; preds = %for.inc100.35
  %add48.36 = add nsw i32 %mid_vars.sroa.0.1.35, %rem9
  %mul49.36 = mul nsw i32 %local2.1.35, %add48.36
  %shr.36 = ashr i32 %mul49.36, 1
  %add51.36 = add nsw i32 %sub.36, %shr.36
  %call53.36 = tail call i32 @rand() #3
  %rem54.36 = srem i32 %call53.36, 5
  %add55.36 = add nsw i32 %rem54.36, %rem17
  %rem56.36 = srem i32 %add55.36, 100
  %299 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.36 = add nsw i32 %299, %shr.36
  %300 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.36 = add nsw i32 %add59.36, %300
  store i32 %add66.36, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %301 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %301, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.36, %for.inc100.35
  %mid_vars.sroa.0.1.36 = phi i32 [ %add51.36, %if.then.36 ], [ %mid_vars.sroa.0.1.35, %for.inc100.35 ]
  %mid_vars.sroa.10166.1.36 = phi i32 [ %mul49.36, %if.then.36 ], [ %mid_vars.sroa.10166.1.35, %for.inc100.35 ]
  %local2.1.36 = phi i32 [ %rem56.36, %if.then.36 ], [ %local2.1.35, %for.inc100.35 ]
  %rem70172.36 = urem i16 %rem43.lhs.trunc.36, 1000
  %cmp71.36 = icmp eq i16 %rem70172.36, 0
  br i1 %cmp71.36, label %if.then73.36, label %for.inc100.36

if.then73.36:                                     ; preds = %if.end.36
  %add74.36 = add nsw i32 %var1.1.35, %rem13
  %call79.36 = tail call i32 @rand() #3
  %rem80.36 = srem i32 %call79.36, 5
  br label %for.body87.36

for.body87.36:                                    ; preds = %for.body87.36, %if.then73.36
  %indvars.iv.36 = phi i64 [ 0, %if.then73.36 ], [ %indvars.iv.next.36, %for.body87.36 ]
  %call88.36 = tail call i32 @rand() #3
  %rem89.36 = srem i32 %call88.36, 100
  %302 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.36 = add nsw i32 %rem89.36, %302
  %rem93.lhs.trunc.36 = trunc i64 %indvars.iv.36 to i8
  %rem93173.36 = urem i8 %rem93.lhs.trunc.36, 10
  %idxprom94.36 = zext i8 %rem93173.36 to i64
  %arrayidx95.36 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.36, i64 %idxprom94.36
  store i32 %add90.36, i32* %arrayidx95.36, align 4, !tbaa !12
  %indvars.iv.next.36 = add nuw nsw i64 %indvars.iv.36, 1
  %exitcond.36.not = icmp eq i64 %indvars.iv.next.36, 10
  br i1 %exitcond.36.not, label %for.inc100.loopexit.36, label %for.body87.36, !llvm.loop !13

for.inc100.loopexit.36:                           ; preds = %for.body87.36
  %mul75.36 = mul nsw i32 %add74.36, %rem15
  %add81.36 = add nsw i32 %rem80.36, %rem78.sext
  br label %for.inc100.36

for.inc100.36:                                    ; preds = %for.inc100.loopexit.36, %if.end.36
  %var4.1.36 = phi i32 [ %var4.1.35, %if.end.36 ], [ %mul75.36, %for.inc100.loopexit.36 ]
  %var5.1.36 = phi i32 [ %var5.1.35, %if.end.36 ], [ %rem9, %for.inc100.loopexit.36 ]
  %var1.1.36 = phi i32 [ %var1.1.35, %if.end.36 ], [ %add81.36, %for.inc100.loopexit.36 ]
  %303 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.37 = mul nsw i32 %303, 3
  %304 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.37 = sdiv i32 %304, -2
  %sub.37 = add i32 %div.neg.37, %mul.37
  store i32 %sub.37, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.37 = add nsw i32 %sub.37, %303
  %rem32.37 = srem i32 %add31.37, 100
  store i32 %rem32.37, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.37 = or i32 %rem32.37, 1
  %add33.37 = add nsw i32 %or.37, %rem17
  store i32 %add33.37, i32* @main.hot_data.1, align 4, !tbaa !10
  %305 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.37 = add nsw i32 %add33.37, %305
  store i32 %add42.37, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %306 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.37 = add i16 %306, 37
  %rem43171.37 = urem i16 %rem43.lhs.trunc.37, 100
  %cmp44.37 = icmp eq i16 %rem43171.37, 0
  br i1 %cmp44.37, label %if.then.37, label %if.end.37

if.then.37:                                       ; preds = %for.inc100.36
  %add48.37 = add nsw i32 %mid_vars.sroa.0.1.36, %rem9
  %mul49.37 = mul nsw i32 %local2.1.36, %add48.37
  %shr.37 = ashr i32 %mul49.37, 1
  %add51.37 = add nsw i32 %sub.37, %shr.37
  %call53.37 = tail call i32 @rand() #3
  %rem54.37 = srem i32 %call53.37, 5
  %add55.37 = add nsw i32 %rem54.37, %rem17
  %rem56.37 = srem i32 %add55.37, 100
  %307 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.37 = add nsw i32 %307, %shr.37
  %308 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.37 = add nsw i32 %add59.37, %308
  store i32 %add66.37, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %309 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %309, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.37, %for.inc100.36
  %mid_vars.sroa.0.1.37 = phi i32 [ %add51.37, %if.then.37 ], [ %mid_vars.sroa.0.1.36, %for.inc100.36 ]
  %mid_vars.sroa.10166.1.37 = phi i32 [ %mul49.37, %if.then.37 ], [ %mid_vars.sroa.10166.1.36, %for.inc100.36 ]
  %local2.1.37 = phi i32 [ %rem56.37, %if.then.37 ], [ %local2.1.36, %for.inc100.36 ]
  %rem70172.37 = urem i16 %rem43.lhs.trunc.37, 1000
  %cmp71.37 = icmp eq i16 %rem70172.37, 0
  br i1 %cmp71.37, label %if.then73.37, label %for.inc100.37

if.then73.37:                                     ; preds = %if.end.37
  %add74.37 = add nsw i32 %var1.1.36, %rem13
  %call79.37 = tail call i32 @rand() #3
  %rem80.37 = srem i32 %call79.37, 5
  br label %for.body87.37

for.body87.37:                                    ; preds = %for.body87.37, %if.then73.37
  %indvars.iv.37 = phi i64 [ 0, %if.then73.37 ], [ %indvars.iv.next.37, %for.body87.37 ]
  %call88.37 = tail call i32 @rand() #3
  %rem89.37 = srem i32 %call88.37, 100
  %310 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.37 = add nsw i32 %rem89.37, %310
  %rem93.lhs.trunc.37 = trunc i64 %indvars.iv.37 to i8
  %rem93173.37 = urem i8 %rem93.lhs.trunc.37, 10
  %idxprom94.37 = zext i8 %rem93173.37 to i64
  %arrayidx95.37 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.37, i64 %idxprom94.37
  store i32 %add90.37, i32* %arrayidx95.37, align 4, !tbaa !12
  %indvars.iv.next.37 = add nuw nsw i64 %indvars.iv.37, 1
  %exitcond.37.not = icmp eq i64 %indvars.iv.next.37, 10
  br i1 %exitcond.37.not, label %for.inc100.loopexit.37, label %for.body87.37, !llvm.loop !13

for.inc100.loopexit.37:                           ; preds = %for.body87.37
  %mul75.37 = mul nsw i32 %add74.37, %rem15
  %add81.37 = add nsw i32 %rem80.37, %rem78.sext
  br label %for.inc100.37

for.inc100.37:                                    ; preds = %for.inc100.loopexit.37, %if.end.37
  %var4.1.37 = phi i32 [ %var4.1.36, %if.end.37 ], [ %mul75.37, %for.inc100.loopexit.37 ]
  %var5.1.37 = phi i32 [ %var5.1.36, %if.end.37 ], [ %rem9, %for.inc100.loopexit.37 ]
  %var1.1.37 = phi i32 [ %var1.1.36, %if.end.37 ], [ %add81.37, %for.inc100.loopexit.37 ]
  %311 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.38 = mul nsw i32 %311, 3
  %312 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.38 = sdiv i32 %312, -2
  %sub.38 = add i32 %div.neg.38, %mul.38
  store i32 %sub.38, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.38 = add nsw i32 %sub.38, %311
  %rem32.38 = srem i32 %add31.38, 100
  store i32 %rem32.38, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.38 = or i32 %rem32.38, 1
  %add33.38 = add nsw i32 %or.38, %rem17
  store i32 %add33.38, i32* @main.hot_data.1, align 4, !tbaa !10
  %313 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.38 = add nsw i32 %add33.38, %313
  store i32 %add42.38, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %314 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.38 = add i16 %314, 38
  %rem43171.38 = urem i16 %rem43.lhs.trunc.38, 100
  %cmp44.38 = icmp eq i16 %rem43171.38, 0
  br i1 %cmp44.38, label %if.then.38, label %if.end.38

if.then.38:                                       ; preds = %for.inc100.37
  %add48.38 = add nsw i32 %mid_vars.sroa.0.1.37, %rem9
  %mul49.38 = mul nsw i32 %local2.1.37, %add48.38
  %shr.38 = ashr i32 %mul49.38, 1
  %add51.38 = add nsw i32 %sub.38, %shr.38
  %call53.38 = tail call i32 @rand() #3
  %rem54.38 = srem i32 %call53.38, 5
  %add55.38 = add nsw i32 %rem54.38, %rem17
  %rem56.38 = srem i32 %add55.38, 100
  %315 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.38 = add nsw i32 %315, %shr.38
  %316 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.38 = add nsw i32 %add59.38, %316
  store i32 %add66.38, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %317 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %317, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.38, %for.inc100.37
  %mid_vars.sroa.0.1.38 = phi i32 [ %add51.38, %if.then.38 ], [ %mid_vars.sroa.0.1.37, %for.inc100.37 ]
  %mid_vars.sroa.10166.1.38 = phi i32 [ %mul49.38, %if.then.38 ], [ %mid_vars.sroa.10166.1.37, %for.inc100.37 ]
  %local2.1.38 = phi i32 [ %rem56.38, %if.then.38 ], [ %local2.1.37, %for.inc100.37 ]
  %rem70172.38 = urem i16 %rem43.lhs.trunc.38, 1000
  %cmp71.38 = icmp eq i16 %rem70172.38, 0
  br i1 %cmp71.38, label %if.then73.38, label %for.inc100.38

if.then73.38:                                     ; preds = %if.end.38
  %add74.38 = add nsw i32 %var1.1.37, %rem13
  %call79.38 = tail call i32 @rand() #3
  %rem80.38 = srem i32 %call79.38, 5
  br label %for.body87.38

for.body87.38:                                    ; preds = %for.body87.38, %if.then73.38
  %indvars.iv.38 = phi i64 [ 0, %if.then73.38 ], [ %indvars.iv.next.38, %for.body87.38 ]
  %call88.38 = tail call i32 @rand() #3
  %rem89.38 = srem i32 %call88.38, 100
  %318 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.38 = add nsw i32 %rem89.38, %318
  %rem93.lhs.trunc.38 = trunc i64 %indvars.iv.38 to i8
  %rem93173.38 = urem i8 %rem93.lhs.trunc.38, 10
  %idxprom94.38 = zext i8 %rem93173.38 to i64
  %arrayidx95.38 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.38, i64 %idxprom94.38
  store i32 %add90.38, i32* %arrayidx95.38, align 4, !tbaa !12
  %indvars.iv.next.38 = add nuw nsw i64 %indvars.iv.38, 1
  %exitcond.38.not = icmp eq i64 %indvars.iv.next.38, 10
  br i1 %exitcond.38.not, label %for.inc100.loopexit.38, label %for.body87.38, !llvm.loop !13

for.inc100.loopexit.38:                           ; preds = %for.body87.38
  %mul75.38 = mul nsw i32 %add74.38, %rem15
  %add81.38 = add nsw i32 %rem80.38, %rem78.sext
  br label %for.inc100.38

for.inc100.38:                                    ; preds = %for.inc100.loopexit.38, %if.end.38
  %var4.1.38 = phi i32 [ %var4.1.37, %if.end.38 ], [ %mul75.38, %for.inc100.loopexit.38 ]
  %var5.1.38 = phi i32 [ %var5.1.37, %if.end.38 ], [ %rem9, %for.inc100.loopexit.38 ]
  %var1.1.38 = phi i32 [ %var1.1.37, %if.end.38 ], [ %add81.38, %for.inc100.loopexit.38 ]
  %319 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.39 = mul nsw i32 %319, 3
  %320 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.39 = sdiv i32 %320, -2
  %sub.39 = add i32 %div.neg.39, %mul.39
  store i32 %sub.39, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.39 = add nsw i32 %sub.39, %319
  %rem32.39 = srem i32 %add31.39, 100
  store i32 %rem32.39, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.39 = or i32 %rem32.39, 1
  %add33.39 = add nsw i32 %or.39, %rem17
  store i32 %add33.39, i32* @main.hot_data.1, align 4, !tbaa !10
  %321 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.39 = add nsw i32 %add33.39, %321
  store i32 %add42.39, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %322 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.39 = add i16 %322, 39
  %rem43171.39 = urem i16 %rem43.lhs.trunc.39, 100
  %cmp44.39 = icmp eq i16 %rem43171.39, 0
  br i1 %cmp44.39, label %if.then.39, label %if.end.39

if.then.39:                                       ; preds = %for.inc100.38
  %add48.39 = add nsw i32 %mid_vars.sroa.0.1.38, %rem9
  %mul49.39 = mul nsw i32 %local2.1.38, %add48.39
  %shr.39 = ashr i32 %mul49.39, 1
  %add51.39 = add nsw i32 %sub.39, %shr.39
  %call53.39 = tail call i32 @rand() #3
  %rem54.39 = srem i32 %call53.39, 5
  %add55.39 = add nsw i32 %rem54.39, %rem17
  %rem56.39 = srem i32 %add55.39, 100
  %323 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.39 = add nsw i32 %323, %shr.39
  %324 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.39 = add nsw i32 %add59.39, %324
  store i32 %add66.39, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %325 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %325, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.39, %for.inc100.38
  %mid_vars.sroa.0.1.39 = phi i32 [ %add51.39, %if.then.39 ], [ %mid_vars.sroa.0.1.38, %for.inc100.38 ]
  %mid_vars.sroa.10166.1.39 = phi i32 [ %mul49.39, %if.then.39 ], [ %mid_vars.sroa.10166.1.38, %for.inc100.38 ]
  %local2.1.39 = phi i32 [ %rem56.39, %if.then.39 ], [ %local2.1.38, %for.inc100.38 ]
  %rem70172.39 = urem i16 %rem43.lhs.trunc.39, 1000
  %cmp71.39 = icmp eq i16 %rem70172.39, 0
  br i1 %cmp71.39, label %if.then73.39, label %for.inc100.39

if.then73.39:                                     ; preds = %if.end.39
  %add74.39 = add nsw i32 %var1.1.38, %rem13
  %call79.39 = tail call i32 @rand() #3
  %rem80.39 = srem i32 %call79.39, 5
  br label %for.body87.39

for.body87.39:                                    ; preds = %for.body87.39, %if.then73.39
  %indvars.iv.39 = phi i64 [ 0, %if.then73.39 ], [ %indvars.iv.next.39, %for.body87.39 ]
  %call88.39 = tail call i32 @rand() #3
  %rem89.39 = srem i32 %call88.39, 100
  %326 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.39 = add nsw i32 %rem89.39, %326
  %rem93.lhs.trunc.39 = trunc i64 %indvars.iv.39 to i8
  %rem93173.39 = urem i8 %rem93.lhs.trunc.39, 10
  %idxprom94.39 = zext i8 %rem93173.39 to i64
  %arrayidx95.39 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.39, i64 %idxprom94.39
  store i32 %add90.39, i32* %arrayidx95.39, align 4, !tbaa !12
  %indvars.iv.next.39 = add nuw nsw i64 %indvars.iv.39, 1
  %exitcond.39.not = icmp eq i64 %indvars.iv.next.39, 10
  br i1 %exitcond.39.not, label %for.inc100.loopexit.39, label %for.body87.39, !llvm.loop !13

for.inc100.loopexit.39:                           ; preds = %for.body87.39
  %mul75.39 = mul nsw i32 %add74.39, %rem15
  %add81.39 = add nsw i32 %rem80.39, %rem78.sext
  br label %for.inc100.39

for.inc100.39:                                    ; preds = %for.inc100.loopexit.39, %if.end.39
  %var4.1.39 = phi i32 [ %var4.1.38, %if.end.39 ], [ %mul75.39, %for.inc100.loopexit.39 ]
  %var5.1.39 = phi i32 [ %var5.1.38, %if.end.39 ], [ %rem9, %for.inc100.loopexit.39 ]
  %var1.1.39 = phi i32 [ %var1.1.38, %if.end.39 ], [ %add81.39, %for.inc100.loopexit.39 ]
  %327 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.40 = mul nsw i32 %327, 3
  %328 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.40 = sdiv i32 %328, -2
  %sub.40 = add i32 %div.neg.40, %mul.40
  store i32 %sub.40, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.40 = add nsw i32 %sub.40, %327
  %rem32.40 = srem i32 %add31.40, 100
  store i32 %rem32.40, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.40 = or i32 %rem32.40, 1
  %add33.40 = add nsw i32 %or.40, %rem17
  store i32 %add33.40, i32* @main.hot_data.1, align 4, !tbaa !10
  %329 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.40 = add nsw i32 %add33.40, %329
  store i32 %add42.40, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %330 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.40 = add i16 %330, 40
  %rem43171.40 = urem i16 %rem43.lhs.trunc.40, 100
  %cmp44.40 = icmp eq i16 %rem43171.40, 0
  br i1 %cmp44.40, label %if.then.40, label %if.end.40

if.then.40:                                       ; preds = %for.inc100.39
  %add48.40 = add nsw i32 %mid_vars.sroa.0.1.39, %rem9
  %mul49.40 = mul nsw i32 %local2.1.39, %add48.40
  %shr.40 = ashr i32 %mul49.40, 1
  %add51.40 = add nsw i32 %sub.40, %shr.40
  %call53.40 = tail call i32 @rand() #3
  %rem54.40 = srem i32 %call53.40, 5
  %add55.40 = add nsw i32 %rem54.40, %rem17
  %rem56.40 = srem i32 %add55.40, 100
  %331 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.40 = add nsw i32 %331, %shr.40
  %332 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.40 = add nsw i32 %add59.40, %332
  store i32 %add66.40, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.40, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.40, %for.inc100.39
  %mid_vars.sroa.0.1.40 = phi i32 [ %add51.40, %if.then.40 ], [ %mid_vars.sroa.0.1.39, %for.inc100.39 ]
  %mid_vars.sroa.10166.1.40 = phi i32 [ %mul49.40, %if.then.40 ], [ %mid_vars.sroa.10166.1.39, %for.inc100.39 ]
  %local2.1.40 = phi i32 [ %rem56.40, %if.then.40 ], [ %local2.1.39, %for.inc100.39 ]
  %rem70172.40 = urem i16 %rem43.lhs.trunc.40, 1000
  %cmp71.40 = icmp eq i16 %rem70172.40, 0
  br i1 %cmp71.40, label %if.then73.40, label %for.inc100.40

if.then73.40:                                     ; preds = %if.end.40
  %add74.40 = add nsw i32 %var1.1.39, %rem13
  %call79.40 = tail call i32 @rand() #3
  %rem80.40 = srem i32 %call79.40, 5
  br label %for.body87.40

for.body87.40:                                    ; preds = %for.body87.40, %if.then73.40
  %indvars.iv.40 = phi i64 [ 0, %if.then73.40 ], [ %indvars.iv.next.40, %for.body87.40 ]
  %call88.40 = tail call i32 @rand() #3
  %rem89.40 = srem i32 %call88.40, 100
  %333 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.40 = add nsw i32 %rem89.40, %333
  %rem93.lhs.trunc.40 = trunc i64 %indvars.iv.40 to i8
  %rem93173.40 = urem i8 %rem93.lhs.trunc.40, 10
  %idxprom94.40 = zext i8 %rem93173.40 to i64
  %arrayidx95.40 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.40, i64 %idxprom94.40
  store i32 %add90.40, i32* %arrayidx95.40, align 4, !tbaa !12
  %indvars.iv.next.40 = add nuw nsw i64 %indvars.iv.40, 1
  %exitcond.40.not = icmp eq i64 %indvars.iv.next.40, 10
  br i1 %exitcond.40.not, label %for.inc100.loopexit.40, label %for.body87.40, !llvm.loop !13

for.inc100.loopexit.40:                           ; preds = %for.body87.40
  %mul75.40 = mul nsw i32 %add74.40, %rem15
  %add81.40 = add nsw i32 %rem80.40, %rem78.sext
  br label %for.inc100.40

for.inc100.40:                                    ; preds = %for.inc100.loopexit.40, %if.end.40
  %var4.1.40 = phi i32 [ %var4.1.39, %if.end.40 ], [ %mul75.40, %for.inc100.loopexit.40 ]
  %var5.1.40 = phi i32 [ %var5.1.39, %if.end.40 ], [ %rem9, %for.inc100.loopexit.40 ]
  %var1.1.40 = phi i32 [ %var1.1.39, %if.end.40 ], [ %add81.40, %for.inc100.loopexit.40 ]
  %334 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.41 = mul nsw i32 %334, 3
  %335 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.41 = sdiv i32 %335, -2
  %sub.41 = add i32 %div.neg.41, %mul.41
  store i32 %sub.41, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.41 = add nsw i32 %sub.41, %334
  %rem32.41 = srem i32 %add31.41, 100
  store i32 %rem32.41, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.41 = or i32 %rem32.41, 1
  %add33.41 = add nsw i32 %or.41, %rem17
  store i32 %add33.41, i32* @main.hot_data.1, align 4, !tbaa !10
  %336 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.41 = add nsw i32 %add33.41, %336
  store i32 %add42.41, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %337 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.41 = add i16 %337, 41
  %rem43171.41 = urem i16 %rem43.lhs.trunc.41, 100
  %cmp44.41 = icmp eq i16 %rem43171.41, 0
  br i1 %cmp44.41, label %if.then.41, label %if.end.41

if.then.41:                                       ; preds = %for.inc100.40
  %add48.41 = add nsw i32 %mid_vars.sroa.0.1.40, %rem9
  %mul49.41 = mul nsw i32 %local2.1.40, %add48.41
  %shr.41 = ashr i32 %mul49.41, 1
  %add51.41 = add nsw i32 %sub.41, %shr.41
  %call53.41 = tail call i32 @rand() #3
  %rem54.41 = srem i32 %call53.41, 5
  %add55.41 = add nsw i32 %rem54.41, %rem17
  %rem56.41 = srem i32 %add55.41, 100
  %338 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.41 = add nsw i32 %338, %shr.41
  %339 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.41 = add nsw i32 %add59.41, %339
  store i32 %add66.41, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %340 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %340, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.41, %for.inc100.40
  %mid_vars.sroa.0.1.41 = phi i32 [ %add51.41, %if.then.41 ], [ %mid_vars.sroa.0.1.40, %for.inc100.40 ]
  %mid_vars.sroa.10166.1.41 = phi i32 [ %mul49.41, %if.then.41 ], [ %mid_vars.sroa.10166.1.40, %for.inc100.40 ]
  %local2.1.41 = phi i32 [ %rem56.41, %if.then.41 ], [ %local2.1.40, %for.inc100.40 ]
  %rem70172.41 = urem i16 %rem43.lhs.trunc.41, 1000
  %cmp71.41 = icmp eq i16 %rem70172.41, 0
  br i1 %cmp71.41, label %if.then73.41, label %for.inc100.41

if.then73.41:                                     ; preds = %if.end.41
  %add74.41 = add nsw i32 %var1.1.40, %rem13
  %call79.41 = tail call i32 @rand() #3
  %rem80.41 = srem i32 %call79.41, 5
  br label %for.body87.41

for.body87.41:                                    ; preds = %for.body87.41, %if.then73.41
  %indvars.iv.41 = phi i64 [ 0, %if.then73.41 ], [ %indvars.iv.next.41, %for.body87.41 ]
  %call88.41 = tail call i32 @rand() #3
  %rem89.41 = srem i32 %call88.41, 100
  %341 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.41 = add nsw i32 %rem89.41, %341
  %rem93.lhs.trunc.41 = trunc i64 %indvars.iv.41 to i8
  %rem93173.41 = urem i8 %rem93.lhs.trunc.41, 10
  %idxprom94.41 = zext i8 %rem93173.41 to i64
  %arrayidx95.41 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.41, i64 %idxprom94.41
  store i32 %add90.41, i32* %arrayidx95.41, align 4, !tbaa !12
  %indvars.iv.next.41 = add nuw nsw i64 %indvars.iv.41, 1
  %exitcond.41.not = icmp eq i64 %indvars.iv.next.41, 10
  br i1 %exitcond.41.not, label %for.inc100.loopexit.41, label %for.body87.41, !llvm.loop !13

for.inc100.loopexit.41:                           ; preds = %for.body87.41
  %mul75.41 = mul nsw i32 %add74.41, %rem15
  %add81.41 = add nsw i32 %rem80.41, %rem78.sext
  br label %for.inc100.41

for.inc100.41:                                    ; preds = %for.inc100.loopexit.41, %if.end.41
  %var4.1.41 = phi i32 [ %var4.1.40, %if.end.41 ], [ %mul75.41, %for.inc100.loopexit.41 ]
  %var5.1.41 = phi i32 [ %var5.1.40, %if.end.41 ], [ %rem9, %for.inc100.loopexit.41 ]
  %var1.1.41 = phi i32 [ %var1.1.40, %if.end.41 ], [ %add81.41, %for.inc100.loopexit.41 ]
  %342 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.42 = mul nsw i32 %342, 3
  %343 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.42 = sdiv i32 %343, -2
  %sub.42 = add i32 %div.neg.42, %mul.42
  store i32 %sub.42, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.42 = add nsw i32 %sub.42, %342
  %rem32.42 = srem i32 %add31.42, 100
  store i32 %rem32.42, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.42 = or i32 %rem32.42, 1
  %add33.42 = add nsw i32 %or.42, %rem17
  store i32 %add33.42, i32* @main.hot_data.1, align 4, !tbaa !10
  %344 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.42 = add nsw i32 %add33.42, %344
  store i32 %add42.42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %345 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.42 = add i16 %345, 42
  %rem43171.42 = urem i16 %rem43.lhs.trunc.42, 100
  %cmp44.42 = icmp eq i16 %rem43171.42, 0
  br i1 %cmp44.42, label %if.then.42, label %if.end.42

if.then.42:                                       ; preds = %for.inc100.41
  %add48.42 = add nsw i32 %mid_vars.sroa.0.1.41, %rem9
  %mul49.42 = mul nsw i32 %local2.1.41, %add48.42
  %shr.42 = ashr i32 %mul49.42, 1
  %add51.42 = add nsw i32 %sub.42, %shr.42
  %call53.42 = tail call i32 @rand() #3
  %rem54.42 = srem i32 %call53.42, 5
  %add55.42 = add nsw i32 %rem54.42, %rem17
  %rem56.42 = srem i32 %add55.42, 100
  %346 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.42 = add nsw i32 %346, %shr.42
  %347 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.42 = add nsw i32 %add59.42, %347
  store i32 %add66.42, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %348 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %348, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.42, %for.inc100.41
  %mid_vars.sroa.0.1.42 = phi i32 [ %add51.42, %if.then.42 ], [ %mid_vars.sroa.0.1.41, %for.inc100.41 ]
  %mid_vars.sroa.10166.1.42 = phi i32 [ %mul49.42, %if.then.42 ], [ %mid_vars.sroa.10166.1.41, %for.inc100.41 ]
  %local2.1.42 = phi i32 [ %rem56.42, %if.then.42 ], [ %local2.1.41, %for.inc100.41 ]
  %rem70172.42 = urem i16 %rem43.lhs.trunc.42, 1000
  %cmp71.42 = icmp eq i16 %rem70172.42, 0
  br i1 %cmp71.42, label %if.then73.42, label %for.inc100.42

if.then73.42:                                     ; preds = %if.end.42
  %add74.42 = add nsw i32 %var1.1.41, %rem13
  %call79.42 = tail call i32 @rand() #3
  %rem80.42 = srem i32 %call79.42, 5
  br label %for.body87.42

for.body87.42:                                    ; preds = %for.body87.42, %if.then73.42
  %indvars.iv.42 = phi i64 [ 0, %if.then73.42 ], [ %indvars.iv.next.42, %for.body87.42 ]
  %call88.42 = tail call i32 @rand() #3
  %rem89.42 = srem i32 %call88.42, 100
  %349 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.42 = add nsw i32 %rem89.42, %349
  %rem93.lhs.trunc.42 = trunc i64 %indvars.iv.42 to i8
  %rem93173.42 = urem i8 %rem93.lhs.trunc.42, 10
  %idxprom94.42 = zext i8 %rem93173.42 to i64
  %arrayidx95.42 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.42, i64 %idxprom94.42
  store i32 %add90.42, i32* %arrayidx95.42, align 4, !tbaa !12
  %indvars.iv.next.42 = add nuw nsw i64 %indvars.iv.42, 1
  %exitcond.42.not = icmp eq i64 %indvars.iv.next.42, 10
  br i1 %exitcond.42.not, label %for.inc100.loopexit.42, label %for.body87.42, !llvm.loop !13

for.inc100.loopexit.42:                           ; preds = %for.body87.42
  %mul75.42 = mul nsw i32 %add74.42, %rem15
  %add81.42 = add nsw i32 %rem80.42, %rem78.sext
  br label %for.inc100.42

for.inc100.42:                                    ; preds = %for.inc100.loopexit.42, %if.end.42
  %var4.1.42 = phi i32 [ %var4.1.41, %if.end.42 ], [ %mul75.42, %for.inc100.loopexit.42 ]
  %var5.1.42 = phi i32 [ %var5.1.41, %if.end.42 ], [ %rem9, %for.inc100.loopexit.42 ]
  %var1.1.42 = phi i32 [ %var1.1.41, %if.end.42 ], [ %add81.42, %for.inc100.loopexit.42 ]
  %350 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.43 = mul nsw i32 %350, 3
  %351 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.43 = sdiv i32 %351, -2
  %sub.43 = add i32 %div.neg.43, %mul.43
  store i32 %sub.43, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.43 = add nsw i32 %sub.43, %350
  %rem32.43 = srem i32 %add31.43, 100
  store i32 %rem32.43, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.43 = or i32 %rem32.43, 1
  %add33.43 = add nsw i32 %or.43, %rem17
  store i32 %add33.43, i32* @main.hot_data.1, align 4, !tbaa !10
  %352 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.43 = add nsw i32 %add33.43, %352
  store i32 %add42.43, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %353 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.43 = add i16 %353, 43
  %rem43171.43 = urem i16 %rem43.lhs.trunc.43, 100
  %cmp44.43 = icmp eq i16 %rem43171.43, 0
  br i1 %cmp44.43, label %if.then.43, label %if.end.43

if.then.43:                                       ; preds = %for.inc100.42
  %add48.43 = add nsw i32 %mid_vars.sroa.0.1.42, %rem9
  %mul49.43 = mul nsw i32 %local2.1.42, %add48.43
  %shr.43 = ashr i32 %mul49.43, 1
  %add51.43 = add nsw i32 %sub.43, %shr.43
  %call53.43 = tail call i32 @rand() #3
  %rem54.43 = srem i32 %call53.43, 5
  %add55.43 = add nsw i32 %rem54.43, %rem17
  %rem56.43 = srem i32 %add55.43, 100
  %354 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.43 = add nsw i32 %354, %shr.43
  %355 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.43 = add nsw i32 %add59.43, %355
  store i32 %add66.43, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %356 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %356, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.43, %for.inc100.42
  %mid_vars.sroa.0.1.43 = phi i32 [ %add51.43, %if.then.43 ], [ %mid_vars.sroa.0.1.42, %for.inc100.42 ]
  %mid_vars.sroa.10166.1.43 = phi i32 [ %mul49.43, %if.then.43 ], [ %mid_vars.sroa.10166.1.42, %for.inc100.42 ]
  %local2.1.43 = phi i32 [ %rem56.43, %if.then.43 ], [ %local2.1.42, %for.inc100.42 ]
  %rem70172.43 = urem i16 %rem43.lhs.trunc.43, 1000
  %cmp71.43 = icmp eq i16 %rem70172.43, 0
  br i1 %cmp71.43, label %if.then73.43, label %for.inc100.43

if.then73.43:                                     ; preds = %if.end.43
  %add74.43 = add nsw i32 %var1.1.42, %rem13
  %call79.43 = tail call i32 @rand() #3
  %rem80.43 = srem i32 %call79.43, 5
  br label %for.body87.43

for.body87.43:                                    ; preds = %for.body87.43, %if.then73.43
  %indvars.iv.43 = phi i64 [ 0, %if.then73.43 ], [ %indvars.iv.next.43, %for.body87.43 ]
  %call88.43 = tail call i32 @rand() #3
  %rem89.43 = srem i32 %call88.43, 100
  %357 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.43 = add nsw i32 %rem89.43, %357
  %rem93.lhs.trunc.43 = trunc i64 %indvars.iv.43 to i8
  %rem93173.43 = urem i8 %rem93.lhs.trunc.43, 10
  %idxprom94.43 = zext i8 %rem93173.43 to i64
  %arrayidx95.43 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.43, i64 %idxprom94.43
  store i32 %add90.43, i32* %arrayidx95.43, align 4, !tbaa !12
  %indvars.iv.next.43 = add nuw nsw i64 %indvars.iv.43, 1
  %exitcond.43.not = icmp eq i64 %indvars.iv.next.43, 10
  br i1 %exitcond.43.not, label %for.inc100.loopexit.43, label %for.body87.43, !llvm.loop !13

for.inc100.loopexit.43:                           ; preds = %for.body87.43
  %mul75.43 = mul nsw i32 %add74.43, %rem15
  %add81.43 = add nsw i32 %rem80.43, %rem78.sext
  br label %for.inc100.43

for.inc100.43:                                    ; preds = %for.inc100.loopexit.43, %if.end.43
  %var4.1.43 = phi i32 [ %var4.1.42, %if.end.43 ], [ %mul75.43, %for.inc100.loopexit.43 ]
  %var5.1.43 = phi i32 [ %var5.1.42, %if.end.43 ], [ %rem9, %for.inc100.loopexit.43 ]
  %var1.1.43 = phi i32 [ %var1.1.42, %if.end.43 ], [ %add81.43, %for.inc100.loopexit.43 ]
  %358 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.44 = mul nsw i32 %358, 3
  %359 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.44 = sdiv i32 %359, -2
  %sub.44 = add i32 %div.neg.44, %mul.44
  store i32 %sub.44, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.44 = add nsw i32 %sub.44, %358
  %rem32.44 = srem i32 %add31.44, 100
  store i32 %rem32.44, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.44 = or i32 %rem32.44, 1
  %add33.44 = add nsw i32 %or.44, %rem17
  store i32 %add33.44, i32* @main.hot_data.1, align 4, !tbaa !10
  %360 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.44 = add nsw i32 %add33.44, %360
  store i32 %add42.44, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %361 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.44 = add i16 %361, 44
  %rem43171.44 = urem i16 %rem43.lhs.trunc.44, 100
  %cmp44.44 = icmp eq i16 %rem43171.44, 0
  br i1 %cmp44.44, label %if.then.44, label %if.end.44

if.then.44:                                       ; preds = %for.inc100.43
  %add48.44 = add nsw i32 %mid_vars.sroa.0.1.43, %rem9
  %mul49.44 = mul nsw i32 %local2.1.43, %add48.44
  %shr.44 = ashr i32 %mul49.44, 1
  %add51.44 = add nsw i32 %sub.44, %shr.44
  %call53.44 = tail call i32 @rand() #3
  %rem54.44 = srem i32 %call53.44, 5
  %add55.44 = add nsw i32 %rem54.44, %rem17
  %rem56.44 = srem i32 %add55.44, 100
  %362 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.44 = add nsw i32 %362, %shr.44
  %363 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.44 = add nsw i32 %add59.44, %363
  store i32 %add66.44, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %364 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %364, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.44, %for.inc100.43
  %mid_vars.sroa.0.1.44 = phi i32 [ %add51.44, %if.then.44 ], [ %mid_vars.sroa.0.1.43, %for.inc100.43 ]
  %mid_vars.sroa.10166.1.44 = phi i32 [ %mul49.44, %if.then.44 ], [ %mid_vars.sroa.10166.1.43, %for.inc100.43 ]
  %local2.1.44 = phi i32 [ %rem56.44, %if.then.44 ], [ %local2.1.43, %for.inc100.43 ]
  %rem70172.44 = urem i16 %rem43.lhs.trunc.44, 1000
  %cmp71.44 = icmp eq i16 %rem70172.44, 0
  br i1 %cmp71.44, label %if.then73.44, label %for.inc100.44

if.then73.44:                                     ; preds = %if.end.44
  %add74.44 = add nsw i32 %var1.1.43, %rem13
  %call79.44 = tail call i32 @rand() #3
  %rem80.44 = srem i32 %call79.44, 5
  br label %for.body87.44

for.body87.44:                                    ; preds = %for.body87.44, %if.then73.44
  %indvars.iv.44 = phi i64 [ 0, %if.then73.44 ], [ %indvars.iv.next.44, %for.body87.44 ]
  %call88.44 = tail call i32 @rand() #3
  %rem89.44 = srem i32 %call88.44, 100
  %365 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.44 = add nsw i32 %rem89.44, %365
  %rem93.lhs.trunc.44 = trunc i64 %indvars.iv.44 to i8
  %rem93173.44 = urem i8 %rem93.lhs.trunc.44, 10
  %idxprom94.44 = zext i8 %rem93173.44 to i64
  %arrayidx95.44 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.44, i64 %idxprom94.44
  store i32 %add90.44, i32* %arrayidx95.44, align 4, !tbaa !12
  %indvars.iv.next.44 = add nuw nsw i64 %indvars.iv.44, 1
  %exitcond.44.not = icmp eq i64 %indvars.iv.next.44, 10
  br i1 %exitcond.44.not, label %for.inc100.loopexit.44, label %for.body87.44, !llvm.loop !13

for.inc100.loopexit.44:                           ; preds = %for.body87.44
  %mul75.44 = mul nsw i32 %add74.44, %rem15
  %add81.44 = add nsw i32 %rem80.44, %rem78.sext
  br label %for.inc100.44

for.inc100.44:                                    ; preds = %for.inc100.loopexit.44, %if.end.44
  %var4.1.44 = phi i32 [ %var4.1.43, %if.end.44 ], [ %mul75.44, %for.inc100.loopexit.44 ]
  %var5.1.44 = phi i32 [ %var5.1.43, %if.end.44 ], [ %rem9, %for.inc100.loopexit.44 ]
  %var1.1.44 = phi i32 [ %var1.1.43, %if.end.44 ], [ %add81.44, %for.inc100.loopexit.44 ]
  %366 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.45 = mul nsw i32 %366, 3
  %367 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.45 = sdiv i32 %367, -2
  %sub.45 = add i32 %div.neg.45, %mul.45
  store i32 %sub.45, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.45 = add nsw i32 %sub.45, %366
  %rem32.45 = srem i32 %add31.45, 100
  store i32 %rem32.45, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.45 = or i32 %rem32.45, 1
  %add33.45 = add nsw i32 %or.45, %rem17
  store i32 %add33.45, i32* @main.hot_data.1, align 4, !tbaa !10
  %368 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.45 = add nsw i32 %add33.45, %368
  store i32 %add42.45, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %369 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.45 = add i16 %369, 45
  %rem43171.45 = urem i16 %rem43.lhs.trunc.45, 100
  %cmp44.45 = icmp eq i16 %rem43171.45, 0
  br i1 %cmp44.45, label %if.then.45, label %if.end.45

if.then.45:                                       ; preds = %for.inc100.44
  %add48.45 = add nsw i32 %mid_vars.sroa.0.1.44, %rem9
  %mul49.45 = mul nsw i32 %local2.1.44, %add48.45
  %shr.45 = ashr i32 %mul49.45, 1
  %add51.45 = add nsw i32 %sub.45, %shr.45
  %call53.45 = tail call i32 @rand() #3
  %rem54.45 = srem i32 %call53.45, 5
  %add55.45 = add nsw i32 %rem54.45, %rem17
  %rem56.45 = srem i32 %add55.45, 100
  %370 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.45 = add nsw i32 %370, %shr.45
  %371 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.45 = add nsw i32 %add59.45, %371
  store i32 %add66.45, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %372 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %372, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.45, %for.inc100.44
  %mid_vars.sroa.0.1.45 = phi i32 [ %add51.45, %if.then.45 ], [ %mid_vars.sroa.0.1.44, %for.inc100.44 ]
  %mid_vars.sroa.10166.1.45 = phi i32 [ %mul49.45, %if.then.45 ], [ %mid_vars.sroa.10166.1.44, %for.inc100.44 ]
  %local2.1.45 = phi i32 [ %rem56.45, %if.then.45 ], [ %local2.1.44, %for.inc100.44 ]
  %rem70172.45 = urem i16 %rem43.lhs.trunc.45, 1000
  %cmp71.45 = icmp eq i16 %rem70172.45, 0
  br i1 %cmp71.45, label %if.then73.45, label %for.inc100.45

if.then73.45:                                     ; preds = %if.end.45
  %add74.45 = add nsw i32 %var1.1.44, %rem13
  %call79.45 = tail call i32 @rand() #3
  %rem80.45 = srem i32 %call79.45, 5
  br label %for.body87.45

for.body87.45:                                    ; preds = %for.body87.45, %if.then73.45
  %indvars.iv.45 = phi i64 [ 0, %if.then73.45 ], [ %indvars.iv.next.45, %for.body87.45 ]
  %call88.45 = tail call i32 @rand() #3
  %rem89.45 = srem i32 %call88.45, 100
  %373 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.45 = add nsw i32 %rem89.45, %373
  %rem93.lhs.trunc.45 = trunc i64 %indvars.iv.45 to i8
  %rem93173.45 = urem i8 %rem93.lhs.trunc.45, 10
  %idxprom94.45 = zext i8 %rem93173.45 to i64
  %arrayidx95.45 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.45, i64 %idxprom94.45
  store i32 %add90.45, i32* %arrayidx95.45, align 4, !tbaa !12
  %indvars.iv.next.45 = add nuw nsw i64 %indvars.iv.45, 1
  %exitcond.45.not = icmp eq i64 %indvars.iv.next.45, 10
  br i1 %exitcond.45.not, label %for.inc100.loopexit.45, label %for.body87.45, !llvm.loop !13

for.inc100.loopexit.45:                           ; preds = %for.body87.45
  %mul75.45 = mul nsw i32 %add74.45, %rem15
  %add81.45 = add nsw i32 %rem80.45, %rem78.sext
  br label %for.inc100.45

for.inc100.45:                                    ; preds = %for.inc100.loopexit.45, %if.end.45
  %var4.1.45 = phi i32 [ %var4.1.44, %if.end.45 ], [ %mul75.45, %for.inc100.loopexit.45 ]
  %var5.1.45 = phi i32 [ %var5.1.44, %if.end.45 ], [ %rem9, %for.inc100.loopexit.45 ]
  %var1.1.45 = phi i32 [ %var1.1.44, %if.end.45 ], [ %add81.45, %for.inc100.loopexit.45 ]
  %374 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.46 = mul nsw i32 %374, 3
  %375 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.46 = sdiv i32 %375, -2
  %sub.46 = add i32 %div.neg.46, %mul.46
  store i32 %sub.46, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.46 = add nsw i32 %sub.46, %374
  %rem32.46 = srem i32 %add31.46, 100
  store i32 %rem32.46, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.46 = or i32 %rem32.46, 1
  %add33.46 = add nsw i32 %or.46, %rem17
  store i32 %add33.46, i32* @main.hot_data.1, align 4, !tbaa !10
  %376 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.46 = add nsw i32 %add33.46, %376
  store i32 %add42.46, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %377 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.46 = add i16 %377, 46
  %rem43171.46 = urem i16 %rem43.lhs.trunc.46, 100
  %cmp44.46 = icmp eq i16 %rem43171.46, 0
  br i1 %cmp44.46, label %if.then.46, label %if.end.46

if.then.46:                                       ; preds = %for.inc100.45
  %add48.46 = add nsw i32 %mid_vars.sroa.0.1.45, %rem9
  %mul49.46 = mul nsw i32 %local2.1.45, %add48.46
  %shr.46 = ashr i32 %mul49.46, 1
  %add51.46 = add nsw i32 %sub.46, %shr.46
  %call53.46 = tail call i32 @rand() #3
  %rem54.46 = srem i32 %call53.46, 5
  %add55.46 = add nsw i32 %rem54.46, %rem17
  %rem56.46 = srem i32 %add55.46, 100
  %378 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.46 = add nsw i32 %378, %shr.46
  %379 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.46 = add nsw i32 %add59.46, %379
  store i32 %add66.46, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %380 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %380, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.46, %for.inc100.45
  %mid_vars.sroa.0.1.46 = phi i32 [ %add51.46, %if.then.46 ], [ %mid_vars.sroa.0.1.45, %for.inc100.45 ]
  %mid_vars.sroa.10166.1.46 = phi i32 [ %mul49.46, %if.then.46 ], [ %mid_vars.sroa.10166.1.45, %for.inc100.45 ]
  %local2.1.46 = phi i32 [ %rem56.46, %if.then.46 ], [ %local2.1.45, %for.inc100.45 ]
  %rem70172.46 = urem i16 %rem43.lhs.trunc.46, 1000
  %cmp71.46 = icmp eq i16 %rem70172.46, 0
  br i1 %cmp71.46, label %if.then73.46, label %for.inc100.46

if.then73.46:                                     ; preds = %if.end.46
  %add74.46 = add nsw i32 %var1.1.45, %rem13
  %call79.46 = tail call i32 @rand() #3
  %rem80.46 = srem i32 %call79.46, 5
  br label %for.body87.46

for.body87.46:                                    ; preds = %for.body87.46, %if.then73.46
  %indvars.iv.46 = phi i64 [ 0, %if.then73.46 ], [ %indvars.iv.next.46, %for.body87.46 ]
  %call88.46 = tail call i32 @rand() #3
  %rem89.46 = srem i32 %call88.46, 100
  %381 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.46 = add nsw i32 %rem89.46, %381
  %rem93.lhs.trunc.46 = trunc i64 %indvars.iv.46 to i8
  %rem93173.46 = urem i8 %rem93.lhs.trunc.46, 10
  %idxprom94.46 = zext i8 %rem93173.46 to i64
  %arrayidx95.46 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.46, i64 %idxprom94.46
  store i32 %add90.46, i32* %arrayidx95.46, align 4, !tbaa !12
  %indvars.iv.next.46 = add nuw nsw i64 %indvars.iv.46, 1
  %exitcond.46.not = icmp eq i64 %indvars.iv.next.46, 10
  br i1 %exitcond.46.not, label %for.inc100.loopexit.46, label %for.body87.46, !llvm.loop !13

for.inc100.loopexit.46:                           ; preds = %for.body87.46
  %mul75.46 = mul nsw i32 %add74.46, %rem15
  %add81.46 = add nsw i32 %rem80.46, %rem78.sext
  br label %for.inc100.46

for.inc100.46:                                    ; preds = %for.inc100.loopexit.46, %if.end.46
  %var4.1.46 = phi i32 [ %var4.1.45, %if.end.46 ], [ %mul75.46, %for.inc100.loopexit.46 ]
  %var5.1.46 = phi i32 [ %var5.1.45, %if.end.46 ], [ %rem9, %for.inc100.loopexit.46 ]
  %var1.1.46 = phi i32 [ %var1.1.45, %if.end.46 ], [ %add81.46, %for.inc100.loopexit.46 ]
  %382 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.47 = mul nsw i32 %382, 3
  %383 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.47 = sdiv i32 %383, -2
  %sub.47 = add i32 %div.neg.47, %mul.47
  store i32 %sub.47, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.47 = add nsw i32 %sub.47, %382
  %rem32.47 = srem i32 %add31.47, 100
  store i32 %rem32.47, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.47 = or i32 %rem32.47, 1
  %add33.47 = add nsw i32 %or.47, %rem17
  store i32 %add33.47, i32* @main.hot_data.1, align 4, !tbaa !10
  %384 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.47 = add nsw i32 %add33.47, %384
  store i32 %add42.47, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %385 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.47 = add i16 %385, 47
  %rem43171.47 = urem i16 %rem43.lhs.trunc.47, 100
  %cmp44.47 = icmp eq i16 %rem43171.47, 0
  br i1 %cmp44.47, label %if.then.47, label %if.end.47

if.then.47:                                       ; preds = %for.inc100.46
  %add48.47 = add nsw i32 %mid_vars.sroa.0.1.46, %rem9
  %mul49.47 = mul nsw i32 %local2.1.46, %add48.47
  %shr.47 = ashr i32 %mul49.47, 1
  %add51.47 = add nsw i32 %sub.47, %shr.47
  %call53.47 = tail call i32 @rand() #3
  %rem54.47 = srem i32 %call53.47, 5
  %add55.47 = add nsw i32 %rem54.47, %rem17
  %rem56.47 = srem i32 %add55.47, 100
  %386 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.47 = add nsw i32 %386, %shr.47
  %387 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.47 = add nsw i32 %add59.47, %387
  store i32 %add66.47, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %388 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %388, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.47, %for.inc100.46
  %mid_vars.sroa.0.1.47 = phi i32 [ %add51.47, %if.then.47 ], [ %mid_vars.sroa.0.1.46, %for.inc100.46 ]
  %mid_vars.sroa.10166.1.47 = phi i32 [ %mul49.47, %if.then.47 ], [ %mid_vars.sroa.10166.1.46, %for.inc100.46 ]
  %local2.1.47 = phi i32 [ %rem56.47, %if.then.47 ], [ %local2.1.46, %for.inc100.46 ]
  %rem70172.47 = urem i16 %rem43.lhs.trunc.47, 1000
  %cmp71.47 = icmp eq i16 %rem70172.47, 0
  br i1 %cmp71.47, label %if.then73.47, label %for.inc100.47

if.then73.47:                                     ; preds = %if.end.47
  %add74.47 = add nsw i32 %var1.1.46, %rem13
  %call79.47 = tail call i32 @rand() #3
  %rem80.47 = srem i32 %call79.47, 5
  br label %for.body87.47

for.body87.47:                                    ; preds = %for.body87.47, %if.then73.47
  %indvars.iv.47 = phi i64 [ 0, %if.then73.47 ], [ %indvars.iv.next.47, %for.body87.47 ]
  %call88.47 = tail call i32 @rand() #3
  %rem89.47 = srem i32 %call88.47, 100
  %389 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.47 = add nsw i32 %rem89.47, %389
  %rem93.lhs.trunc.47 = trunc i64 %indvars.iv.47 to i8
  %rem93173.47 = urem i8 %rem93.lhs.trunc.47, 10
  %idxprom94.47 = zext i8 %rem93173.47 to i64
  %arrayidx95.47 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.47, i64 %idxprom94.47
  store i32 %add90.47, i32* %arrayidx95.47, align 4, !tbaa !12
  %indvars.iv.next.47 = add nuw nsw i64 %indvars.iv.47, 1
  %exitcond.47.not = icmp eq i64 %indvars.iv.next.47, 10
  br i1 %exitcond.47.not, label %for.inc100.loopexit.47, label %for.body87.47, !llvm.loop !13

for.inc100.loopexit.47:                           ; preds = %for.body87.47
  %mul75.47 = mul nsw i32 %add74.47, %rem15
  %add81.47 = add nsw i32 %rem80.47, %rem78.sext
  br label %for.inc100.47

for.inc100.47:                                    ; preds = %for.inc100.loopexit.47, %if.end.47
  %var4.1.47 = phi i32 [ %var4.1.46, %if.end.47 ], [ %mul75.47, %for.inc100.loopexit.47 ]
  %var5.1.47 = phi i32 [ %var5.1.46, %if.end.47 ], [ %rem9, %for.inc100.loopexit.47 ]
  %var1.1.47 = phi i32 [ %var1.1.46, %if.end.47 ], [ %add81.47, %for.inc100.loopexit.47 ]
  %390 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.48 = mul nsw i32 %390, 3
  %391 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.48 = sdiv i32 %391, -2
  %sub.48 = add i32 %div.neg.48, %mul.48
  store i32 %sub.48, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.48 = add nsw i32 %sub.48, %390
  %rem32.48 = srem i32 %add31.48, 100
  store i32 %rem32.48, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.48 = or i32 %rem32.48, 1
  %add33.48 = add nsw i32 %or.48, %rem17
  store i32 %add33.48, i32* @main.hot_data.1, align 4, !tbaa !10
  %392 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.48 = add nsw i32 %add33.48, %392
  store i32 %add42.48, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %393 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.48 = add i16 %393, 48
  %rem43171.48 = urem i16 %rem43.lhs.trunc.48, 100
  %cmp44.48 = icmp eq i16 %rem43171.48, 0
  br i1 %cmp44.48, label %if.then.48, label %if.end.48

if.then.48:                                       ; preds = %for.inc100.47
  %add48.48 = add nsw i32 %mid_vars.sroa.0.1.47, %rem9
  %mul49.48 = mul nsw i32 %local2.1.47, %add48.48
  %shr.48 = ashr i32 %mul49.48, 1
  %add51.48 = add nsw i32 %sub.48, %shr.48
  %call53.48 = tail call i32 @rand() #3
  %rem54.48 = srem i32 %call53.48, 5
  %add55.48 = add nsw i32 %rem54.48, %rem17
  %rem56.48 = srem i32 %add55.48, 100
  %394 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.48 = add nsw i32 %394, %shr.48
  %395 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.48 = add nsw i32 %add59.48, %395
  store i32 %add66.48, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %396 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %396, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.48, %for.inc100.47
  %mid_vars.sroa.0.1.48 = phi i32 [ %add51.48, %if.then.48 ], [ %mid_vars.sroa.0.1.47, %for.inc100.47 ]
  %mid_vars.sroa.10166.1.48 = phi i32 [ %mul49.48, %if.then.48 ], [ %mid_vars.sroa.10166.1.47, %for.inc100.47 ]
  %local2.1.48 = phi i32 [ %rem56.48, %if.then.48 ], [ %local2.1.47, %for.inc100.47 ]
  %rem70172.48 = urem i16 %rem43.lhs.trunc.48, 1000
  %cmp71.48 = icmp eq i16 %rem70172.48, 0
  br i1 %cmp71.48, label %if.then73.48, label %for.inc100.48

if.then73.48:                                     ; preds = %if.end.48
  %add74.48 = add nsw i32 %var1.1.47, %rem13
  %call79.48 = tail call i32 @rand() #3
  %rem80.48 = srem i32 %call79.48, 5
  br label %for.body87.48

for.body87.48:                                    ; preds = %for.body87.48, %if.then73.48
  %indvars.iv.48 = phi i64 [ 0, %if.then73.48 ], [ %indvars.iv.next.48, %for.body87.48 ]
  %call88.48 = tail call i32 @rand() #3
  %rem89.48 = srem i32 %call88.48, 100
  %397 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.48 = add nsw i32 %rem89.48, %397
  %rem93.lhs.trunc.48 = trunc i64 %indvars.iv.48 to i8
  %rem93173.48 = urem i8 %rem93.lhs.trunc.48, 10
  %idxprom94.48 = zext i8 %rem93173.48 to i64
  %arrayidx95.48 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.48, i64 %idxprom94.48
  store i32 %add90.48, i32* %arrayidx95.48, align 4, !tbaa !12
  %indvars.iv.next.48 = add nuw nsw i64 %indvars.iv.48, 1
  %exitcond.48.not = icmp eq i64 %indvars.iv.next.48, 10
  br i1 %exitcond.48.not, label %for.inc100.loopexit.48, label %for.body87.48, !llvm.loop !13

for.inc100.loopexit.48:                           ; preds = %for.body87.48
  %mul75.48 = mul nsw i32 %add74.48, %rem15
  %add81.48 = add nsw i32 %rem80.48, %rem78.sext
  br label %for.inc100.48

for.inc100.48:                                    ; preds = %for.inc100.loopexit.48, %if.end.48
  %var4.1.48 = phi i32 [ %var4.1.47, %if.end.48 ], [ %mul75.48, %for.inc100.loopexit.48 ]
  %var5.1.48 = phi i32 [ %var5.1.47, %if.end.48 ], [ %rem9, %for.inc100.loopexit.48 ]
  %var1.1.48 = phi i32 [ %var1.1.47, %if.end.48 ], [ %add81.48, %for.inc100.loopexit.48 ]
  %398 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.49 = mul nsw i32 %398, 3
  %399 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.49 = sdiv i32 %399, -2
  %sub.49 = add i32 %div.neg.49, %mul.49
  store i32 %sub.49, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.49 = add nsw i32 %sub.49, %398
  %rem32.49 = srem i32 %add31.49, 100
  store i32 %rem32.49, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.49 = or i32 %rem32.49, 1
  %add33.49 = add nsw i32 %or.49, %rem17
  store i32 %add33.49, i32* @main.hot_data.1, align 4, !tbaa !10
  %400 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.49 = add nsw i32 %add33.49, %400
  store i32 %add42.49, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %401 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.49 = add i16 %401, 49
  %rem43171.49 = urem i16 %rem43.lhs.trunc.49, 100
  %cmp44.49 = icmp eq i16 %rem43171.49, 0
  br i1 %cmp44.49, label %if.then.49, label %if.end.49

if.then.49:                                       ; preds = %for.inc100.48
  %add48.49 = add nsw i32 %mid_vars.sroa.0.1.48, %rem9
  %mul49.49 = mul nsw i32 %local2.1.48, %add48.49
  %shr.49 = ashr i32 %mul49.49, 1
  %add51.49 = add nsw i32 %sub.49, %shr.49
  %call53.49 = tail call i32 @rand() #3
  %rem54.49 = srem i32 %call53.49, 5
  %add55.49 = add nsw i32 %rem54.49, %rem17
  %rem56.49 = srem i32 %add55.49, 100
  %402 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.49 = add nsw i32 %402, %shr.49
  %403 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.49 = add nsw i32 %add59.49, %403
  store i32 %add66.49, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %404 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %404, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.49, %for.inc100.48
  %mid_vars.sroa.0.1.49 = phi i32 [ %add51.49, %if.then.49 ], [ %mid_vars.sroa.0.1.48, %for.inc100.48 ]
  %mid_vars.sroa.10166.1.49 = phi i32 [ %mul49.49, %if.then.49 ], [ %mid_vars.sroa.10166.1.48, %for.inc100.48 ]
  %local2.1.49 = phi i32 [ %rem56.49, %if.then.49 ], [ %local2.1.48, %for.inc100.48 ]
  %rem70172.49 = urem i16 %rem43.lhs.trunc.49, 1000
  %cmp71.49 = icmp eq i16 %rem70172.49, 0
  br i1 %cmp71.49, label %if.then73.49, label %for.inc100.49

if.then73.49:                                     ; preds = %if.end.49
  %add74.49 = add nsw i32 %var1.1.48, %rem13
  %call79.49 = tail call i32 @rand() #3
  %rem80.49 = srem i32 %call79.49, 5
  br label %for.body87.49

for.body87.49:                                    ; preds = %for.body87.49, %if.then73.49
  %indvars.iv.49 = phi i64 [ 0, %if.then73.49 ], [ %indvars.iv.next.49, %for.body87.49 ]
  %call88.49 = tail call i32 @rand() #3
  %rem89.49 = srem i32 %call88.49, 100
  %405 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.49 = add nsw i32 %rem89.49, %405
  %rem93.lhs.trunc.49 = trunc i64 %indvars.iv.49 to i8
  %rem93173.49 = urem i8 %rem93.lhs.trunc.49, 10
  %idxprom94.49 = zext i8 %rem93173.49 to i64
  %arrayidx95.49 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.49, i64 %idxprom94.49
  store i32 %add90.49, i32* %arrayidx95.49, align 4, !tbaa !12
  %indvars.iv.next.49 = add nuw nsw i64 %indvars.iv.49, 1
  %exitcond.49.not = icmp eq i64 %indvars.iv.next.49, 10
  br i1 %exitcond.49.not, label %for.inc100.loopexit.49, label %for.body87.49, !llvm.loop !13

for.inc100.loopexit.49:                           ; preds = %for.body87.49
  %mul75.49 = mul nsw i32 %add74.49, %rem15
  %add81.49 = add nsw i32 %rem80.49, %rem78.sext
  br label %for.inc100.49

for.inc100.49:                                    ; preds = %for.inc100.loopexit.49, %if.end.49
  %var4.1.49 = phi i32 [ %var4.1.48, %if.end.49 ], [ %mul75.49, %for.inc100.loopexit.49 ]
  %var5.1.49 = phi i32 [ %var5.1.48, %if.end.49 ], [ %rem9, %for.inc100.loopexit.49 ]
  %var1.1.49 = phi i32 [ %var1.1.48, %if.end.49 ], [ %add81.49, %for.inc100.loopexit.49 ]
  %406 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.50 = mul nsw i32 %406, 3
  %407 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.50 = sdiv i32 %407, -2
  %sub.50 = add i32 %div.neg.50, %mul.50
  store i32 %sub.50, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.50 = add nsw i32 %sub.50, %406
  %rem32.50 = srem i32 %add31.50, 100
  store i32 %rem32.50, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.50 = or i32 %rem32.50, 1
  %add33.50 = add nsw i32 %or.50, %rem17
  store i32 %add33.50, i32* @main.hot_data.1, align 4, !tbaa !10
  %408 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.50 = add nsw i32 %add33.50, %408
  store i32 %add42.50, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %409 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.50 = add i16 %409, 50
  %rem43171.50 = urem i16 %rem43.lhs.trunc.50, 100
  %cmp44.50 = icmp eq i16 %rem43171.50, 0
  br i1 %cmp44.50, label %if.then.50, label %if.end.50

if.then.50:                                       ; preds = %for.inc100.49
  %add48.50 = add nsw i32 %mid_vars.sroa.0.1.49, %rem9
  %mul49.50 = mul nsw i32 %local2.1.49, %add48.50
  %shr.50 = ashr i32 %mul49.50, 1
  %add51.50 = add nsw i32 %sub.50, %shr.50
  %call53.50 = tail call i32 @rand() #3
  %rem54.50 = srem i32 %call53.50, 5
  %add55.50 = add nsw i32 %rem54.50, %rem17
  %rem56.50 = srem i32 %add55.50, 100
  %410 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.50 = add nsw i32 %410, %shr.50
  %411 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.50 = add nsw i32 %add59.50, %411
  store i32 %add66.50, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.50, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.50, %for.inc100.49
  %mid_vars.sroa.0.1.50 = phi i32 [ %add51.50, %if.then.50 ], [ %mid_vars.sroa.0.1.49, %for.inc100.49 ]
  %mid_vars.sroa.10166.1.50 = phi i32 [ %mul49.50, %if.then.50 ], [ %mid_vars.sroa.10166.1.49, %for.inc100.49 ]
  %local2.1.50 = phi i32 [ %rem56.50, %if.then.50 ], [ %local2.1.49, %for.inc100.49 ]
  %rem70172.50 = urem i16 %rem43.lhs.trunc.50, 1000
  %cmp71.50 = icmp eq i16 %rem70172.50, 0
  br i1 %cmp71.50, label %if.then73.50, label %for.inc100.50

if.then73.50:                                     ; preds = %if.end.50
  %add74.50 = add nsw i32 %var1.1.49, %rem13
  %call79.50 = tail call i32 @rand() #3
  %rem80.50 = srem i32 %call79.50, 5
  br label %for.body87.50

for.body87.50:                                    ; preds = %for.body87.50, %if.then73.50
  %indvars.iv.50 = phi i64 [ 0, %if.then73.50 ], [ %indvars.iv.next.50, %for.body87.50 ]
  %call88.50 = tail call i32 @rand() #3
  %rem89.50 = srem i32 %call88.50, 100
  %412 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.50 = add nsw i32 %rem89.50, %412
  %rem93.lhs.trunc.50 = trunc i64 %indvars.iv.50 to i8
  %rem93173.50 = urem i8 %rem93.lhs.trunc.50, 10
  %idxprom94.50 = zext i8 %rem93173.50 to i64
  %arrayidx95.50 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.50, i64 %idxprom94.50
  store i32 %add90.50, i32* %arrayidx95.50, align 4, !tbaa !12
  %indvars.iv.next.50 = add nuw nsw i64 %indvars.iv.50, 1
  %exitcond.50.not = icmp eq i64 %indvars.iv.next.50, 10
  br i1 %exitcond.50.not, label %for.inc100.loopexit.50, label %for.body87.50, !llvm.loop !13

for.inc100.loopexit.50:                           ; preds = %for.body87.50
  %mul75.50 = mul nsw i32 %add74.50, %rem15
  %add81.50 = add nsw i32 %rem80.50, %rem78.sext
  br label %for.inc100.50

for.inc100.50:                                    ; preds = %for.inc100.loopexit.50, %if.end.50
  %var4.1.50 = phi i32 [ %var4.1.49, %if.end.50 ], [ %mul75.50, %for.inc100.loopexit.50 ]
  %var5.1.50 = phi i32 [ %var5.1.49, %if.end.50 ], [ %rem9, %for.inc100.loopexit.50 ]
  %var1.1.50 = phi i32 [ %var1.1.49, %if.end.50 ], [ %add81.50, %for.inc100.loopexit.50 ]
  %413 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.51 = mul nsw i32 %413, 3
  %414 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.51 = sdiv i32 %414, -2
  %sub.51 = add i32 %div.neg.51, %mul.51
  store i32 %sub.51, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.51 = add nsw i32 %sub.51, %413
  %rem32.51 = srem i32 %add31.51, 100
  store i32 %rem32.51, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.51 = or i32 %rem32.51, 1
  %add33.51 = add nsw i32 %or.51, %rem17
  store i32 %add33.51, i32* @main.hot_data.1, align 4, !tbaa !10
  %415 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.51 = add nsw i32 %add33.51, %415
  store i32 %add42.51, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %416 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.51 = add i16 %416, 51
  %rem43171.51 = urem i16 %rem43.lhs.trunc.51, 100
  %cmp44.51 = icmp eq i16 %rem43171.51, 0
  br i1 %cmp44.51, label %if.then.51, label %if.end.51

if.then.51:                                       ; preds = %for.inc100.50
  %add48.51 = add nsw i32 %mid_vars.sroa.0.1.50, %rem9
  %mul49.51 = mul nsw i32 %local2.1.50, %add48.51
  %shr.51 = ashr i32 %mul49.51, 1
  %add51.51 = add nsw i32 %sub.51, %shr.51
  %call53.51 = tail call i32 @rand() #3
  %rem54.51 = srem i32 %call53.51, 5
  %add55.51 = add nsw i32 %rem54.51, %rem17
  %rem56.51 = srem i32 %add55.51, 100
  %417 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.51 = add nsw i32 %417, %shr.51
  %418 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.51 = add nsw i32 %add59.51, %418
  store i32 %add66.51, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %419 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %419, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.51, %for.inc100.50
  %mid_vars.sroa.0.1.51 = phi i32 [ %add51.51, %if.then.51 ], [ %mid_vars.sroa.0.1.50, %for.inc100.50 ]
  %mid_vars.sroa.10166.1.51 = phi i32 [ %mul49.51, %if.then.51 ], [ %mid_vars.sroa.10166.1.50, %for.inc100.50 ]
  %local2.1.51 = phi i32 [ %rem56.51, %if.then.51 ], [ %local2.1.50, %for.inc100.50 ]
  %rem70172.51 = urem i16 %rem43.lhs.trunc.51, 1000
  %cmp71.51 = icmp eq i16 %rem70172.51, 0
  br i1 %cmp71.51, label %if.then73.51, label %for.inc100.51

if.then73.51:                                     ; preds = %if.end.51
  %add74.51 = add nsw i32 %var1.1.50, %rem13
  %call79.51 = tail call i32 @rand() #3
  %rem80.51 = srem i32 %call79.51, 5
  br label %for.body87.51

for.body87.51:                                    ; preds = %for.body87.51, %if.then73.51
  %indvars.iv.51 = phi i64 [ 0, %if.then73.51 ], [ %indvars.iv.next.51, %for.body87.51 ]
  %call88.51 = tail call i32 @rand() #3
  %rem89.51 = srem i32 %call88.51, 100
  %420 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.51 = add nsw i32 %rem89.51, %420
  %rem93.lhs.trunc.51 = trunc i64 %indvars.iv.51 to i8
  %rem93173.51 = urem i8 %rem93.lhs.trunc.51, 10
  %idxprom94.51 = zext i8 %rem93173.51 to i64
  %arrayidx95.51 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.51, i64 %idxprom94.51
  store i32 %add90.51, i32* %arrayidx95.51, align 4, !tbaa !12
  %indvars.iv.next.51 = add nuw nsw i64 %indvars.iv.51, 1
  %exitcond.51.not = icmp eq i64 %indvars.iv.next.51, 10
  br i1 %exitcond.51.not, label %for.inc100.loopexit.51, label %for.body87.51, !llvm.loop !13

for.inc100.loopexit.51:                           ; preds = %for.body87.51
  %mul75.51 = mul nsw i32 %add74.51, %rem15
  %add81.51 = add nsw i32 %rem80.51, %rem78.sext
  br label %for.inc100.51

for.inc100.51:                                    ; preds = %for.inc100.loopexit.51, %if.end.51
  %var4.1.51 = phi i32 [ %var4.1.50, %if.end.51 ], [ %mul75.51, %for.inc100.loopexit.51 ]
  %var5.1.51 = phi i32 [ %var5.1.50, %if.end.51 ], [ %rem9, %for.inc100.loopexit.51 ]
  %var1.1.51 = phi i32 [ %var1.1.50, %if.end.51 ], [ %add81.51, %for.inc100.loopexit.51 ]
  %421 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.52 = mul nsw i32 %421, 3
  %422 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.52 = sdiv i32 %422, -2
  %sub.52 = add i32 %div.neg.52, %mul.52
  store i32 %sub.52, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.52 = add nsw i32 %sub.52, %421
  %rem32.52 = srem i32 %add31.52, 100
  store i32 %rem32.52, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.52 = or i32 %rem32.52, 1
  %add33.52 = add nsw i32 %or.52, %rem17
  store i32 %add33.52, i32* @main.hot_data.1, align 4, !tbaa !10
  %423 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.52 = add nsw i32 %add33.52, %423
  store i32 %add42.52, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %424 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.52 = add i16 %424, 52
  %rem43171.52 = urem i16 %rem43.lhs.trunc.52, 100
  %cmp44.52 = icmp eq i16 %rem43171.52, 0
  br i1 %cmp44.52, label %if.then.52, label %if.end.52

if.then.52:                                       ; preds = %for.inc100.51
  %add48.52 = add nsw i32 %mid_vars.sroa.0.1.51, %rem9
  %mul49.52 = mul nsw i32 %local2.1.51, %add48.52
  %shr.52 = ashr i32 %mul49.52, 1
  %add51.52 = add nsw i32 %sub.52, %shr.52
  %call53.52 = tail call i32 @rand() #3
  %rem54.52 = srem i32 %call53.52, 5
  %add55.52 = add nsw i32 %rem54.52, %rem17
  %rem56.52 = srem i32 %add55.52, 100
  %425 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.52 = add nsw i32 %425, %shr.52
  %426 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.52 = add nsw i32 %add59.52, %426
  store i32 %add66.52, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %427 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %427, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.52, %for.inc100.51
  %mid_vars.sroa.0.1.52 = phi i32 [ %add51.52, %if.then.52 ], [ %mid_vars.sroa.0.1.51, %for.inc100.51 ]
  %mid_vars.sroa.10166.1.52 = phi i32 [ %mul49.52, %if.then.52 ], [ %mid_vars.sroa.10166.1.51, %for.inc100.51 ]
  %local2.1.52 = phi i32 [ %rem56.52, %if.then.52 ], [ %local2.1.51, %for.inc100.51 ]
  %rem70172.52 = urem i16 %rem43.lhs.trunc.52, 1000
  %cmp71.52 = icmp eq i16 %rem70172.52, 0
  br i1 %cmp71.52, label %if.then73.52, label %for.inc100.52

if.then73.52:                                     ; preds = %if.end.52
  %add74.52 = add nsw i32 %var1.1.51, %rem13
  %call79.52 = tail call i32 @rand() #3
  %rem80.52 = srem i32 %call79.52, 5
  br label %for.body87.52

for.body87.52:                                    ; preds = %for.body87.52, %if.then73.52
  %indvars.iv.52 = phi i64 [ 0, %if.then73.52 ], [ %indvars.iv.next.52, %for.body87.52 ]
  %call88.52 = tail call i32 @rand() #3
  %rem89.52 = srem i32 %call88.52, 100
  %428 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.52 = add nsw i32 %rem89.52, %428
  %rem93.lhs.trunc.52 = trunc i64 %indvars.iv.52 to i8
  %rem93173.52 = urem i8 %rem93.lhs.trunc.52, 10
  %idxprom94.52 = zext i8 %rem93173.52 to i64
  %arrayidx95.52 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.52, i64 %idxprom94.52
  store i32 %add90.52, i32* %arrayidx95.52, align 4, !tbaa !12
  %indvars.iv.next.52 = add nuw nsw i64 %indvars.iv.52, 1
  %exitcond.52.not = icmp eq i64 %indvars.iv.next.52, 10
  br i1 %exitcond.52.not, label %for.inc100.loopexit.52, label %for.body87.52, !llvm.loop !13

for.inc100.loopexit.52:                           ; preds = %for.body87.52
  %mul75.52 = mul nsw i32 %add74.52, %rem15
  %add81.52 = add nsw i32 %rem80.52, %rem78.sext
  br label %for.inc100.52

for.inc100.52:                                    ; preds = %for.inc100.loopexit.52, %if.end.52
  %var4.1.52 = phi i32 [ %var4.1.51, %if.end.52 ], [ %mul75.52, %for.inc100.loopexit.52 ]
  %var5.1.52 = phi i32 [ %var5.1.51, %if.end.52 ], [ %rem9, %for.inc100.loopexit.52 ]
  %var1.1.52 = phi i32 [ %var1.1.51, %if.end.52 ], [ %add81.52, %for.inc100.loopexit.52 ]
  %429 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.53 = mul nsw i32 %429, 3
  %430 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.53 = sdiv i32 %430, -2
  %sub.53 = add i32 %div.neg.53, %mul.53
  store i32 %sub.53, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.53 = add nsw i32 %sub.53, %429
  %rem32.53 = srem i32 %add31.53, 100
  store i32 %rem32.53, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.53 = or i32 %rem32.53, 1
  %add33.53 = add nsw i32 %or.53, %rem17
  store i32 %add33.53, i32* @main.hot_data.1, align 4, !tbaa !10
  %431 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.53 = add nsw i32 %add33.53, %431
  store i32 %add42.53, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %432 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.53 = add i16 %432, 53
  %rem43171.53 = urem i16 %rem43.lhs.trunc.53, 100
  %cmp44.53 = icmp eq i16 %rem43171.53, 0
  br i1 %cmp44.53, label %if.then.53, label %if.end.53

if.then.53:                                       ; preds = %for.inc100.52
  %add48.53 = add nsw i32 %mid_vars.sroa.0.1.52, %rem9
  %mul49.53 = mul nsw i32 %local2.1.52, %add48.53
  %shr.53 = ashr i32 %mul49.53, 1
  %add51.53 = add nsw i32 %sub.53, %shr.53
  %call53.53 = tail call i32 @rand() #3
  %rem54.53 = srem i32 %call53.53, 5
  %add55.53 = add nsw i32 %rem54.53, %rem17
  %rem56.53 = srem i32 %add55.53, 100
  %433 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.53 = add nsw i32 %433, %shr.53
  %434 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.53 = add nsw i32 %add59.53, %434
  store i32 %add66.53, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %435 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %435, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.53, %for.inc100.52
  %mid_vars.sroa.0.1.53 = phi i32 [ %add51.53, %if.then.53 ], [ %mid_vars.sroa.0.1.52, %for.inc100.52 ]
  %mid_vars.sroa.10166.1.53 = phi i32 [ %mul49.53, %if.then.53 ], [ %mid_vars.sroa.10166.1.52, %for.inc100.52 ]
  %local2.1.53 = phi i32 [ %rem56.53, %if.then.53 ], [ %local2.1.52, %for.inc100.52 ]
  %rem70172.53 = urem i16 %rem43.lhs.trunc.53, 1000
  %cmp71.53 = icmp eq i16 %rem70172.53, 0
  br i1 %cmp71.53, label %if.then73.53, label %for.inc100.53

if.then73.53:                                     ; preds = %if.end.53
  %add74.53 = add nsw i32 %var1.1.52, %rem13
  %call79.53 = tail call i32 @rand() #3
  %rem80.53 = srem i32 %call79.53, 5
  br label %for.body87.53

for.body87.53:                                    ; preds = %for.body87.53, %if.then73.53
  %indvars.iv.53 = phi i64 [ 0, %if.then73.53 ], [ %indvars.iv.next.53, %for.body87.53 ]
  %call88.53 = tail call i32 @rand() #3
  %rem89.53 = srem i32 %call88.53, 100
  %436 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.53 = add nsw i32 %rem89.53, %436
  %rem93.lhs.trunc.53 = trunc i64 %indvars.iv.53 to i8
  %rem93173.53 = urem i8 %rem93.lhs.trunc.53, 10
  %idxprom94.53 = zext i8 %rem93173.53 to i64
  %arrayidx95.53 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.53, i64 %idxprom94.53
  store i32 %add90.53, i32* %arrayidx95.53, align 4, !tbaa !12
  %indvars.iv.next.53 = add nuw nsw i64 %indvars.iv.53, 1
  %exitcond.53.not = icmp eq i64 %indvars.iv.next.53, 10
  br i1 %exitcond.53.not, label %for.inc100.loopexit.53, label %for.body87.53, !llvm.loop !13

for.inc100.loopexit.53:                           ; preds = %for.body87.53
  %mul75.53 = mul nsw i32 %add74.53, %rem15
  %add81.53 = add nsw i32 %rem80.53, %rem78.sext
  br label %for.inc100.53

for.inc100.53:                                    ; preds = %for.inc100.loopexit.53, %if.end.53
  %var4.1.53 = phi i32 [ %var4.1.52, %if.end.53 ], [ %mul75.53, %for.inc100.loopexit.53 ]
  %var5.1.53 = phi i32 [ %var5.1.52, %if.end.53 ], [ %rem9, %for.inc100.loopexit.53 ]
  %var1.1.53 = phi i32 [ %var1.1.52, %if.end.53 ], [ %add81.53, %for.inc100.loopexit.53 ]
  %437 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.54 = mul nsw i32 %437, 3
  %438 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.54 = sdiv i32 %438, -2
  %sub.54 = add i32 %div.neg.54, %mul.54
  store i32 %sub.54, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.54 = add nsw i32 %sub.54, %437
  %rem32.54 = srem i32 %add31.54, 100
  store i32 %rem32.54, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.54 = or i32 %rem32.54, 1
  %add33.54 = add nsw i32 %or.54, %rem17
  store i32 %add33.54, i32* @main.hot_data.1, align 4, !tbaa !10
  %439 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.54 = add nsw i32 %add33.54, %439
  store i32 %add42.54, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %440 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.54 = add i16 %440, 54
  %rem43171.54 = urem i16 %rem43.lhs.trunc.54, 100
  %cmp44.54 = icmp eq i16 %rem43171.54, 0
  br i1 %cmp44.54, label %if.then.54, label %if.end.54

if.then.54:                                       ; preds = %for.inc100.53
  %add48.54 = add nsw i32 %mid_vars.sroa.0.1.53, %rem9
  %mul49.54 = mul nsw i32 %local2.1.53, %add48.54
  %shr.54 = ashr i32 %mul49.54, 1
  %add51.54 = add nsw i32 %sub.54, %shr.54
  %call53.54 = tail call i32 @rand() #3
  %rem54.54 = srem i32 %call53.54, 5
  %add55.54 = add nsw i32 %rem54.54, %rem17
  %rem56.54 = srem i32 %add55.54, 100
  %441 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.54 = add nsw i32 %441, %shr.54
  %442 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.54 = add nsw i32 %add59.54, %442
  store i32 %add66.54, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %443 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %443, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.54, %for.inc100.53
  %mid_vars.sroa.0.1.54 = phi i32 [ %add51.54, %if.then.54 ], [ %mid_vars.sroa.0.1.53, %for.inc100.53 ]
  %mid_vars.sroa.10166.1.54 = phi i32 [ %mul49.54, %if.then.54 ], [ %mid_vars.sroa.10166.1.53, %for.inc100.53 ]
  %local2.1.54 = phi i32 [ %rem56.54, %if.then.54 ], [ %local2.1.53, %for.inc100.53 ]
  %rem70172.54 = urem i16 %rem43.lhs.trunc.54, 1000
  %cmp71.54 = icmp eq i16 %rem70172.54, 0
  br i1 %cmp71.54, label %if.then73.54, label %for.inc100.54

if.then73.54:                                     ; preds = %if.end.54
  %add74.54 = add nsw i32 %var1.1.53, %rem13
  %call79.54 = tail call i32 @rand() #3
  %rem80.54 = srem i32 %call79.54, 5
  br label %for.body87.54

for.body87.54:                                    ; preds = %for.body87.54, %if.then73.54
  %indvars.iv.54 = phi i64 [ 0, %if.then73.54 ], [ %indvars.iv.next.54, %for.body87.54 ]
  %call88.54 = tail call i32 @rand() #3
  %rem89.54 = srem i32 %call88.54, 100
  %444 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.54 = add nsw i32 %rem89.54, %444
  %rem93.lhs.trunc.54 = trunc i64 %indvars.iv.54 to i8
  %rem93173.54 = urem i8 %rem93.lhs.trunc.54, 10
  %idxprom94.54 = zext i8 %rem93173.54 to i64
  %arrayidx95.54 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.54, i64 %idxprom94.54
  store i32 %add90.54, i32* %arrayidx95.54, align 4, !tbaa !12
  %indvars.iv.next.54 = add nuw nsw i64 %indvars.iv.54, 1
  %exitcond.54.not = icmp eq i64 %indvars.iv.next.54, 10
  br i1 %exitcond.54.not, label %for.inc100.loopexit.54, label %for.body87.54, !llvm.loop !13

for.inc100.loopexit.54:                           ; preds = %for.body87.54
  %mul75.54 = mul nsw i32 %add74.54, %rem15
  %add81.54 = add nsw i32 %rem80.54, %rem78.sext
  br label %for.inc100.54

for.inc100.54:                                    ; preds = %for.inc100.loopexit.54, %if.end.54
  %var4.1.54 = phi i32 [ %var4.1.53, %if.end.54 ], [ %mul75.54, %for.inc100.loopexit.54 ]
  %var5.1.54 = phi i32 [ %var5.1.53, %if.end.54 ], [ %rem9, %for.inc100.loopexit.54 ]
  %var1.1.54 = phi i32 [ %var1.1.53, %if.end.54 ], [ %add81.54, %for.inc100.loopexit.54 ]
  %445 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.55 = mul nsw i32 %445, 3
  %446 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.55 = sdiv i32 %446, -2
  %sub.55 = add i32 %div.neg.55, %mul.55
  store i32 %sub.55, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.55 = add nsw i32 %sub.55, %445
  %rem32.55 = srem i32 %add31.55, 100
  store i32 %rem32.55, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.55 = or i32 %rem32.55, 1
  %add33.55 = add nsw i32 %or.55, %rem17
  store i32 %add33.55, i32* @main.hot_data.1, align 4, !tbaa !10
  %447 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.55 = add nsw i32 %add33.55, %447
  store i32 %add42.55, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %448 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.55 = add i16 %448, 55
  %rem43171.55 = urem i16 %rem43.lhs.trunc.55, 100
  %cmp44.55 = icmp eq i16 %rem43171.55, 0
  br i1 %cmp44.55, label %if.then.55, label %if.end.55

if.then.55:                                       ; preds = %for.inc100.54
  %add48.55 = add nsw i32 %mid_vars.sroa.0.1.54, %rem9
  %mul49.55 = mul nsw i32 %local2.1.54, %add48.55
  %shr.55 = ashr i32 %mul49.55, 1
  %add51.55 = add nsw i32 %sub.55, %shr.55
  %call53.55 = tail call i32 @rand() #3
  %rem54.55 = srem i32 %call53.55, 5
  %add55.55 = add nsw i32 %rem54.55, %rem17
  %rem56.55 = srem i32 %add55.55, 100
  %449 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.55 = add nsw i32 %449, %shr.55
  %450 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.55 = add nsw i32 %add59.55, %450
  store i32 %add66.55, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %451 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %451, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.55, %for.inc100.54
  %mid_vars.sroa.0.1.55 = phi i32 [ %add51.55, %if.then.55 ], [ %mid_vars.sroa.0.1.54, %for.inc100.54 ]
  %mid_vars.sroa.10166.1.55 = phi i32 [ %mul49.55, %if.then.55 ], [ %mid_vars.sroa.10166.1.54, %for.inc100.54 ]
  %local2.1.55 = phi i32 [ %rem56.55, %if.then.55 ], [ %local2.1.54, %for.inc100.54 ]
  %rem70172.55 = urem i16 %rem43.lhs.trunc.55, 1000
  %cmp71.55 = icmp eq i16 %rem70172.55, 0
  br i1 %cmp71.55, label %if.then73.55, label %for.inc100.55

if.then73.55:                                     ; preds = %if.end.55
  %add74.55 = add nsw i32 %var1.1.54, %rem13
  %call79.55 = tail call i32 @rand() #3
  %rem80.55 = srem i32 %call79.55, 5
  br label %for.body87.55

for.body87.55:                                    ; preds = %for.body87.55, %if.then73.55
  %indvars.iv.55 = phi i64 [ 0, %if.then73.55 ], [ %indvars.iv.next.55, %for.body87.55 ]
  %call88.55 = tail call i32 @rand() #3
  %rem89.55 = srem i32 %call88.55, 100
  %452 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.55 = add nsw i32 %rem89.55, %452
  %rem93.lhs.trunc.55 = trunc i64 %indvars.iv.55 to i8
  %rem93173.55 = urem i8 %rem93.lhs.trunc.55, 10
  %idxprom94.55 = zext i8 %rem93173.55 to i64
  %arrayidx95.55 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.55, i64 %idxprom94.55
  store i32 %add90.55, i32* %arrayidx95.55, align 4, !tbaa !12
  %indvars.iv.next.55 = add nuw nsw i64 %indvars.iv.55, 1
  %exitcond.55.not = icmp eq i64 %indvars.iv.next.55, 10
  br i1 %exitcond.55.not, label %for.inc100.loopexit.55, label %for.body87.55, !llvm.loop !13

for.inc100.loopexit.55:                           ; preds = %for.body87.55
  %mul75.55 = mul nsw i32 %add74.55, %rem15
  %add81.55 = add nsw i32 %rem80.55, %rem78.sext
  br label %for.inc100.55

for.inc100.55:                                    ; preds = %for.inc100.loopexit.55, %if.end.55
  %var4.1.55 = phi i32 [ %var4.1.54, %if.end.55 ], [ %mul75.55, %for.inc100.loopexit.55 ]
  %var5.1.55 = phi i32 [ %var5.1.54, %if.end.55 ], [ %rem9, %for.inc100.loopexit.55 ]
  %var1.1.55 = phi i32 [ %var1.1.54, %if.end.55 ], [ %add81.55, %for.inc100.loopexit.55 ]
  %453 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.56 = mul nsw i32 %453, 3
  %454 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.56 = sdiv i32 %454, -2
  %sub.56 = add i32 %div.neg.56, %mul.56
  store i32 %sub.56, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.56 = add nsw i32 %sub.56, %453
  %rem32.56 = srem i32 %add31.56, 100
  store i32 %rem32.56, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.56 = or i32 %rem32.56, 1
  %add33.56 = add nsw i32 %or.56, %rem17
  store i32 %add33.56, i32* @main.hot_data.1, align 4, !tbaa !10
  %455 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.56 = add nsw i32 %add33.56, %455
  store i32 %add42.56, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %456 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.56 = add i16 %456, 56
  %rem43171.56 = urem i16 %rem43.lhs.trunc.56, 100
  %cmp44.56 = icmp eq i16 %rem43171.56, 0
  br i1 %cmp44.56, label %if.then.56, label %if.end.56

if.then.56:                                       ; preds = %for.inc100.55
  %add48.56 = add nsw i32 %mid_vars.sroa.0.1.55, %rem9
  %mul49.56 = mul nsw i32 %local2.1.55, %add48.56
  %shr.56 = ashr i32 %mul49.56, 1
  %add51.56 = add nsw i32 %sub.56, %shr.56
  %call53.56 = tail call i32 @rand() #3
  %rem54.56 = srem i32 %call53.56, 5
  %add55.56 = add nsw i32 %rem54.56, %rem17
  %rem56.56 = srem i32 %add55.56, 100
  %457 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.56 = add nsw i32 %457, %shr.56
  %458 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.56 = add nsw i32 %add59.56, %458
  store i32 %add66.56, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %459 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %459, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.56, %for.inc100.55
  %mid_vars.sroa.0.1.56 = phi i32 [ %add51.56, %if.then.56 ], [ %mid_vars.sroa.0.1.55, %for.inc100.55 ]
  %mid_vars.sroa.10166.1.56 = phi i32 [ %mul49.56, %if.then.56 ], [ %mid_vars.sroa.10166.1.55, %for.inc100.55 ]
  %local2.1.56 = phi i32 [ %rem56.56, %if.then.56 ], [ %local2.1.55, %for.inc100.55 ]
  %rem70172.56 = urem i16 %rem43.lhs.trunc.56, 1000
  %cmp71.56 = icmp eq i16 %rem70172.56, 0
  br i1 %cmp71.56, label %if.then73.56, label %for.inc100.56

if.then73.56:                                     ; preds = %if.end.56
  %add74.56 = add nsw i32 %var1.1.55, %rem13
  %call79.56 = tail call i32 @rand() #3
  %rem80.56 = srem i32 %call79.56, 5
  br label %for.body87.56

for.body87.56:                                    ; preds = %for.body87.56, %if.then73.56
  %indvars.iv.56 = phi i64 [ 0, %if.then73.56 ], [ %indvars.iv.next.56, %for.body87.56 ]
  %call88.56 = tail call i32 @rand() #3
  %rem89.56 = srem i32 %call88.56, 100
  %460 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.56 = add nsw i32 %rem89.56, %460
  %rem93.lhs.trunc.56 = trunc i64 %indvars.iv.56 to i8
  %rem93173.56 = urem i8 %rem93.lhs.trunc.56, 10
  %idxprom94.56 = zext i8 %rem93173.56 to i64
  %arrayidx95.56 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.56, i64 %idxprom94.56
  store i32 %add90.56, i32* %arrayidx95.56, align 4, !tbaa !12
  %indvars.iv.next.56 = add nuw nsw i64 %indvars.iv.56, 1
  %exitcond.56.not = icmp eq i64 %indvars.iv.next.56, 10
  br i1 %exitcond.56.not, label %for.inc100.loopexit.56, label %for.body87.56, !llvm.loop !13

for.inc100.loopexit.56:                           ; preds = %for.body87.56
  %mul75.56 = mul nsw i32 %add74.56, %rem15
  %add81.56 = add nsw i32 %rem80.56, %rem78.sext
  br label %for.inc100.56

for.inc100.56:                                    ; preds = %for.inc100.loopexit.56, %if.end.56
  %var4.1.56 = phi i32 [ %var4.1.55, %if.end.56 ], [ %mul75.56, %for.inc100.loopexit.56 ]
  %var5.1.56 = phi i32 [ %var5.1.55, %if.end.56 ], [ %rem9, %for.inc100.loopexit.56 ]
  %var1.1.56 = phi i32 [ %var1.1.55, %if.end.56 ], [ %add81.56, %for.inc100.loopexit.56 ]
  %461 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.57 = mul nsw i32 %461, 3
  %462 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.57 = sdiv i32 %462, -2
  %sub.57 = add i32 %div.neg.57, %mul.57
  store i32 %sub.57, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.57 = add nsw i32 %sub.57, %461
  %rem32.57 = srem i32 %add31.57, 100
  store i32 %rem32.57, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.57 = or i32 %rem32.57, 1
  %add33.57 = add nsw i32 %or.57, %rem17
  store i32 %add33.57, i32* @main.hot_data.1, align 4, !tbaa !10
  %463 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.57 = add nsw i32 %add33.57, %463
  store i32 %add42.57, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %464 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.57 = add i16 %464, 57
  %rem43171.57 = urem i16 %rem43.lhs.trunc.57, 100
  %cmp44.57 = icmp eq i16 %rem43171.57, 0
  br i1 %cmp44.57, label %if.then.57, label %if.end.57

if.then.57:                                       ; preds = %for.inc100.56
  %add48.57 = add nsw i32 %mid_vars.sroa.0.1.56, %rem9
  %mul49.57 = mul nsw i32 %local2.1.56, %add48.57
  %shr.57 = ashr i32 %mul49.57, 1
  %add51.57 = add nsw i32 %sub.57, %shr.57
  %call53.57 = tail call i32 @rand() #3
  %rem54.57 = srem i32 %call53.57, 5
  %add55.57 = add nsw i32 %rem54.57, %rem17
  %rem56.57 = srem i32 %add55.57, 100
  %465 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.57 = add nsw i32 %465, %shr.57
  %466 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.57 = add nsw i32 %add59.57, %466
  store i32 %add66.57, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %467 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %467, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.57, %for.inc100.56
  %mid_vars.sroa.0.1.57 = phi i32 [ %add51.57, %if.then.57 ], [ %mid_vars.sroa.0.1.56, %for.inc100.56 ]
  %mid_vars.sroa.10166.1.57 = phi i32 [ %mul49.57, %if.then.57 ], [ %mid_vars.sroa.10166.1.56, %for.inc100.56 ]
  %local2.1.57 = phi i32 [ %rem56.57, %if.then.57 ], [ %local2.1.56, %for.inc100.56 ]
  %rem70172.57 = urem i16 %rem43.lhs.trunc.57, 1000
  %cmp71.57 = icmp eq i16 %rem70172.57, 0
  br i1 %cmp71.57, label %if.then73.57, label %for.inc100.57

if.then73.57:                                     ; preds = %if.end.57
  %add74.57 = add nsw i32 %var1.1.56, %rem13
  %call79.57 = tail call i32 @rand() #3
  %rem80.57 = srem i32 %call79.57, 5
  br label %for.body87.57

for.body87.57:                                    ; preds = %for.body87.57, %if.then73.57
  %indvars.iv.57 = phi i64 [ 0, %if.then73.57 ], [ %indvars.iv.next.57, %for.body87.57 ]
  %call88.57 = tail call i32 @rand() #3
  %rem89.57 = srem i32 %call88.57, 100
  %468 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.57 = add nsw i32 %rem89.57, %468
  %rem93.lhs.trunc.57 = trunc i64 %indvars.iv.57 to i8
  %rem93173.57 = urem i8 %rem93.lhs.trunc.57, 10
  %idxprom94.57 = zext i8 %rem93173.57 to i64
  %arrayidx95.57 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.57, i64 %idxprom94.57
  store i32 %add90.57, i32* %arrayidx95.57, align 4, !tbaa !12
  %indvars.iv.next.57 = add nuw nsw i64 %indvars.iv.57, 1
  %exitcond.57.not = icmp eq i64 %indvars.iv.next.57, 10
  br i1 %exitcond.57.not, label %for.inc100.loopexit.57, label %for.body87.57, !llvm.loop !13

for.inc100.loopexit.57:                           ; preds = %for.body87.57
  %mul75.57 = mul nsw i32 %add74.57, %rem15
  %add81.57 = add nsw i32 %rem80.57, %rem78.sext
  br label %for.inc100.57

for.inc100.57:                                    ; preds = %for.inc100.loopexit.57, %if.end.57
  %var4.1.57 = phi i32 [ %var4.1.56, %if.end.57 ], [ %mul75.57, %for.inc100.loopexit.57 ]
  %var5.1.57 = phi i32 [ %var5.1.56, %if.end.57 ], [ %rem9, %for.inc100.loopexit.57 ]
  %var1.1.57 = phi i32 [ %var1.1.56, %if.end.57 ], [ %add81.57, %for.inc100.loopexit.57 ]
  %469 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.58 = mul nsw i32 %469, 3
  %470 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.58 = sdiv i32 %470, -2
  %sub.58 = add i32 %div.neg.58, %mul.58
  store i32 %sub.58, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.58 = add nsw i32 %sub.58, %469
  %rem32.58 = srem i32 %add31.58, 100
  store i32 %rem32.58, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.58 = or i32 %rem32.58, 1
  %add33.58 = add nsw i32 %or.58, %rem17
  store i32 %add33.58, i32* @main.hot_data.1, align 4, !tbaa !10
  %471 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.58 = add nsw i32 %add33.58, %471
  store i32 %add42.58, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %472 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.58 = add i16 %472, 58
  %rem43171.58 = urem i16 %rem43.lhs.trunc.58, 100
  %cmp44.58 = icmp eq i16 %rem43171.58, 0
  br i1 %cmp44.58, label %if.then.58, label %if.end.58

if.then.58:                                       ; preds = %for.inc100.57
  %add48.58 = add nsw i32 %mid_vars.sroa.0.1.57, %rem9
  %mul49.58 = mul nsw i32 %local2.1.57, %add48.58
  %shr.58 = ashr i32 %mul49.58, 1
  %add51.58 = add nsw i32 %sub.58, %shr.58
  %call53.58 = tail call i32 @rand() #3
  %rem54.58 = srem i32 %call53.58, 5
  %add55.58 = add nsw i32 %rem54.58, %rem17
  %rem56.58 = srem i32 %add55.58, 100
  %473 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.58 = add nsw i32 %473, %shr.58
  %474 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.58 = add nsw i32 %add59.58, %474
  store i32 %add66.58, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %475 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %475, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.58, %for.inc100.57
  %mid_vars.sroa.0.1.58 = phi i32 [ %add51.58, %if.then.58 ], [ %mid_vars.sroa.0.1.57, %for.inc100.57 ]
  %mid_vars.sroa.10166.1.58 = phi i32 [ %mul49.58, %if.then.58 ], [ %mid_vars.sroa.10166.1.57, %for.inc100.57 ]
  %local2.1.58 = phi i32 [ %rem56.58, %if.then.58 ], [ %local2.1.57, %for.inc100.57 ]
  %rem70172.58 = urem i16 %rem43.lhs.trunc.58, 1000
  %cmp71.58 = icmp eq i16 %rem70172.58, 0
  br i1 %cmp71.58, label %if.then73.58, label %for.inc100.58

if.then73.58:                                     ; preds = %if.end.58
  %add74.58 = add nsw i32 %var1.1.57, %rem13
  %call79.58 = tail call i32 @rand() #3
  %rem80.58 = srem i32 %call79.58, 5
  br label %for.body87.58

for.body87.58:                                    ; preds = %for.body87.58, %if.then73.58
  %indvars.iv.58 = phi i64 [ 0, %if.then73.58 ], [ %indvars.iv.next.58, %for.body87.58 ]
  %call88.58 = tail call i32 @rand() #3
  %rem89.58 = srem i32 %call88.58, 100
  %476 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.58 = add nsw i32 %rem89.58, %476
  %rem93.lhs.trunc.58 = trunc i64 %indvars.iv.58 to i8
  %rem93173.58 = urem i8 %rem93.lhs.trunc.58, 10
  %idxprom94.58 = zext i8 %rem93173.58 to i64
  %arrayidx95.58 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.58, i64 %idxprom94.58
  store i32 %add90.58, i32* %arrayidx95.58, align 4, !tbaa !12
  %indvars.iv.next.58 = add nuw nsw i64 %indvars.iv.58, 1
  %exitcond.58.not = icmp eq i64 %indvars.iv.next.58, 10
  br i1 %exitcond.58.not, label %for.inc100.loopexit.58, label %for.body87.58, !llvm.loop !13

for.inc100.loopexit.58:                           ; preds = %for.body87.58
  %mul75.58 = mul nsw i32 %add74.58, %rem15
  %add81.58 = add nsw i32 %rem80.58, %rem78.sext
  br label %for.inc100.58

for.inc100.58:                                    ; preds = %for.inc100.loopexit.58, %if.end.58
  %var4.1.58 = phi i32 [ %var4.1.57, %if.end.58 ], [ %mul75.58, %for.inc100.loopexit.58 ]
  %var5.1.58 = phi i32 [ %var5.1.57, %if.end.58 ], [ %rem9, %for.inc100.loopexit.58 ]
  %var1.1.58 = phi i32 [ %var1.1.57, %if.end.58 ], [ %add81.58, %for.inc100.loopexit.58 ]
  %477 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.59 = mul nsw i32 %477, 3
  %478 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.59 = sdiv i32 %478, -2
  %sub.59 = add i32 %div.neg.59, %mul.59
  store i32 %sub.59, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.59 = add nsw i32 %sub.59, %477
  %rem32.59 = srem i32 %add31.59, 100
  store i32 %rem32.59, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.59 = or i32 %rem32.59, 1
  %add33.59 = add nsw i32 %or.59, %rem17
  store i32 %add33.59, i32* @main.hot_data.1, align 4, !tbaa !10
  %479 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.59 = add nsw i32 %add33.59, %479
  store i32 %add42.59, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %480 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.59 = add i16 %480, 59
  %rem43171.59 = urem i16 %rem43.lhs.trunc.59, 100
  %cmp44.59 = icmp eq i16 %rem43171.59, 0
  br i1 %cmp44.59, label %if.then.59, label %if.end.59

if.then.59:                                       ; preds = %for.inc100.58
  %add48.59 = add nsw i32 %mid_vars.sroa.0.1.58, %rem9
  %mul49.59 = mul nsw i32 %local2.1.58, %add48.59
  %shr.59 = ashr i32 %mul49.59, 1
  %add51.59 = add nsw i32 %sub.59, %shr.59
  %call53.59 = tail call i32 @rand() #3
  %rem54.59 = srem i32 %call53.59, 5
  %add55.59 = add nsw i32 %rem54.59, %rem17
  %rem56.59 = srem i32 %add55.59, 100
  %481 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.59 = add nsw i32 %481, %shr.59
  %482 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.59 = add nsw i32 %add59.59, %482
  store i32 %add66.59, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %483 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %483, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.59, %for.inc100.58
  %mid_vars.sroa.0.1.59 = phi i32 [ %add51.59, %if.then.59 ], [ %mid_vars.sroa.0.1.58, %for.inc100.58 ]
  %mid_vars.sroa.10166.1.59 = phi i32 [ %mul49.59, %if.then.59 ], [ %mid_vars.sroa.10166.1.58, %for.inc100.58 ]
  %local2.1.59 = phi i32 [ %rem56.59, %if.then.59 ], [ %local2.1.58, %for.inc100.58 ]
  %rem70172.59 = urem i16 %rem43.lhs.trunc.59, 1000
  %cmp71.59 = icmp eq i16 %rem70172.59, 0
  br i1 %cmp71.59, label %if.then73.59, label %for.inc100.59

if.then73.59:                                     ; preds = %if.end.59
  %add74.59 = add nsw i32 %var1.1.58, %rem13
  %call79.59 = tail call i32 @rand() #3
  %rem80.59 = srem i32 %call79.59, 5
  br label %for.body87.59

for.body87.59:                                    ; preds = %for.body87.59, %if.then73.59
  %indvars.iv.59 = phi i64 [ 0, %if.then73.59 ], [ %indvars.iv.next.59, %for.body87.59 ]
  %call88.59 = tail call i32 @rand() #3
  %rem89.59 = srem i32 %call88.59, 100
  %484 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.59 = add nsw i32 %rem89.59, %484
  %rem93.lhs.trunc.59 = trunc i64 %indvars.iv.59 to i8
  %rem93173.59 = urem i8 %rem93.lhs.trunc.59, 10
  %idxprom94.59 = zext i8 %rem93173.59 to i64
  %arrayidx95.59 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.59, i64 %idxprom94.59
  store i32 %add90.59, i32* %arrayidx95.59, align 4, !tbaa !12
  %indvars.iv.next.59 = add nuw nsw i64 %indvars.iv.59, 1
  %exitcond.59.not = icmp eq i64 %indvars.iv.next.59, 10
  br i1 %exitcond.59.not, label %for.inc100.loopexit.59, label %for.body87.59, !llvm.loop !13

for.inc100.loopexit.59:                           ; preds = %for.body87.59
  %mul75.59 = mul nsw i32 %add74.59, %rem15
  %add81.59 = add nsw i32 %rem80.59, %rem78.sext
  br label %for.inc100.59

for.inc100.59:                                    ; preds = %for.inc100.loopexit.59, %if.end.59
  %var4.1.59 = phi i32 [ %var4.1.58, %if.end.59 ], [ %mul75.59, %for.inc100.loopexit.59 ]
  %var5.1.59 = phi i32 [ %var5.1.58, %if.end.59 ], [ %rem9, %for.inc100.loopexit.59 ]
  %var1.1.59 = phi i32 [ %var1.1.58, %if.end.59 ], [ %add81.59, %for.inc100.loopexit.59 ]
  %485 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.60 = mul nsw i32 %485, 3
  %486 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.60 = sdiv i32 %486, -2
  %sub.60 = add i32 %div.neg.60, %mul.60
  store i32 %sub.60, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.60 = add nsw i32 %sub.60, %485
  %rem32.60 = srem i32 %add31.60, 100
  store i32 %rem32.60, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.60 = or i32 %rem32.60, 1
  %add33.60 = add nsw i32 %or.60, %rem17
  store i32 %add33.60, i32* @main.hot_data.1, align 4, !tbaa !10
  %487 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.60 = add nsw i32 %add33.60, %487
  store i32 %add42.60, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %488 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.60 = add i16 %488, 60
  %rem43171.60 = urem i16 %rem43.lhs.trunc.60, 100
  %cmp44.60 = icmp eq i16 %rem43171.60, 0
  br i1 %cmp44.60, label %if.then.60, label %if.end.60

if.then.60:                                       ; preds = %for.inc100.59
  %add48.60 = add nsw i32 %mid_vars.sroa.0.1.59, %rem9
  %mul49.60 = mul nsw i32 %local2.1.59, %add48.60
  %shr.60 = ashr i32 %mul49.60, 1
  %add51.60 = add nsw i32 %sub.60, %shr.60
  %call53.60 = tail call i32 @rand() #3
  %rem54.60 = srem i32 %call53.60, 5
  %add55.60 = add nsw i32 %rem54.60, %rem17
  %rem56.60 = srem i32 %add55.60, 100
  %489 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.60 = add nsw i32 %489, %shr.60
  %490 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.60 = add nsw i32 %add59.60, %490
  store i32 %add66.60, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.60, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.60, %for.inc100.59
  %mid_vars.sroa.0.1.60 = phi i32 [ %add51.60, %if.then.60 ], [ %mid_vars.sroa.0.1.59, %for.inc100.59 ]
  %mid_vars.sroa.10166.1.60 = phi i32 [ %mul49.60, %if.then.60 ], [ %mid_vars.sroa.10166.1.59, %for.inc100.59 ]
  %local2.1.60 = phi i32 [ %rem56.60, %if.then.60 ], [ %local2.1.59, %for.inc100.59 ]
  %rem70172.60 = urem i16 %rem43.lhs.trunc.60, 1000
  %cmp71.60 = icmp eq i16 %rem70172.60, 0
  br i1 %cmp71.60, label %if.then73.60, label %for.inc100.60

if.then73.60:                                     ; preds = %if.end.60
  %add74.60 = add nsw i32 %var1.1.59, %rem13
  %call79.60 = tail call i32 @rand() #3
  %rem80.60 = srem i32 %call79.60, 5
  br label %for.body87.60

for.body87.60:                                    ; preds = %for.body87.60, %if.then73.60
  %indvars.iv.60 = phi i64 [ 0, %if.then73.60 ], [ %indvars.iv.next.60, %for.body87.60 ]
  %call88.60 = tail call i32 @rand() #3
  %rem89.60 = srem i32 %call88.60, 100
  %491 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.60 = add nsw i32 %rem89.60, %491
  %rem93.lhs.trunc.60 = trunc i64 %indvars.iv.60 to i8
  %rem93173.60 = urem i8 %rem93.lhs.trunc.60, 10
  %idxprom94.60 = zext i8 %rem93173.60 to i64
  %arrayidx95.60 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.60, i64 %idxprom94.60
  store i32 %add90.60, i32* %arrayidx95.60, align 4, !tbaa !12
  %indvars.iv.next.60 = add nuw nsw i64 %indvars.iv.60, 1
  %exitcond.60.not = icmp eq i64 %indvars.iv.next.60, 10
  br i1 %exitcond.60.not, label %for.inc100.loopexit.60, label %for.body87.60, !llvm.loop !13

for.inc100.loopexit.60:                           ; preds = %for.body87.60
  %mul75.60 = mul nsw i32 %add74.60, %rem15
  %add81.60 = add nsw i32 %rem80.60, %rem78.sext
  br label %for.inc100.60

for.inc100.60:                                    ; preds = %for.inc100.loopexit.60, %if.end.60
  %var4.1.60 = phi i32 [ %var4.1.59, %if.end.60 ], [ %mul75.60, %for.inc100.loopexit.60 ]
  %var5.1.60 = phi i32 [ %var5.1.59, %if.end.60 ], [ %rem9, %for.inc100.loopexit.60 ]
  %var1.1.60 = phi i32 [ %var1.1.59, %if.end.60 ], [ %add81.60, %for.inc100.loopexit.60 ]
  %492 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.61 = mul nsw i32 %492, 3
  %493 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.61 = sdiv i32 %493, -2
  %sub.61 = add i32 %div.neg.61, %mul.61
  store i32 %sub.61, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.61 = add nsw i32 %sub.61, %492
  %rem32.61 = srem i32 %add31.61, 100
  store i32 %rem32.61, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.61 = or i32 %rem32.61, 1
  %add33.61 = add nsw i32 %or.61, %rem17
  store i32 %add33.61, i32* @main.hot_data.1, align 4, !tbaa !10
  %494 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.61 = add nsw i32 %add33.61, %494
  store i32 %add42.61, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %495 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.61 = add i16 %495, 61
  %rem43171.61 = urem i16 %rem43.lhs.trunc.61, 100
  %cmp44.61 = icmp eq i16 %rem43171.61, 0
  br i1 %cmp44.61, label %if.then.61, label %if.end.61

if.then.61:                                       ; preds = %for.inc100.60
  %add48.61 = add nsw i32 %mid_vars.sroa.0.1.60, %rem9
  %mul49.61 = mul nsw i32 %local2.1.60, %add48.61
  %shr.61 = ashr i32 %mul49.61, 1
  %add51.61 = add nsw i32 %sub.61, %shr.61
  %call53.61 = tail call i32 @rand() #3
  %rem54.61 = srem i32 %call53.61, 5
  %add55.61 = add nsw i32 %rem54.61, %rem17
  %rem56.61 = srem i32 %add55.61, 100
  %496 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.61 = add nsw i32 %496, %shr.61
  %497 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.61 = add nsw i32 %add59.61, %497
  store i32 %add66.61, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %498 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %498, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.61, %for.inc100.60
  %mid_vars.sroa.0.1.61 = phi i32 [ %add51.61, %if.then.61 ], [ %mid_vars.sroa.0.1.60, %for.inc100.60 ]
  %mid_vars.sroa.10166.1.61 = phi i32 [ %mul49.61, %if.then.61 ], [ %mid_vars.sroa.10166.1.60, %for.inc100.60 ]
  %local2.1.61 = phi i32 [ %rem56.61, %if.then.61 ], [ %local2.1.60, %for.inc100.60 ]
  %rem70172.61 = urem i16 %rem43.lhs.trunc.61, 1000
  %cmp71.61 = icmp eq i16 %rem70172.61, 0
  br i1 %cmp71.61, label %if.then73.61, label %for.inc100.61

if.then73.61:                                     ; preds = %if.end.61
  %add74.61 = add nsw i32 %var1.1.60, %rem13
  %call79.61 = tail call i32 @rand() #3
  %rem80.61 = srem i32 %call79.61, 5
  br label %for.body87.61

for.body87.61:                                    ; preds = %for.body87.61, %if.then73.61
  %indvars.iv.61 = phi i64 [ 0, %if.then73.61 ], [ %indvars.iv.next.61, %for.body87.61 ]
  %call88.61 = tail call i32 @rand() #3
  %rem89.61 = srem i32 %call88.61, 100
  %499 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.61 = add nsw i32 %rem89.61, %499
  %rem93.lhs.trunc.61 = trunc i64 %indvars.iv.61 to i8
  %rem93173.61 = urem i8 %rem93.lhs.trunc.61, 10
  %idxprom94.61 = zext i8 %rem93173.61 to i64
  %arrayidx95.61 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.61, i64 %idxprom94.61
  store i32 %add90.61, i32* %arrayidx95.61, align 4, !tbaa !12
  %indvars.iv.next.61 = add nuw nsw i64 %indvars.iv.61, 1
  %exitcond.61.not = icmp eq i64 %indvars.iv.next.61, 10
  br i1 %exitcond.61.not, label %for.inc100.loopexit.61, label %for.body87.61, !llvm.loop !13

for.inc100.loopexit.61:                           ; preds = %for.body87.61
  %mul75.61 = mul nsw i32 %add74.61, %rem15
  %add81.61 = add nsw i32 %rem80.61, %rem78.sext
  br label %for.inc100.61

for.inc100.61:                                    ; preds = %for.inc100.loopexit.61, %if.end.61
  %var4.1.61 = phi i32 [ %var4.1.60, %if.end.61 ], [ %mul75.61, %for.inc100.loopexit.61 ]
  %var5.1.61 = phi i32 [ %var5.1.60, %if.end.61 ], [ %rem9, %for.inc100.loopexit.61 ]
  %var1.1.61 = phi i32 [ %var1.1.60, %if.end.61 ], [ %add81.61, %for.inc100.loopexit.61 ]
  %500 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.62 = mul nsw i32 %500, 3
  %501 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.62 = sdiv i32 %501, -2
  %sub.62 = add i32 %div.neg.62, %mul.62
  store i32 %sub.62, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.62 = add nsw i32 %sub.62, %500
  %rem32.62 = srem i32 %add31.62, 100
  store i32 %rem32.62, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.62 = or i32 %rem32.62, 1
  %add33.62 = add nsw i32 %or.62, %rem17
  store i32 %add33.62, i32* @main.hot_data.1, align 4, !tbaa !10
  %502 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.62 = add nsw i32 %add33.62, %502
  store i32 %add42.62, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %503 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.62 = add i16 %503, 62
  %rem43171.62 = urem i16 %rem43.lhs.trunc.62, 100
  %cmp44.62 = icmp eq i16 %rem43171.62, 0
  br i1 %cmp44.62, label %if.then.62, label %if.end.62

if.then.62:                                       ; preds = %for.inc100.61
  %add48.62 = add nsw i32 %mid_vars.sroa.0.1.61, %rem9
  %mul49.62 = mul nsw i32 %local2.1.61, %add48.62
  %shr.62 = ashr i32 %mul49.62, 1
  %add51.62 = add nsw i32 %sub.62, %shr.62
  %call53.62 = tail call i32 @rand() #3
  %rem54.62 = srem i32 %call53.62, 5
  %add55.62 = add nsw i32 %rem54.62, %rem17
  %rem56.62 = srem i32 %add55.62, 100
  %504 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.62 = add nsw i32 %504, %shr.62
  %505 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.62 = add nsw i32 %add59.62, %505
  store i32 %add66.62, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %506 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %506, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.62, %for.inc100.61
  %mid_vars.sroa.0.1.62 = phi i32 [ %add51.62, %if.then.62 ], [ %mid_vars.sroa.0.1.61, %for.inc100.61 ]
  %mid_vars.sroa.10166.1.62 = phi i32 [ %mul49.62, %if.then.62 ], [ %mid_vars.sroa.10166.1.61, %for.inc100.61 ]
  %local2.1.62 = phi i32 [ %rem56.62, %if.then.62 ], [ %local2.1.61, %for.inc100.61 ]
  %rem70172.62 = urem i16 %rem43.lhs.trunc.62, 1000
  %cmp71.62 = icmp eq i16 %rem70172.62, 0
  br i1 %cmp71.62, label %if.then73.62, label %for.inc100.62

if.then73.62:                                     ; preds = %if.end.62
  %add74.62 = add nsw i32 %var1.1.61, %rem13
  %call79.62 = tail call i32 @rand() #3
  %rem80.62 = srem i32 %call79.62, 5
  br label %for.body87.62

for.body87.62:                                    ; preds = %for.body87.62, %if.then73.62
  %indvars.iv.62 = phi i64 [ 0, %if.then73.62 ], [ %indvars.iv.next.62, %for.body87.62 ]
  %call88.62 = tail call i32 @rand() #3
  %rem89.62 = srem i32 %call88.62, 100
  %507 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.62 = add nsw i32 %rem89.62, %507
  %rem93.lhs.trunc.62 = trunc i64 %indvars.iv.62 to i8
  %rem93173.62 = urem i8 %rem93.lhs.trunc.62, 10
  %idxprom94.62 = zext i8 %rem93173.62 to i64
  %arrayidx95.62 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.62, i64 %idxprom94.62
  store i32 %add90.62, i32* %arrayidx95.62, align 4, !tbaa !12
  %indvars.iv.next.62 = add nuw nsw i64 %indvars.iv.62, 1
  %exitcond.62.not = icmp eq i64 %indvars.iv.next.62, 10
  br i1 %exitcond.62.not, label %for.inc100.loopexit.62, label %for.body87.62, !llvm.loop !13

for.inc100.loopexit.62:                           ; preds = %for.body87.62
  %mul75.62 = mul nsw i32 %add74.62, %rem15
  %add81.62 = add nsw i32 %rem80.62, %rem78.sext
  br label %for.inc100.62

for.inc100.62:                                    ; preds = %for.inc100.loopexit.62, %if.end.62
  %var4.1.62 = phi i32 [ %var4.1.61, %if.end.62 ], [ %mul75.62, %for.inc100.loopexit.62 ]
  %var5.1.62 = phi i32 [ %var5.1.61, %if.end.62 ], [ %rem9, %for.inc100.loopexit.62 ]
  %var1.1.62 = phi i32 [ %var1.1.61, %if.end.62 ], [ %add81.62, %for.inc100.loopexit.62 ]
  %508 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.63 = mul nsw i32 %508, 3
  %509 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.63 = sdiv i32 %509, -2
  %sub.63 = add i32 %div.neg.63, %mul.63
  store i32 %sub.63, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.63 = add nsw i32 %sub.63, %508
  %rem32.63 = srem i32 %add31.63, 100
  store i32 %rem32.63, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.63 = or i32 %rem32.63, 1
  %add33.63 = add nsw i32 %or.63, %rem17
  store i32 %add33.63, i32* @main.hot_data.1, align 4, !tbaa !10
  %510 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.63 = add nsw i32 %add33.63, %510
  store i32 %add42.63, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %511 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.63 = add i16 %511, 63
  %rem43171.63 = urem i16 %rem43.lhs.trunc.63, 100
  %cmp44.63 = icmp eq i16 %rem43171.63, 0
  br i1 %cmp44.63, label %if.then.63, label %if.end.63

if.then.63:                                       ; preds = %for.inc100.62
  %add48.63 = add nsw i32 %mid_vars.sroa.0.1.62, %rem9
  %mul49.63 = mul nsw i32 %local2.1.62, %add48.63
  %shr.63 = ashr i32 %mul49.63, 1
  %add51.63 = add nsw i32 %sub.63, %shr.63
  %call53.63 = tail call i32 @rand() #3
  %rem54.63 = srem i32 %call53.63, 5
  %add55.63 = add nsw i32 %rem54.63, %rem17
  %rem56.63 = srem i32 %add55.63, 100
  %512 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.63 = add nsw i32 %512, %shr.63
  %513 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.63 = add nsw i32 %add59.63, %513
  store i32 %add66.63, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %514 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %514, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.63, %for.inc100.62
  %mid_vars.sroa.0.1.63 = phi i32 [ %add51.63, %if.then.63 ], [ %mid_vars.sroa.0.1.62, %for.inc100.62 ]
  %mid_vars.sroa.10166.1.63 = phi i32 [ %mul49.63, %if.then.63 ], [ %mid_vars.sroa.10166.1.62, %for.inc100.62 ]
  %local2.1.63 = phi i32 [ %rem56.63, %if.then.63 ], [ %local2.1.62, %for.inc100.62 ]
  %rem70172.63 = urem i16 %rem43.lhs.trunc.63, 1000
  %cmp71.63 = icmp eq i16 %rem70172.63, 0
  br i1 %cmp71.63, label %if.then73.63, label %for.inc100.63

if.then73.63:                                     ; preds = %if.end.63
  %add74.63 = add nsw i32 %var1.1.62, %rem13
  %call79.63 = tail call i32 @rand() #3
  %rem80.63 = srem i32 %call79.63, 5
  br label %for.body87.63

for.body87.63:                                    ; preds = %for.body87.63, %if.then73.63
  %indvars.iv.63 = phi i64 [ 0, %if.then73.63 ], [ %indvars.iv.next.63, %for.body87.63 ]
  %call88.63 = tail call i32 @rand() #3
  %rem89.63 = srem i32 %call88.63, 100
  %515 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.63 = add nsw i32 %rem89.63, %515
  %rem93.lhs.trunc.63 = trunc i64 %indvars.iv.63 to i8
  %rem93173.63 = urem i8 %rem93.lhs.trunc.63, 10
  %idxprom94.63 = zext i8 %rem93173.63 to i64
  %arrayidx95.63 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.63, i64 %idxprom94.63
  store i32 %add90.63, i32* %arrayidx95.63, align 4, !tbaa !12
  %indvars.iv.next.63 = add nuw nsw i64 %indvars.iv.63, 1
  %exitcond.63.not = icmp eq i64 %indvars.iv.next.63, 10
  br i1 %exitcond.63.not, label %for.inc100.loopexit.63, label %for.body87.63, !llvm.loop !13

for.inc100.loopexit.63:                           ; preds = %for.body87.63
  %mul75.63 = mul nsw i32 %add74.63, %rem15
  %add81.63 = add nsw i32 %rem80.63, %rem78.sext
  br label %for.inc100.63

for.inc100.63:                                    ; preds = %for.inc100.loopexit.63, %if.end.63
  %var4.1.63 = phi i32 [ %var4.1.62, %if.end.63 ], [ %mul75.63, %for.inc100.loopexit.63 ]
  %var5.1.63 = phi i32 [ %var5.1.62, %if.end.63 ], [ %rem9, %for.inc100.loopexit.63 ]
  %var1.1.63 = phi i32 [ %var1.1.62, %if.end.63 ], [ %add81.63, %for.inc100.loopexit.63 ]
  %516 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.64 = mul nsw i32 %516, 3
  %517 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.64 = sdiv i32 %517, -2
  %sub.64 = add i32 %div.neg.64, %mul.64
  store i32 %sub.64, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.64 = add nsw i32 %sub.64, %516
  %rem32.64 = srem i32 %add31.64, 100
  store i32 %rem32.64, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.64 = or i32 %rem32.64, 1
  %add33.64 = add nsw i32 %or.64, %rem17
  store i32 %add33.64, i32* @main.hot_data.1, align 4, !tbaa !10
  %518 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.64 = add nsw i32 %add33.64, %518
  store i32 %add42.64, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %519 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.64 = add i16 %519, 64
  %rem43171.64 = urem i16 %rem43.lhs.trunc.64, 100
  %cmp44.64 = icmp eq i16 %rem43171.64, 0
  br i1 %cmp44.64, label %if.then.64, label %if.end.64

if.then.64:                                       ; preds = %for.inc100.63
  %add48.64 = add nsw i32 %mid_vars.sroa.0.1.63, %rem9
  %mul49.64 = mul nsw i32 %local2.1.63, %add48.64
  %shr.64 = ashr i32 %mul49.64, 1
  %add51.64 = add nsw i32 %sub.64, %shr.64
  %call53.64 = tail call i32 @rand() #3
  %rem54.64 = srem i32 %call53.64, 5
  %add55.64 = add nsw i32 %rem54.64, %rem17
  %rem56.64 = srem i32 %add55.64, 100
  %520 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.64 = add nsw i32 %520, %shr.64
  %521 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.64 = add nsw i32 %add59.64, %521
  store i32 %add66.64, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %522 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %522, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.64, %for.inc100.63
  %mid_vars.sroa.0.1.64 = phi i32 [ %add51.64, %if.then.64 ], [ %mid_vars.sroa.0.1.63, %for.inc100.63 ]
  %mid_vars.sroa.10166.1.64 = phi i32 [ %mul49.64, %if.then.64 ], [ %mid_vars.sroa.10166.1.63, %for.inc100.63 ]
  %local2.1.64 = phi i32 [ %rem56.64, %if.then.64 ], [ %local2.1.63, %for.inc100.63 ]
  %rem70172.64 = urem i16 %rem43.lhs.trunc.64, 1000
  %cmp71.64 = icmp eq i16 %rem70172.64, 0
  br i1 %cmp71.64, label %if.then73.64, label %for.inc100.64

if.then73.64:                                     ; preds = %if.end.64
  %add74.64 = add nsw i32 %var1.1.63, %rem13
  %call79.64 = tail call i32 @rand() #3
  %rem80.64 = srem i32 %call79.64, 5
  br label %for.body87.64

for.body87.64:                                    ; preds = %for.body87.64, %if.then73.64
  %indvars.iv.64 = phi i64 [ 0, %if.then73.64 ], [ %indvars.iv.next.64, %for.body87.64 ]
  %call88.64 = tail call i32 @rand() #3
  %rem89.64 = srem i32 %call88.64, 100
  %523 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.64 = add nsw i32 %rem89.64, %523
  %rem93.lhs.trunc.64 = trunc i64 %indvars.iv.64 to i8
  %rem93173.64 = urem i8 %rem93.lhs.trunc.64, 10
  %idxprom94.64 = zext i8 %rem93173.64 to i64
  %arrayidx95.64 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.64, i64 %idxprom94.64
  store i32 %add90.64, i32* %arrayidx95.64, align 4, !tbaa !12
  %indvars.iv.next.64 = add nuw nsw i64 %indvars.iv.64, 1
  %exitcond.64.not = icmp eq i64 %indvars.iv.next.64, 10
  br i1 %exitcond.64.not, label %for.inc100.loopexit.64, label %for.body87.64, !llvm.loop !13

for.inc100.loopexit.64:                           ; preds = %for.body87.64
  %mul75.64 = mul nsw i32 %add74.64, %rem15
  %add81.64 = add nsw i32 %rem80.64, %rem78.sext
  br label %for.inc100.64

for.inc100.64:                                    ; preds = %for.inc100.loopexit.64, %if.end.64
  %var4.1.64 = phi i32 [ %var4.1.63, %if.end.64 ], [ %mul75.64, %for.inc100.loopexit.64 ]
  %var5.1.64 = phi i32 [ %var5.1.63, %if.end.64 ], [ %rem9, %for.inc100.loopexit.64 ]
  %var1.1.64 = phi i32 [ %var1.1.63, %if.end.64 ], [ %add81.64, %for.inc100.loopexit.64 ]
  %524 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.65 = mul nsw i32 %524, 3
  %525 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.65 = sdiv i32 %525, -2
  %sub.65 = add i32 %div.neg.65, %mul.65
  store i32 %sub.65, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.65 = add nsw i32 %sub.65, %524
  %rem32.65 = srem i32 %add31.65, 100
  store i32 %rem32.65, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.65 = or i32 %rem32.65, 1
  %add33.65 = add nsw i32 %or.65, %rem17
  store i32 %add33.65, i32* @main.hot_data.1, align 4, !tbaa !10
  %526 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.65 = add nsw i32 %add33.65, %526
  store i32 %add42.65, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %527 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.65 = add i16 %527, 65
  %rem43171.65 = urem i16 %rem43.lhs.trunc.65, 100
  %cmp44.65 = icmp eq i16 %rem43171.65, 0
  br i1 %cmp44.65, label %if.then.65, label %if.end.65

if.then.65:                                       ; preds = %for.inc100.64
  %add48.65 = add nsw i32 %mid_vars.sroa.0.1.64, %rem9
  %mul49.65 = mul nsw i32 %local2.1.64, %add48.65
  %shr.65 = ashr i32 %mul49.65, 1
  %add51.65 = add nsw i32 %sub.65, %shr.65
  %call53.65 = tail call i32 @rand() #3
  %rem54.65 = srem i32 %call53.65, 5
  %add55.65 = add nsw i32 %rem54.65, %rem17
  %rem56.65 = srem i32 %add55.65, 100
  %528 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.65 = add nsw i32 %528, %shr.65
  %529 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.65 = add nsw i32 %add59.65, %529
  store i32 %add66.65, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %530 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %530, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.65, %for.inc100.64
  %mid_vars.sroa.0.1.65 = phi i32 [ %add51.65, %if.then.65 ], [ %mid_vars.sroa.0.1.64, %for.inc100.64 ]
  %mid_vars.sroa.10166.1.65 = phi i32 [ %mul49.65, %if.then.65 ], [ %mid_vars.sroa.10166.1.64, %for.inc100.64 ]
  %local2.1.65 = phi i32 [ %rem56.65, %if.then.65 ], [ %local2.1.64, %for.inc100.64 ]
  %rem70172.65 = urem i16 %rem43.lhs.trunc.65, 1000
  %cmp71.65 = icmp eq i16 %rem70172.65, 0
  br i1 %cmp71.65, label %if.then73.65, label %for.inc100.65

if.then73.65:                                     ; preds = %if.end.65
  %add74.65 = add nsw i32 %var1.1.64, %rem13
  %call79.65 = tail call i32 @rand() #3
  %rem80.65 = srem i32 %call79.65, 5
  br label %for.body87.65

for.body87.65:                                    ; preds = %for.body87.65, %if.then73.65
  %indvars.iv.65 = phi i64 [ 0, %if.then73.65 ], [ %indvars.iv.next.65, %for.body87.65 ]
  %call88.65 = tail call i32 @rand() #3
  %rem89.65 = srem i32 %call88.65, 100
  %531 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.65 = add nsw i32 %rem89.65, %531
  %rem93.lhs.trunc.65 = trunc i64 %indvars.iv.65 to i8
  %rem93173.65 = urem i8 %rem93.lhs.trunc.65, 10
  %idxprom94.65 = zext i8 %rem93173.65 to i64
  %arrayidx95.65 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.65, i64 %idxprom94.65
  store i32 %add90.65, i32* %arrayidx95.65, align 4, !tbaa !12
  %indvars.iv.next.65 = add nuw nsw i64 %indvars.iv.65, 1
  %exitcond.65.not = icmp eq i64 %indvars.iv.next.65, 10
  br i1 %exitcond.65.not, label %for.inc100.loopexit.65, label %for.body87.65, !llvm.loop !13

for.inc100.loopexit.65:                           ; preds = %for.body87.65
  %mul75.65 = mul nsw i32 %add74.65, %rem15
  %add81.65 = add nsw i32 %rem80.65, %rem78.sext
  br label %for.inc100.65

for.inc100.65:                                    ; preds = %for.inc100.loopexit.65, %if.end.65
  %var4.1.65 = phi i32 [ %var4.1.64, %if.end.65 ], [ %mul75.65, %for.inc100.loopexit.65 ]
  %var5.1.65 = phi i32 [ %var5.1.64, %if.end.65 ], [ %rem9, %for.inc100.loopexit.65 ]
  %var1.1.65 = phi i32 [ %var1.1.64, %if.end.65 ], [ %add81.65, %for.inc100.loopexit.65 ]
  %532 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.66 = mul nsw i32 %532, 3
  %533 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.66 = sdiv i32 %533, -2
  %sub.66 = add i32 %div.neg.66, %mul.66
  store i32 %sub.66, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.66 = add nsw i32 %sub.66, %532
  %rem32.66 = srem i32 %add31.66, 100
  store i32 %rem32.66, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.66 = or i32 %rem32.66, 1
  %add33.66 = add nsw i32 %or.66, %rem17
  store i32 %add33.66, i32* @main.hot_data.1, align 4, !tbaa !10
  %534 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.66 = add nsw i32 %add33.66, %534
  store i32 %add42.66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %535 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.66 = add i16 %535, 66
  %rem43171.66 = urem i16 %rem43.lhs.trunc.66, 100
  %cmp44.66 = icmp eq i16 %rem43171.66, 0
  br i1 %cmp44.66, label %if.then.66, label %if.end.66

if.then.66:                                       ; preds = %for.inc100.65
  %add48.66 = add nsw i32 %mid_vars.sroa.0.1.65, %rem9
  %mul49.66 = mul nsw i32 %local2.1.65, %add48.66
  %shr.66 = ashr i32 %mul49.66, 1
  %add51.66 = add nsw i32 %sub.66, %shr.66
  %call53.66 = tail call i32 @rand() #3
  %rem54.66 = srem i32 %call53.66, 5
  %add55.66 = add nsw i32 %rem54.66, %rem17
  %rem56.66 = srem i32 %add55.66, 100
  %536 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.66 = add nsw i32 %536, %shr.66
  %537 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.66 = add nsw i32 %add59.66, %537
  store i32 %add66.66, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %538 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %538, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.66, %for.inc100.65
  %mid_vars.sroa.0.1.66 = phi i32 [ %add51.66, %if.then.66 ], [ %mid_vars.sroa.0.1.65, %for.inc100.65 ]
  %mid_vars.sroa.10166.1.66 = phi i32 [ %mul49.66, %if.then.66 ], [ %mid_vars.sroa.10166.1.65, %for.inc100.65 ]
  %local2.1.66 = phi i32 [ %rem56.66, %if.then.66 ], [ %local2.1.65, %for.inc100.65 ]
  %rem70172.66 = urem i16 %rem43.lhs.trunc.66, 1000
  %cmp71.66 = icmp eq i16 %rem70172.66, 0
  br i1 %cmp71.66, label %if.then73.66, label %for.inc100.66

if.then73.66:                                     ; preds = %if.end.66
  %add74.66 = add nsw i32 %var1.1.65, %rem13
  %call79.66 = tail call i32 @rand() #3
  %rem80.66 = srem i32 %call79.66, 5
  br label %for.body87.66

for.body87.66:                                    ; preds = %for.body87.66, %if.then73.66
  %indvars.iv.66 = phi i64 [ 0, %if.then73.66 ], [ %indvars.iv.next.66, %for.body87.66 ]
  %call88.66 = tail call i32 @rand() #3
  %rem89.66 = srem i32 %call88.66, 100
  %539 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.66 = add nsw i32 %rem89.66, %539
  %rem93.lhs.trunc.66 = trunc i64 %indvars.iv.66 to i8
  %rem93173.66 = urem i8 %rem93.lhs.trunc.66, 10
  %idxprom94.66 = zext i8 %rem93173.66 to i64
  %arrayidx95.66 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.66, i64 %idxprom94.66
  store i32 %add90.66, i32* %arrayidx95.66, align 4, !tbaa !12
  %indvars.iv.next.66 = add nuw nsw i64 %indvars.iv.66, 1
  %exitcond.66.not = icmp eq i64 %indvars.iv.next.66, 10
  br i1 %exitcond.66.not, label %for.inc100.loopexit.66, label %for.body87.66, !llvm.loop !13

for.inc100.loopexit.66:                           ; preds = %for.body87.66
  %mul75.66 = mul nsw i32 %add74.66, %rem15
  %add81.66 = add nsw i32 %rem80.66, %rem78.sext
  br label %for.inc100.66

for.inc100.66:                                    ; preds = %for.inc100.loopexit.66, %if.end.66
  %var4.1.66 = phi i32 [ %var4.1.65, %if.end.66 ], [ %mul75.66, %for.inc100.loopexit.66 ]
  %var5.1.66 = phi i32 [ %var5.1.65, %if.end.66 ], [ %rem9, %for.inc100.loopexit.66 ]
  %var1.1.66 = phi i32 [ %var1.1.65, %if.end.66 ], [ %add81.66, %for.inc100.loopexit.66 ]
  %540 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.67 = mul nsw i32 %540, 3
  %541 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.67 = sdiv i32 %541, -2
  %sub.67 = add i32 %div.neg.67, %mul.67
  store i32 %sub.67, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.67 = add nsw i32 %sub.67, %540
  %rem32.67 = srem i32 %add31.67, 100
  store i32 %rem32.67, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.67 = or i32 %rem32.67, 1
  %add33.67 = add nsw i32 %or.67, %rem17
  store i32 %add33.67, i32* @main.hot_data.1, align 4, !tbaa !10
  %542 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.67 = add nsw i32 %add33.67, %542
  store i32 %add42.67, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %543 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.67 = add i16 %543, 67
  %rem43171.67 = urem i16 %rem43.lhs.trunc.67, 100
  %cmp44.67 = icmp eq i16 %rem43171.67, 0
  br i1 %cmp44.67, label %if.then.67, label %if.end.67

if.then.67:                                       ; preds = %for.inc100.66
  %add48.67 = add nsw i32 %mid_vars.sroa.0.1.66, %rem9
  %mul49.67 = mul nsw i32 %local2.1.66, %add48.67
  %shr.67 = ashr i32 %mul49.67, 1
  %add51.67 = add nsw i32 %sub.67, %shr.67
  %call53.67 = tail call i32 @rand() #3
  %rem54.67 = srem i32 %call53.67, 5
  %add55.67 = add nsw i32 %rem54.67, %rem17
  %rem56.67 = srem i32 %add55.67, 100
  %544 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.67 = add nsw i32 %544, %shr.67
  %545 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.67 = add nsw i32 %add59.67, %545
  store i32 %add66.67, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %546 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %546, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.67, %for.inc100.66
  %mid_vars.sroa.0.1.67 = phi i32 [ %add51.67, %if.then.67 ], [ %mid_vars.sroa.0.1.66, %for.inc100.66 ]
  %mid_vars.sroa.10166.1.67 = phi i32 [ %mul49.67, %if.then.67 ], [ %mid_vars.sroa.10166.1.66, %for.inc100.66 ]
  %local2.1.67 = phi i32 [ %rem56.67, %if.then.67 ], [ %local2.1.66, %for.inc100.66 ]
  %rem70172.67 = urem i16 %rem43.lhs.trunc.67, 1000
  %cmp71.67 = icmp eq i16 %rem70172.67, 0
  br i1 %cmp71.67, label %if.then73.67, label %for.inc100.67

if.then73.67:                                     ; preds = %if.end.67
  %add74.67 = add nsw i32 %var1.1.66, %rem13
  %call79.67 = tail call i32 @rand() #3
  %rem80.67 = srem i32 %call79.67, 5
  br label %for.body87.67

for.body87.67:                                    ; preds = %for.body87.67, %if.then73.67
  %indvars.iv.67 = phi i64 [ 0, %if.then73.67 ], [ %indvars.iv.next.67, %for.body87.67 ]
  %call88.67 = tail call i32 @rand() #3
  %rem89.67 = srem i32 %call88.67, 100
  %547 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.67 = add nsw i32 %rem89.67, %547
  %rem93.lhs.trunc.67 = trunc i64 %indvars.iv.67 to i8
  %rem93173.67 = urem i8 %rem93.lhs.trunc.67, 10
  %idxprom94.67 = zext i8 %rem93173.67 to i64
  %arrayidx95.67 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.67, i64 %idxprom94.67
  store i32 %add90.67, i32* %arrayidx95.67, align 4, !tbaa !12
  %indvars.iv.next.67 = add nuw nsw i64 %indvars.iv.67, 1
  %exitcond.67.not = icmp eq i64 %indvars.iv.next.67, 10
  br i1 %exitcond.67.not, label %for.inc100.loopexit.67, label %for.body87.67, !llvm.loop !13

for.inc100.loopexit.67:                           ; preds = %for.body87.67
  %mul75.67 = mul nsw i32 %add74.67, %rem15
  %add81.67 = add nsw i32 %rem80.67, %rem78.sext
  br label %for.inc100.67

for.inc100.67:                                    ; preds = %for.inc100.loopexit.67, %if.end.67
  %var4.1.67 = phi i32 [ %var4.1.66, %if.end.67 ], [ %mul75.67, %for.inc100.loopexit.67 ]
  %var5.1.67 = phi i32 [ %var5.1.66, %if.end.67 ], [ %rem9, %for.inc100.loopexit.67 ]
  %var1.1.67 = phi i32 [ %var1.1.66, %if.end.67 ], [ %add81.67, %for.inc100.loopexit.67 ]
  %548 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.68 = mul nsw i32 %548, 3
  %549 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.68 = sdiv i32 %549, -2
  %sub.68 = add i32 %div.neg.68, %mul.68
  store i32 %sub.68, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.68 = add nsw i32 %sub.68, %548
  %rem32.68 = srem i32 %add31.68, 100
  store i32 %rem32.68, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.68 = or i32 %rem32.68, 1
  %add33.68 = add nsw i32 %or.68, %rem17
  store i32 %add33.68, i32* @main.hot_data.1, align 4, !tbaa !10
  %550 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.68 = add nsw i32 %add33.68, %550
  store i32 %add42.68, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %551 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.68 = add i16 %551, 68
  %rem43171.68 = urem i16 %rem43.lhs.trunc.68, 100
  %cmp44.68 = icmp eq i16 %rem43171.68, 0
  br i1 %cmp44.68, label %if.then.68, label %if.end.68

if.then.68:                                       ; preds = %for.inc100.67
  %add48.68 = add nsw i32 %mid_vars.sroa.0.1.67, %rem9
  %mul49.68 = mul nsw i32 %local2.1.67, %add48.68
  %shr.68 = ashr i32 %mul49.68, 1
  %add51.68 = add nsw i32 %sub.68, %shr.68
  %call53.68 = tail call i32 @rand() #3
  %rem54.68 = srem i32 %call53.68, 5
  %add55.68 = add nsw i32 %rem54.68, %rem17
  %rem56.68 = srem i32 %add55.68, 100
  %552 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.68 = add nsw i32 %552, %shr.68
  %553 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.68 = add nsw i32 %add59.68, %553
  store i32 %add66.68, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %554 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %554, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.68, %for.inc100.67
  %mid_vars.sroa.0.1.68 = phi i32 [ %add51.68, %if.then.68 ], [ %mid_vars.sroa.0.1.67, %for.inc100.67 ]
  %mid_vars.sroa.10166.1.68 = phi i32 [ %mul49.68, %if.then.68 ], [ %mid_vars.sroa.10166.1.67, %for.inc100.67 ]
  %local2.1.68 = phi i32 [ %rem56.68, %if.then.68 ], [ %local2.1.67, %for.inc100.67 ]
  %rem70172.68 = urem i16 %rem43.lhs.trunc.68, 1000
  %cmp71.68 = icmp eq i16 %rem70172.68, 0
  br i1 %cmp71.68, label %if.then73.68, label %for.inc100.68

if.then73.68:                                     ; preds = %if.end.68
  %add74.68 = add nsw i32 %var1.1.67, %rem13
  %call79.68 = tail call i32 @rand() #3
  %rem80.68 = srem i32 %call79.68, 5
  br label %for.body87.68

for.body87.68:                                    ; preds = %for.body87.68, %if.then73.68
  %indvars.iv.68 = phi i64 [ 0, %if.then73.68 ], [ %indvars.iv.next.68, %for.body87.68 ]
  %call88.68 = tail call i32 @rand() #3
  %rem89.68 = srem i32 %call88.68, 100
  %555 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.68 = add nsw i32 %rem89.68, %555
  %rem93.lhs.trunc.68 = trunc i64 %indvars.iv.68 to i8
  %rem93173.68 = urem i8 %rem93.lhs.trunc.68, 10
  %idxprom94.68 = zext i8 %rem93173.68 to i64
  %arrayidx95.68 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.68, i64 %idxprom94.68
  store i32 %add90.68, i32* %arrayidx95.68, align 4, !tbaa !12
  %indvars.iv.next.68 = add nuw nsw i64 %indvars.iv.68, 1
  %exitcond.68.not = icmp eq i64 %indvars.iv.next.68, 10
  br i1 %exitcond.68.not, label %for.inc100.loopexit.68, label %for.body87.68, !llvm.loop !13

for.inc100.loopexit.68:                           ; preds = %for.body87.68
  %mul75.68 = mul nsw i32 %add74.68, %rem15
  %add81.68 = add nsw i32 %rem80.68, %rem78.sext
  br label %for.inc100.68

for.inc100.68:                                    ; preds = %for.inc100.loopexit.68, %if.end.68
  %var4.1.68 = phi i32 [ %var4.1.67, %if.end.68 ], [ %mul75.68, %for.inc100.loopexit.68 ]
  %var5.1.68 = phi i32 [ %var5.1.67, %if.end.68 ], [ %rem9, %for.inc100.loopexit.68 ]
  %var1.1.68 = phi i32 [ %var1.1.67, %if.end.68 ], [ %add81.68, %for.inc100.loopexit.68 ]
  %556 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.69 = mul nsw i32 %556, 3
  %557 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.69 = sdiv i32 %557, -2
  %sub.69 = add i32 %div.neg.69, %mul.69
  store i32 %sub.69, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.69 = add nsw i32 %sub.69, %556
  %rem32.69 = srem i32 %add31.69, 100
  store i32 %rem32.69, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.69 = or i32 %rem32.69, 1
  %add33.69 = add nsw i32 %or.69, %rem17
  store i32 %add33.69, i32* @main.hot_data.1, align 4, !tbaa !10
  %558 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.69 = add nsw i32 %add33.69, %558
  store i32 %add42.69, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %559 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.69 = add i16 %559, 69
  %rem43171.69 = urem i16 %rem43.lhs.trunc.69, 100
  %cmp44.69 = icmp eq i16 %rem43171.69, 0
  br i1 %cmp44.69, label %if.then.69, label %if.end.69

if.then.69:                                       ; preds = %for.inc100.68
  %add48.69 = add nsw i32 %mid_vars.sroa.0.1.68, %rem9
  %mul49.69 = mul nsw i32 %local2.1.68, %add48.69
  %shr.69 = ashr i32 %mul49.69, 1
  %add51.69 = add nsw i32 %sub.69, %shr.69
  %call53.69 = tail call i32 @rand() #3
  %rem54.69 = srem i32 %call53.69, 5
  %add55.69 = add nsw i32 %rem54.69, %rem17
  %rem56.69 = srem i32 %add55.69, 100
  %560 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.69 = add nsw i32 %560, %shr.69
  %561 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.69 = add nsw i32 %add59.69, %561
  store i32 %add66.69, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %562 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %562, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.69, %for.inc100.68
  %mid_vars.sroa.0.1.69 = phi i32 [ %add51.69, %if.then.69 ], [ %mid_vars.sroa.0.1.68, %for.inc100.68 ]
  %mid_vars.sroa.10166.1.69 = phi i32 [ %mul49.69, %if.then.69 ], [ %mid_vars.sroa.10166.1.68, %for.inc100.68 ]
  %local2.1.69 = phi i32 [ %rem56.69, %if.then.69 ], [ %local2.1.68, %for.inc100.68 ]
  %rem70172.69 = urem i16 %rem43.lhs.trunc.69, 1000
  %cmp71.69 = icmp eq i16 %rem70172.69, 0
  br i1 %cmp71.69, label %if.then73.69, label %for.inc100.69

if.then73.69:                                     ; preds = %if.end.69
  %add74.69 = add nsw i32 %var1.1.68, %rem13
  %call79.69 = tail call i32 @rand() #3
  %rem80.69 = srem i32 %call79.69, 5
  br label %for.body87.69

for.body87.69:                                    ; preds = %for.body87.69, %if.then73.69
  %indvars.iv.69 = phi i64 [ 0, %if.then73.69 ], [ %indvars.iv.next.69, %for.body87.69 ]
  %call88.69 = tail call i32 @rand() #3
  %rem89.69 = srem i32 %call88.69, 100
  %563 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.69 = add nsw i32 %rem89.69, %563
  %rem93.lhs.trunc.69 = trunc i64 %indvars.iv.69 to i8
  %rem93173.69 = urem i8 %rem93.lhs.trunc.69, 10
  %idxprom94.69 = zext i8 %rem93173.69 to i64
  %arrayidx95.69 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.69, i64 %idxprom94.69
  store i32 %add90.69, i32* %arrayidx95.69, align 4, !tbaa !12
  %indvars.iv.next.69 = add nuw nsw i64 %indvars.iv.69, 1
  %exitcond.69.not = icmp eq i64 %indvars.iv.next.69, 10
  br i1 %exitcond.69.not, label %for.inc100.loopexit.69, label %for.body87.69, !llvm.loop !13

for.inc100.loopexit.69:                           ; preds = %for.body87.69
  %mul75.69 = mul nsw i32 %add74.69, %rem15
  %add81.69 = add nsw i32 %rem80.69, %rem78.sext
  br label %for.inc100.69

for.inc100.69:                                    ; preds = %for.inc100.loopexit.69, %if.end.69
  %var4.1.69 = phi i32 [ %var4.1.68, %if.end.69 ], [ %mul75.69, %for.inc100.loopexit.69 ]
  %var5.1.69 = phi i32 [ %var5.1.68, %if.end.69 ], [ %rem9, %for.inc100.loopexit.69 ]
  %var1.1.69 = phi i32 [ %var1.1.68, %if.end.69 ], [ %add81.69, %for.inc100.loopexit.69 ]
  %564 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.70 = mul nsw i32 %564, 3
  %565 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.70 = sdiv i32 %565, -2
  %sub.70 = add i32 %div.neg.70, %mul.70
  store i32 %sub.70, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.70 = add nsw i32 %sub.70, %564
  %rem32.70 = srem i32 %add31.70, 100
  store i32 %rem32.70, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.70 = or i32 %rem32.70, 1
  %add33.70 = add nsw i32 %or.70, %rem17
  store i32 %add33.70, i32* @main.hot_data.1, align 4, !tbaa !10
  %566 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.70 = add nsw i32 %add33.70, %566
  store i32 %add42.70, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %567 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.70 = add i16 %567, 70
  %rem43171.70 = urem i16 %rem43.lhs.trunc.70, 100
  %cmp44.70 = icmp eq i16 %rem43171.70, 0
  br i1 %cmp44.70, label %if.then.70, label %if.end.70

if.then.70:                                       ; preds = %for.inc100.69
  %add48.70 = add nsw i32 %mid_vars.sroa.0.1.69, %rem9
  %mul49.70 = mul nsw i32 %local2.1.69, %add48.70
  %shr.70 = ashr i32 %mul49.70, 1
  %add51.70 = add nsw i32 %sub.70, %shr.70
  %call53.70 = tail call i32 @rand() #3
  %rem54.70 = srem i32 %call53.70, 5
  %add55.70 = add nsw i32 %rem54.70, %rem17
  %rem56.70 = srem i32 %add55.70, 100
  %568 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.70 = add nsw i32 %568, %shr.70
  %569 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.70 = add nsw i32 %add59.70, %569
  store i32 %add66.70, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.70, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.70, %for.inc100.69
  %mid_vars.sroa.0.1.70 = phi i32 [ %add51.70, %if.then.70 ], [ %mid_vars.sroa.0.1.69, %for.inc100.69 ]
  %mid_vars.sroa.10166.1.70 = phi i32 [ %mul49.70, %if.then.70 ], [ %mid_vars.sroa.10166.1.69, %for.inc100.69 ]
  %local2.1.70 = phi i32 [ %rem56.70, %if.then.70 ], [ %local2.1.69, %for.inc100.69 ]
  %rem70172.70 = urem i16 %rem43.lhs.trunc.70, 1000
  %cmp71.70 = icmp eq i16 %rem70172.70, 0
  br i1 %cmp71.70, label %if.then73.70, label %for.inc100.70

if.then73.70:                                     ; preds = %if.end.70
  %add74.70 = add nsw i32 %var1.1.69, %rem13
  %call79.70 = tail call i32 @rand() #3
  %rem80.70 = srem i32 %call79.70, 5
  br label %for.body87.70

for.body87.70:                                    ; preds = %for.body87.70, %if.then73.70
  %indvars.iv.70 = phi i64 [ 0, %if.then73.70 ], [ %indvars.iv.next.70, %for.body87.70 ]
  %call88.70 = tail call i32 @rand() #3
  %rem89.70 = srem i32 %call88.70, 100
  %570 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.70 = add nsw i32 %rem89.70, %570
  %rem93.lhs.trunc.70 = trunc i64 %indvars.iv.70 to i8
  %rem93173.70 = urem i8 %rem93.lhs.trunc.70, 10
  %idxprom94.70 = zext i8 %rem93173.70 to i64
  %arrayidx95.70 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.70, i64 %idxprom94.70
  store i32 %add90.70, i32* %arrayidx95.70, align 4, !tbaa !12
  %indvars.iv.next.70 = add nuw nsw i64 %indvars.iv.70, 1
  %exitcond.70.not = icmp eq i64 %indvars.iv.next.70, 10
  br i1 %exitcond.70.not, label %for.inc100.loopexit.70, label %for.body87.70, !llvm.loop !13

for.inc100.loopexit.70:                           ; preds = %for.body87.70
  %mul75.70 = mul nsw i32 %add74.70, %rem15
  %add81.70 = add nsw i32 %rem80.70, %rem78.sext
  br label %for.inc100.70

for.inc100.70:                                    ; preds = %for.inc100.loopexit.70, %if.end.70
  %var4.1.70 = phi i32 [ %var4.1.69, %if.end.70 ], [ %mul75.70, %for.inc100.loopexit.70 ]
  %var5.1.70 = phi i32 [ %var5.1.69, %if.end.70 ], [ %rem9, %for.inc100.loopexit.70 ]
  %var1.1.70 = phi i32 [ %var1.1.69, %if.end.70 ], [ %add81.70, %for.inc100.loopexit.70 ]
  %571 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.71 = mul nsw i32 %571, 3
  %572 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.71 = sdiv i32 %572, -2
  %sub.71 = add i32 %div.neg.71, %mul.71
  store i32 %sub.71, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.71 = add nsw i32 %sub.71, %571
  %rem32.71 = srem i32 %add31.71, 100
  store i32 %rem32.71, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.71 = or i32 %rem32.71, 1
  %add33.71 = add nsw i32 %or.71, %rem17
  store i32 %add33.71, i32* @main.hot_data.1, align 4, !tbaa !10
  %573 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.71 = add nsw i32 %add33.71, %573
  store i32 %add42.71, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %574 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.71 = add i16 %574, 71
  %rem43171.71 = urem i16 %rem43.lhs.trunc.71, 100
  %cmp44.71 = icmp eq i16 %rem43171.71, 0
  br i1 %cmp44.71, label %if.then.71, label %if.end.71

if.then.71:                                       ; preds = %for.inc100.70
  %add48.71 = add nsw i32 %mid_vars.sroa.0.1.70, %rem9
  %mul49.71 = mul nsw i32 %local2.1.70, %add48.71
  %shr.71 = ashr i32 %mul49.71, 1
  %add51.71 = add nsw i32 %sub.71, %shr.71
  %call53.71 = tail call i32 @rand() #3
  %rem54.71 = srem i32 %call53.71, 5
  %add55.71 = add nsw i32 %rem54.71, %rem17
  %rem56.71 = srem i32 %add55.71, 100
  %575 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.71 = add nsw i32 %575, %shr.71
  %576 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.71 = add nsw i32 %add59.71, %576
  store i32 %add66.71, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %577 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %577, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.71, %for.inc100.70
  %mid_vars.sroa.0.1.71 = phi i32 [ %add51.71, %if.then.71 ], [ %mid_vars.sroa.0.1.70, %for.inc100.70 ]
  %mid_vars.sroa.10166.1.71 = phi i32 [ %mul49.71, %if.then.71 ], [ %mid_vars.sroa.10166.1.70, %for.inc100.70 ]
  %local2.1.71 = phi i32 [ %rem56.71, %if.then.71 ], [ %local2.1.70, %for.inc100.70 ]
  %rem70172.71 = urem i16 %rem43.lhs.trunc.71, 1000
  %cmp71.71 = icmp eq i16 %rem70172.71, 0
  br i1 %cmp71.71, label %if.then73.71, label %for.inc100.71

if.then73.71:                                     ; preds = %if.end.71
  %add74.71 = add nsw i32 %var1.1.70, %rem13
  %call79.71 = tail call i32 @rand() #3
  %rem80.71 = srem i32 %call79.71, 5
  br label %for.body87.71

for.body87.71:                                    ; preds = %for.body87.71, %if.then73.71
  %indvars.iv.71 = phi i64 [ 0, %if.then73.71 ], [ %indvars.iv.next.71, %for.body87.71 ]
  %call88.71 = tail call i32 @rand() #3
  %rem89.71 = srem i32 %call88.71, 100
  %578 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.71 = add nsw i32 %rem89.71, %578
  %rem93.lhs.trunc.71 = trunc i64 %indvars.iv.71 to i8
  %rem93173.71 = urem i8 %rem93.lhs.trunc.71, 10
  %idxprom94.71 = zext i8 %rem93173.71 to i64
  %arrayidx95.71 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.71, i64 %idxprom94.71
  store i32 %add90.71, i32* %arrayidx95.71, align 4, !tbaa !12
  %indvars.iv.next.71 = add nuw nsw i64 %indvars.iv.71, 1
  %exitcond.71.not = icmp eq i64 %indvars.iv.next.71, 10
  br i1 %exitcond.71.not, label %for.inc100.loopexit.71, label %for.body87.71, !llvm.loop !13

for.inc100.loopexit.71:                           ; preds = %for.body87.71
  %mul75.71 = mul nsw i32 %add74.71, %rem15
  %add81.71 = add nsw i32 %rem80.71, %rem78.sext
  br label %for.inc100.71

for.inc100.71:                                    ; preds = %for.inc100.loopexit.71, %if.end.71
  %var4.1.71 = phi i32 [ %var4.1.70, %if.end.71 ], [ %mul75.71, %for.inc100.loopexit.71 ]
  %var5.1.71 = phi i32 [ %var5.1.70, %if.end.71 ], [ %rem9, %for.inc100.loopexit.71 ]
  %var1.1.71 = phi i32 [ %var1.1.70, %if.end.71 ], [ %add81.71, %for.inc100.loopexit.71 ]
  %579 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.72 = mul nsw i32 %579, 3
  %580 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.72 = sdiv i32 %580, -2
  %sub.72 = add i32 %div.neg.72, %mul.72
  store i32 %sub.72, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.72 = add nsw i32 %sub.72, %579
  %rem32.72 = srem i32 %add31.72, 100
  store i32 %rem32.72, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.72 = or i32 %rem32.72, 1
  %add33.72 = add nsw i32 %or.72, %rem17
  store i32 %add33.72, i32* @main.hot_data.1, align 4, !tbaa !10
  %581 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.72 = add nsw i32 %add33.72, %581
  store i32 %add42.72, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %582 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.72 = add i16 %582, 72
  %rem43171.72 = urem i16 %rem43.lhs.trunc.72, 100
  %cmp44.72 = icmp eq i16 %rem43171.72, 0
  br i1 %cmp44.72, label %if.then.72, label %if.end.72

if.then.72:                                       ; preds = %for.inc100.71
  %add48.72 = add nsw i32 %mid_vars.sroa.0.1.71, %rem9
  %mul49.72 = mul nsw i32 %local2.1.71, %add48.72
  %shr.72 = ashr i32 %mul49.72, 1
  %add51.72 = add nsw i32 %sub.72, %shr.72
  %call53.72 = tail call i32 @rand() #3
  %rem54.72 = srem i32 %call53.72, 5
  %add55.72 = add nsw i32 %rem54.72, %rem17
  %rem56.72 = srem i32 %add55.72, 100
  %583 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.72 = add nsw i32 %583, %shr.72
  %584 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.72 = add nsw i32 %add59.72, %584
  store i32 %add66.72, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %585 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %585, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.72, %for.inc100.71
  %mid_vars.sroa.0.1.72 = phi i32 [ %add51.72, %if.then.72 ], [ %mid_vars.sroa.0.1.71, %for.inc100.71 ]
  %mid_vars.sroa.10166.1.72 = phi i32 [ %mul49.72, %if.then.72 ], [ %mid_vars.sroa.10166.1.71, %for.inc100.71 ]
  %local2.1.72 = phi i32 [ %rem56.72, %if.then.72 ], [ %local2.1.71, %for.inc100.71 ]
  %rem70172.72 = urem i16 %rem43.lhs.trunc.72, 1000
  %cmp71.72 = icmp eq i16 %rem70172.72, 0
  br i1 %cmp71.72, label %if.then73.72, label %for.inc100.72

if.then73.72:                                     ; preds = %if.end.72
  %add74.72 = add nsw i32 %var1.1.71, %rem13
  %call79.72 = tail call i32 @rand() #3
  %rem80.72 = srem i32 %call79.72, 5
  br label %for.body87.72

for.body87.72:                                    ; preds = %for.body87.72, %if.then73.72
  %indvars.iv.72 = phi i64 [ 0, %if.then73.72 ], [ %indvars.iv.next.72, %for.body87.72 ]
  %call88.72 = tail call i32 @rand() #3
  %rem89.72 = srem i32 %call88.72, 100
  %586 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.72 = add nsw i32 %rem89.72, %586
  %rem93.lhs.trunc.72 = trunc i64 %indvars.iv.72 to i8
  %rem93173.72 = urem i8 %rem93.lhs.trunc.72, 10
  %idxprom94.72 = zext i8 %rem93173.72 to i64
  %arrayidx95.72 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.72, i64 %idxprom94.72
  store i32 %add90.72, i32* %arrayidx95.72, align 4, !tbaa !12
  %indvars.iv.next.72 = add nuw nsw i64 %indvars.iv.72, 1
  %exitcond.72.not = icmp eq i64 %indvars.iv.next.72, 10
  br i1 %exitcond.72.not, label %for.inc100.loopexit.72, label %for.body87.72, !llvm.loop !13

for.inc100.loopexit.72:                           ; preds = %for.body87.72
  %mul75.72 = mul nsw i32 %add74.72, %rem15
  %add81.72 = add nsw i32 %rem80.72, %rem78.sext
  br label %for.inc100.72

for.inc100.72:                                    ; preds = %for.inc100.loopexit.72, %if.end.72
  %var4.1.72 = phi i32 [ %var4.1.71, %if.end.72 ], [ %mul75.72, %for.inc100.loopexit.72 ]
  %var5.1.72 = phi i32 [ %var5.1.71, %if.end.72 ], [ %rem9, %for.inc100.loopexit.72 ]
  %var1.1.72 = phi i32 [ %var1.1.71, %if.end.72 ], [ %add81.72, %for.inc100.loopexit.72 ]
  %587 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.73 = mul nsw i32 %587, 3
  %588 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.73 = sdiv i32 %588, -2
  %sub.73 = add i32 %div.neg.73, %mul.73
  store i32 %sub.73, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.73 = add nsw i32 %sub.73, %587
  %rem32.73 = srem i32 %add31.73, 100
  store i32 %rem32.73, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.73 = or i32 %rem32.73, 1
  %add33.73 = add nsw i32 %or.73, %rem17
  store i32 %add33.73, i32* @main.hot_data.1, align 4, !tbaa !10
  %589 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.73 = add nsw i32 %add33.73, %589
  store i32 %add42.73, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %590 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.73 = add i16 %590, 73
  %rem43171.73 = urem i16 %rem43.lhs.trunc.73, 100
  %cmp44.73 = icmp eq i16 %rem43171.73, 0
  br i1 %cmp44.73, label %if.then.73, label %if.end.73

if.then.73:                                       ; preds = %for.inc100.72
  %add48.73 = add nsw i32 %mid_vars.sroa.0.1.72, %rem9
  %mul49.73 = mul nsw i32 %local2.1.72, %add48.73
  %shr.73 = ashr i32 %mul49.73, 1
  %add51.73 = add nsw i32 %sub.73, %shr.73
  %call53.73 = tail call i32 @rand() #3
  %rem54.73 = srem i32 %call53.73, 5
  %add55.73 = add nsw i32 %rem54.73, %rem17
  %rem56.73 = srem i32 %add55.73, 100
  %591 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.73 = add nsw i32 %591, %shr.73
  %592 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.73 = add nsw i32 %add59.73, %592
  store i32 %add66.73, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %593 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %593, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.73, %for.inc100.72
  %mid_vars.sroa.0.1.73 = phi i32 [ %add51.73, %if.then.73 ], [ %mid_vars.sroa.0.1.72, %for.inc100.72 ]
  %mid_vars.sroa.10166.1.73 = phi i32 [ %mul49.73, %if.then.73 ], [ %mid_vars.sroa.10166.1.72, %for.inc100.72 ]
  %local2.1.73 = phi i32 [ %rem56.73, %if.then.73 ], [ %local2.1.72, %for.inc100.72 ]
  %rem70172.73 = urem i16 %rem43.lhs.trunc.73, 1000
  %cmp71.73 = icmp eq i16 %rem70172.73, 0
  br i1 %cmp71.73, label %if.then73.73, label %for.inc100.73

if.then73.73:                                     ; preds = %if.end.73
  %add74.73 = add nsw i32 %var1.1.72, %rem13
  %call79.73 = tail call i32 @rand() #3
  %rem80.73 = srem i32 %call79.73, 5
  br label %for.body87.73

for.body87.73:                                    ; preds = %for.body87.73, %if.then73.73
  %indvars.iv.73 = phi i64 [ 0, %if.then73.73 ], [ %indvars.iv.next.73, %for.body87.73 ]
  %call88.73 = tail call i32 @rand() #3
  %rem89.73 = srem i32 %call88.73, 100
  %594 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.73 = add nsw i32 %rem89.73, %594
  %rem93.lhs.trunc.73 = trunc i64 %indvars.iv.73 to i8
  %rem93173.73 = urem i8 %rem93.lhs.trunc.73, 10
  %idxprom94.73 = zext i8 %rem93173.73 to i64
  %arrayidx95.73 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.73, i64 %idxprom94.73
  store i32 %add90.73, i32* %arrayidx95.73, align 4, !tbaa !12
  %indvars.iv.next.73 = add nuw nsw i64 %indvars.iv.73, 1
  %exitcond.73.not = icmp eq i64 %indvars.iv.next.73, 10
  br i1 %exitcond.73.not, label %for.inc100.loopexit.73, label %for.body87.73, !llvm.loop !13

for.inc100.loopexit.73:                           ; preds = %for.body87.73
  %mul75.73 = mul nsw i32 %add74.73, %rem15
  %add81.73 = add nsw i32 %rem80.73, %rem78.sext
  br label %for.inc100.73

for.inc100.73:                                    ; preds = %for.inc100.loopexit.73, %if.end.73
  %var4.1.73 = phi i32 [ %var4.1.72, %if.end.73 ], [ %mul75.73, %for.inc100.loopexit.73 ]
  %var5.1.73 = phi i32 [ %var5.1.72, %if.end.73 ], [ %rem9, %for.inc100.loopexit.73 ]
  %var1.1.73 = phi i32 [ %var1.1.72, %if.end.73 ], [ %add81.73, %for.inc100.loopexit.73 ]
  %595 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.74 = mul nsw i32 %595, 3
  %596 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.74 = sdiv i32 %596, -2
  %sub.74 = add i32 %div.neg.74, %mul.74
  store i32 %sub.74, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.74 = add nsw i32 %sub.74, %595
  %rem32.74 = srem i32 %add31.74, 100
  store i32 %rem32.74, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.74 = or i32 %rem32.74, 1
  %add33.74 = add nsw i32 %or.74, %rem17
  store i32 %add33.74, i32* @main.hot_data.1, align 4, !tbaa !10
  %597 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.74 = add nsw i32 %add33.74, %597
  store i32 %add42.74, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %598 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.74 = add i16 %598, 74
  %rem43171.74 = urem i16 %rem43.lhs.trunc.74, 100
  %cmp44.74 = icmp eq i16 %rem43171.74, 0
  br i1 %cmp44.74, label %if.then.74, label %if.end.74

if.then.74:                                       ; preds = %for.inc100.73
  %add48.74 = add nsw i32 %mid_vars.sroa.0.1.73, %rem9
  %mul49.74 = mul nsw i32 %local2.1.73, %add48.74
  %shr.74 = ashr i32 %mul49.74, 1
  %add51.74 = add nsw i32 %sub.74, %shr.74
  %call53.74 = tail call i32 @rand() #3
  %rem54.74 = srem i32 %call53.74, 5
  %add55.74 = add nsw i32 %rem54.74, %rem17
  %rem56.74 = srem i32 %add55.74, 100
  %599 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.74 = add nsw i32 %599, %shr.74
  %600 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.74 = add nsw i32 %add59.74, %600
  store i32 %add66.74, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %601 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %601, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.74, %for.inc100.73
  %mid_vars.sroa.0.1.74 = phi i32 [ %add51.74, %if.then.74 ], [ %mid_vars.sroa.0.1.73, %for.inc100.73 ]
  %mid_vars.sroa.10166.1.74 = phi i32 [ %mul49.74, %if.then.74 ], [ %mid_vars.sroa.10166.1.73, %for.inc100.73 ]
  %local2.1.74 = phi i32 [ %rem56.74, %if.then.74 ], [ %local2.1.73, %for.inc100.73 ]
  %rem70172.74 = urem i16 %rem43.lhs.trunc.74, 1000
  %cmp71.74 = icmp eq i16 %rem70172.74, 0
  br i1 %cmp71.74, label %if.then73.74, label %for.inc100.74

if.then73.74:                                     ; preds = %if.end.74
  %add74.74 = add nsw i32 %var1.1.73, %rem13
  %call79.74 = tail call i32 @rand() #3
  %rem80.74 = srem i32 %call79.74, 5
  br label %for.body87.74

for.body87.74:                                    ; preds = %for.body87.74, %if.then73.74
  %indvars.iv.74 = phi i64 [ 0, %if.then73.74 ], [ %indvars.iv.next.74, %for.body87.74 ]
  %call88.74 = tail call i32 @rand() #3
  %rem89.74 = srem i32 %call88.74, 100
  %602 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.74 = add nsw i32 %rem89.74, %602
  %rem93.lhs.trunc.74 = trunc i64 %indvars.iv.74 to i8
  %rem93173.74 = urem i8 %rem93.lhs.trunc.74, 10
  %idxprom94.74 = zext i8 %rem93173.74 to i64
  %arrayidx95.74 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.74, i64 %idxprom94.74
  store i32 %add90.74, i32* %arrayidx95.74, align 4, !tbaa !12
  %indvars.iv.next.74 = add nuw nsw i64 %indvars.iv.74, 1
  %exitcond.74.not = icmp eq i64 %indvars.iv.next.74, 10
  br i1 %exitcond.74.not, label %for.inc100.loopexit.74, label %for.body87.74, !llvm.loop !13

for.inc100.loopexit.74:                           ; preds = %for.body87.74
  %mul75.74 = mul nsw i32 %add74.74, %rem15
  %add81.74 = add nsw i32 %rem80.74, %rem78.sext
  br label %for.inc100.74

for.inc100.74:                                    ; preds = %for.inc100.loopexit.74, %if.end.74
  %var4.1.74 = phi i32 [ %var4.1.73, %if.end.74 ], [ %mul75.74, %for.inc100.loopexit.74 ]
  %var5.1.74 = phi i32 [ %var5.1.73, %if.end.74 ], [ %rem9, %for.inc100.loopexit.74 ]
  %var1.1.74 = phi i32 [ %var1.1.73, %if.end.74 ], [ %add81.74, %for.inc100.loopexit.74 ]
  %603 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.75 = mul nsw i32 %603, 3
  %604 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.75 = sdiv i32 %604, -2
  %sub.75 = add i32 %div.neg.75, %mul.75
  store i32 %sub.75, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.75 = add nsw i32 %sub.75, %603
  %rem32.75 = srem i32 %add31.75, 100
  store i32 %rem32.75, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.75 = or i32 %rem32.75, 1
  %add33.75 = add nsw i32 %or.75, %rem17
  store i32 %add33.75, i32* @main.hot_data.1, align 4, !tbaa !10
  %605 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.75 = add nsw i32 %add33.75, %605
  store i32 %add42.75, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %606 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.75 = add i16 %606, 75
  %rem43171.75 = urem i16 %rem43.lhs.trunc.75, 100
  %cmp44.75 = icmp eq i16 %rem43171.75, 0
  br i1 %cmp44.75, label %if.then.75, label %if.end.75

if.then.75:                                       ; preds = %for.inc100.74
  %add48.75 = add nsw i32 %mid_vars.sroa.0.1.74, %rem9
  %mul49.75 = mul nsw i32 %local2.1.74, %add48.75
  %shr.75 = ashr i32 %mul49.75, 1
  %add51.75 = add nsw i32 %sub.75, %shr.75
  %call53.75 = tail call i32 @rand() #3
  %rem54.75 = srem i32 %call53.75, 5
  %add55.75 = add nsw i32 %rem54.75, %rem17
  %rem56.75 = srem i32 %add55.75, 100
  %607 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.75 = add nsw i32 %607, %shr.75
  %608 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.75 = add nsw i32 %add59.75, %608
  store i32 %add66.75, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %609 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %609, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.75, %for.inc100.74
  %mid_vars.sroa.0.1.75 = phi i32 [ %add51.75, %if.then.75 ], [ %mid_vars.sroa.0.1.74, %for.inc100.74 ]
  %mid_vars.sroa.10166.1.75 = phi i32 [ %mul49.75, %if.then.75 ], [ %mid_vars.sroa.10166.1.74, %for.inc100.74 ]
  %local2.1.75 = phi i32 [ %rem56.75, %if.then.75 ], [ %local2.1.74, %for.inc100.74 ]
  %rem70172.75 = urem i16 %rem43.lhs.trunc.75, 1000
  %cmp71.75 = icmp eq i16 %rem70172.75, 0
  br i1 %cmp71.75, label %if.then73.75, label %for.inc100.75

if.then73.75:                                     ; preds = %if.end.75
  %add74.75 = add nsw i32 %var1.1.74, %rem13
  %call79.75 = tail call i32 @rand() #3
  %rem80.75 = srem i32 %call79.75, 5
  br label %for.body87.75

for.body87.75:                                    ; preds = %for.body87.75, %if.then73.75
  %indvars.iv.75 = phi i64 [ 0, %if.then73.75 ], [ %indvars.iv.next.75, %for.body87.75 ]
  %call88.75 = tail call i32 @rand() #3
  %rem89.75 = srem i32 %call88.75, 100
  %610 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.75 = add nsw i32 %rem89.75, %610
  %rem93.lhs.trunc.75 = trunc i64 %indvars.iv.75 to i8
  %rem93173.75 = urem i8 %rem93.lhs.trunc.75, 10
  %idxprom94.75 = zext i8 %rem93173.75 to i64
  %arrayidx95.75 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.75, i64 %idxprom94.75
  store i32 %add90.75, i32* %arrayidx95.75, align 4, !tbaa !12
  %indvars.iv.next.75 = add nuw nsw i64 %indvars.iv.75, 1
  %exitcond.75.not = icmp eq i64 %indvars.iv.next.75, 10
  br i1 %exitcond.75.not, label %for.inc100.loopexit.75, label %for.body87.75, !llvm.loop !13

for.inc100.loopexit.75:                           ; preds = %for.body87.75
  %mul75.75 = mul nsw i32 %add74.75, %rem15
  %add81.75 = add nsw i32 %rem80.75, %rem78.sext
  br label %for.inc100.75

for.inc100.75:                                    ; preds = %for.inc100.loopexit.75, %if.end.75
  %var4.1.75 = phi i32 [ %var4.1.74, %if.end.75 ], [ %mul75.75, %for.inc100.loopexit.75 ]
  %var5.1.75 = phi i32 [ %var5.1.74, %if.end.75 ], [ %rem9, %for.inc100.loopexit.75 ]
  %var1.1.75 = phi i32 [ %var1.1.74, %if.end.75 ], [ %add81.75, %for.inc100.loopexit.75 ]
  %611 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.76 = mul nsw i32 %611, 3
  %612 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.76 = sdiv i32 %612, -2
  %sub.76 = add i32 %div.neg.76, %mul.76
  store i32 %sub.76, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.76 = add nsw i32 %sub.76, %611
  %rem32.76 = srem i32 %add31.76, 100
  store i32 %rem32.76, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.76 = or i32 %rem32.76, 1
  %add33.76 = add nsw i32 %or.76, %rem17
  store i32 %add33.76, i32* @main.hot_data.1, align 4, !tbaa !10
  %613 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.76 = add nsw i32 %add33.76, %613
  store i32 %add42.76, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %614 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.76 = add i16 %614, 76
  %rem43171.76 = urem i16 %rem43.lhs.trunc.76, 100
  %cmp44.76 = icmp eq i16 %rem43171.76, 0
  br i1 %cmp44.76, label %if.then.76, label %if.end.76

if.then.76:                                       ; preds = %for.inc100.75
  %add48.76 = add nsw i32 %mid_vars.sroa.0.1.75, %rem9
  %mul49.76 = mul nsw i32 %local2.1.75, %add48.76
  %shr.76 = ashr i32 %mul49.76, 1
  %add51.76 = add nsw i32 %sub.76, %shr.76
  %call53.76 = tail call i32 @rand() #3
  %rem54.76 = srem i32 %call53.76, 5
  %add55.76 = add nsw i32 %rem54.76, %rem17
  %rem56.76 = srem i32 %add55.76, 100
  %615 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.76 = add nsw i32 %615, %shr.76
  %616 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.76 = add nsw i32 %add59.76, %616
  store i32 %add66.76, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %617 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %617, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.76, %for.inc100.75
  %mid_vars.sroa.0.1.76 = phi i32 [ %add51.76, %if.then.76 ], [ %mid_vars.sroa.0.1.75, %for.inc100.75 ]
  %mid_vars.sroa.10166.1.76 = phi i32 [ %mul49.76, %if.then.76 ], [ %mid_vars.sroa.10166.1.75, %for.inc100.75 ]
  %local2.1.76 = phi i32 [ %rem56.76, %if.then.76 ], [ %local2.1.75, %for.inc100.75 ]
  %rem70172.76 = urem i16 %rem43.lhs.trunc.76, 1000
  %cmp71.76 = icmp eq i16 %rem70172.76, 0
  br i1 %cmp71.76, label %if.then73.76, label %for.inc100.76

if.then73.76:                                     ; preds = %if.end.76
  %add74.76 = add nsw i32 %var1.1.75, %rem13
  %call79.76 = tail call i32 @rand() #3
  %rem80.76 = srem i32 %call79.76, 5
  br label %for.body87.76

for.body87.76:                                    ; preds = %for.body87.76, %if.then73.76
  %indvars.iv.76 = phi i64 [ 0, %if.then73.76 ], [ %indvars.iv.next.76, %for.body87.76 ]
  %call88.76 = tail call i32 @rand() #3
  %rem89.76 = srem i32 %call88.76, 100
  %618 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.76 = add nsw i32 %rem89.76, %618
  %rem93.lhs.trunc.76 = trunc i64 %indvars.iv.76 to i8
  %rem93173.76 = urem i8 %rem93.lhs.trunc.76, 10
  %idxprom94.76 = zext i8 %rem93173.76 to i64
  %arrayidx95.76 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.76, i64 %idxprom94.76
  store i32 %add90.76, i32* %arrayidx95.76, align 4, !tbaa !12
  %indvars.iv.next.76 = add nuw nsw i64 %indvars.iv.76, 1
  %exitcond.76.not = icmp eq i64 %indvars.iv.next.76, 10
  br i1 %exitcond.76.not, label %for.inc100.loopexit.76, label %for.body87.76, !llvm.loop !13

for.inc100.loopexit.76:                           ; preds = %for.body87.76
  %mul75.76 = mul nsw i32 %add74.76, %rem15
  %add81.76 = add nsw i32 %rem80.76, %rem78.sext
  br label %for.inc100.76

for.inc100.76:                                    ; preds = %for.inc100.loopexit.76, %if.end.76
  %var4.1.76 = phi i32 [ %var4.1.75, %if.end.76 ], [ %mul75.76, %for.inc100.loopexit.76 ]
  %var5.1.76 = phi i32 [ %var5.1.75, %if.end.76 ], [ %rem9, %for.inc100.loopexit.76 ]
  %var1.1.76 = phi i32 [ %var1.1.75, %if.end.76 ], [ %add81.76, %for.inc100.loopexit.76 ]
  %619 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.77 = mul nsw i32 %619, 3
  %620 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.77 = sdiv i32 %620, -2
  %sub.77 = add i32 %div.neg.77, %mul.77
  store i32 %sub.77, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.77 = add nsw i32 %sub.77, %619
  %rem32.77 = srem i32 %add31.77, 100
  store i32 %rem32.77, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.77 = or i32 %rem32.77, 1
  %add33.77 = add nsw i32 %or.77, %rem17
  store i32 %add33.77, i32* @main.hot_data.1, align 4, !tbaa !10
  %621 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.77 = add nsw i32 %add33.77, %621
  store i32 %add42.77, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %622 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.77 = add i16 %622, 77
  %rem43171.77 = urem i16 %rem43.lhs.trunc.77, 100
  %cmp44.77 = icmp eq i16 %rem43171.77, 0
  br i1 %cmp44.77, label %if.then.77, label %if.end.77

if.then.77:                                       ; preds = %for.inc100.76
  %add48.77 = add nsw i32 %mid_vars.sroa.0.1.76, %rem9
  %mul49.77 = mul nsw i32 %local2.1.76, %add48.77
  %shr.77 = ashr i32 %mul49.77, 1
  %add51.77 = add nsw i32 %sub.77, %shr.77
  %call53.77 = tail call i32 @rand() #3
  %rem54.77 = srem i32 %call53.77, 5
  %add55.77 = add nsw i32 %rem54.77, %rem17
  %rem56.77 = srem i32 %add55.77, 100
  %623 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.77 = add nsw i32 %623, %shr.77
  %624 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.77 = add nsw i32 %add59.77, %624
  store i32 %add66.77, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %625 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %625, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.77, %for.inc100.76
  %mid_vars.sroa.0.1.77 = phi i32 [ %add51.77, %if.then.77 ], [ %mid_vars.sroa.0.1.76, %for.inc100.76 ]
  %mid_vars.sroa.10166.1.77 = phi i32 [ %mul49.77, %if.then.77 ], [ %mid_vars.sroa.10166.1.76, %for.inc100.76 ]
  %local2.1.77 = phi i32 [ %rem56.77, %if.then.77 ], [ %local2.1.76, %for.inc100.76 ]
  %rem70172.77 = urem i16 %rem43.lhs.trunc.77, 1000
  %cmp71.77 = icmp eq i16 %rem70172.77, 0
  br i1 %cmp71.77, label %if.then73.77, label %for.inc100.77

if.then73.77:                                     ; preds = %if.end.77
  %add74.77 = add nsw i32 %var1.1.76, %rem13
  %call79.77 = tail call i32 @rand() #3
  %rem80.77 = srem i32 %call79.77, 5
  br label %for.body87.77

for.body87.77:                                    ; preds = %for.body87.77, %if.then73.77
  %indvars.iv.77 = phi i64 [ 0, %if.then73.77 ], [ %indvars.iv.next.77, %for.body87.77 ]
  %call88.77 = tail call i32 @rand() #3
  %rem89.77 = srem i32 %call88.77, 100
  %626 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.77 = add nsw i32 %rem89.77, %626
  %rem93.lhs.trunc.77 = trunc i64 %indvars.iv.77 to i8
  %rem93173.77 = urem i8 %rem93.lhs.trunc.77, 10
  %idxprom94.77 = zext i8 %rem93173.77 to i64
  %arrayidx95.77 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.77, i64 %idxprom94.77
  store i32 %add90.77, i32* %arrayidx95.77, align 4, !tbaa !12
  %indvars.iv.next.77 = add nuw nsw i64 %indvars.iv.77, 1
  %exitcond.77.not = icmp eq i64 %indvars.iv.next.77, 10
  br i1 %exitcond.77.not, label %for.inc100.loopexit.77, label %for.body87.77, !llvm.loop !13

for.inc100.loopexit.77:                           ; preds = %for.body87.77
  %mul75.77 = mul nsw i32 %add74.77, %rem15
  %add81.77 = add nsw i32 %rem80.77, %rem78.sext
  br label %for.inc100.77

for.inc100.77:                                    ; preds = %for.inc100.loopexit.77, %if.end.77
  %var4.1.77 = phi i32 [ %var4.1.76, %if.end.77 ], [ %mul75.77, %for.inc100.loopexit.77 ]
  %var5.1.77 = phi i32 [ %var5.1.76, %if.end.77 ], [ %rem9, %for.inc100.loopexit.77 ]
  %var1.1.77 = phi i32 [ %var1.1.76, %if.end.77 ], [ %add81.77, %for.inc100.loopexit.77 ]
  %627 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.78 = mul nsw i32 %627, 3
  %628 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.78 = sdiv i32 %628, -2
  %sub.78 = add i32 %div.neg.78, %mul.78
  store i32 %sub.78, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.78 = add nsw i32 %sub.78, %627
  %rem32.78 = srem i32 %add31.78, 100
  store i32 %rem32.78, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.78 = or i32 %rem32.78, 1
  %add33.78 = add nsw i32 %or.78, %rem17
  store i32 %add33.78, i32* @main.hot_data.1, align 4, !tbaa !10
  %629 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.78 = add nsw i32 %add33.78, %629
  store i32 %add42.78, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %630 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.78 = add i16 %630, 78
  %rem43171.78 = urem i16 %rem43.lhs.trunc.78, 100
  %cmp44.78 = icmp eq i16 %rem43171.78, 0
  br i1 %cmp44.78, label %if.then.78, label %if.end.78

if.then.78:                                       ; preds = %for.inc100.77
  %add48.78 = add nsw i32 %mid_vars.sroa.0.1.77, %rem9
  %mul49.78 = mul nsw i32 %local2.1.77, %add48.78
  %shr.78 = ashr i32 %mul49.78, 1
  %add51.78 = add nsw i32 %sub.78, %shr.78
  %call53.78 = tail call i32 @rand() #3
  %rem54.78 = srem i32 %call53.78, 5
  %add55.78 = add nsw i32 %rem54.78, %rem17
  %rem56.78 = srem i32 %add55.78, 100
  %631 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.78 = add nsw i32 %631, %shr.78
  %632 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.78 = add nsw i32 %add59.78, %632
  store i32 %add66.78, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %633 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %633, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.78, %for.inc100.77
  %mid_vars.sroa.0.1.78 = phi i32 [ %add51.78, %if.then.78 ], [ %mid_vars.sroa.0.1.77, %for.inc100.77 ]
  %mid_vars.sroa.10166.1.78 = phi i32 [ %mul49.78, %if.then.78 ], [ %mid_vars.sroa.10166.1.77, %for.inc100.77 ]
  %local2.1.78 = phi i32 [ %rem56.78, %if.then.78 ], [ %local2.1.77, %for.inc100.77 ]
  %rem70172.78 = urem i16 %rem43.lhs.trunc.78, 1000
  %cmp71.78 = icmp eq i16 %rem70172.78, 0
  br i1 %cmp71.78, label %if.then73.78, label %for.inc100.78

if.then73.78:                                     ; preds = %if.end.78
  %add74.78 = add nsw i32 %var1.1.77, %rem13
  %call79.78 = tail call i32 @rand() #3
  %rem80.78 = srem i32 %call79.78, 5
  br label %for.body87.78

for.body87.78:                                    ; preds = %for.body87.78, %if.then73.78
  %indvars.iv.78 = phi i64 [ 0, %if.then73.78 ], [ %indvars.iv.next.78, %for.body87.78 ]
  %call88.78 = tail call i32 @rand() #3
  %rem89.78 = srem i32 %call88.78, 100
  %634 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.78 = add nsw i32 %rem89.78, %634
  %rem93.lhs.trunc.78 = trunc i64 %indvars.iv.78 to i8
  %rem93173.78 = urem i8 %rem93.lhs.trunc.78, 10
  %idxprom94.78 = zext i8 %rem93173.78 to i64
  %arrayidx95.78 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.78, i64 %idxprom94.78
  store i32 %add90.78, i32* %arrayidx95.78, align 4, !tbaa !12
  %indvars.iv.next.78 = add nuw nsw i64 %indvars.iv.78, 1
  %exitcond.78.not = icmp eq i64 %indvars.iv.next.78, 10
  br i1 %exitcond.78.not, label %for.inc100.loopexit.78, label %for.body87.78, !llvm.loop !13

for.inc100.loopexit.78:                           ; preds = %for.body87.78
  %mul75.78 = mul nsw i32 %add74.78, %rem15
  %add81.78 = add nsw i32 %rem80.78, %rem78.sext
  br label %for.inc100.78

for.inc100.78:                                    ; preds = %for.inc100.loopexit.78, %if.end.78
  %var4.1.78 = phi i32 [ %var4.1.77, %if.end.78 ], [ %mul75.78, %for.inc100.loopexit.78 ]
  %var5.1.78 = phi i32 [ %var5.1.77, %if.end.78 ], [ %rem9, %for.inc100.loopexit.78 ]
  %var1.1.78 = phi i32 [ %var1.1.77, %if.end.78 ], [ %add81.78, %for.inc100.loopexit.78 ]
  %635 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.79 = mul nsw i32 %635, 3
  %636 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.79 = sdiv i32 %636, -2
  %sub.79 = add i32 %div.neg.79, %mul.79
  store i32 %sub.79, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.79 = add nsw i32 %sub.79, %635
  %rem32.79 = srem i32 %add31.79, 100
  store i32 %rem32.79, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.79 = or i32 %rem32.79, 1
  %add33.79 = add nsw i32 %or.79, %rem17
  store i32 %add33.79, i32* @main.hot_data.1, align 4, !tbaa !10
  %637 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.79 = add nsw i32 %add33.79, %637
  store i32 %add42.79, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %638 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.79 = add i16 %638, 79
  %rem43171.79 = urem i16 %rem43.lhs.trunc.79, 100
  %cmp44.79 = icmp eq i16 %rem43171.79, 0
  br i1 %cmp44.79, label %if.then.79, label %if.end.79

if.then.79:                                       ; preds = %for.inc100.78
  %add48.79 = add nsw i32 %mid_vars.sroa.0.1.78, %rem9
  %mul49.79 = mul nsw i32 %local2.1.78, %add48.79
  %shr.79 = ashr i32 %mul49.79, 1
  %add51.79 = add nsw i32 %sub.79, %shr.79
  %call53.79 = tail call i32 @rand() #3
  %rem54.79 = srem i32 %call53.79, 5
  %add55.79 = add nsw i32 %rem54.79, %rem17
  %rem56.79 = srem i32 %add55.79, 100
  %639 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.79 = add nsw i32 %639, %shr.79
  %640 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.79 = add nsw i32 %add59.79, %640
  store i32 %add66.79, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %641 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %641, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.79, %for.inc100.78
  %mid_vars.sroa.0.1.79 = phi i32 [ %add51.79, %if.then.79 ], [ %mid_vars.sroa.0.1.78, %for.inc100.78 ]
  %mid_vars.sroa.10166.1.79 = phi i32 [ %mul49.79, %if.then.79 ], [ %mid_vars.sroa.10166.1.78, %for.inc100.78 ]
  %local2.1.79 = phi i32 [ %rem56.79, %if.then.79 ], [ %local2.1.78, %for.inc100.78 ]
  %rem70172.79 = urem i16 %rem43.lhs.trunc.79, 1000
  %cmp71.79 = icmp eq i16 %rem70172.79, 0
  br i1 %cmp71.79, label %if.then73.79, label %for.inc100.79

if.then73.79:                                     ; preds = %if.end.79
  %add74.79 = add nsw i32 %var1.1.78, %rem13
  %call79.79 = tail call i32 @rand() #3
  %rem80.79 = srem i32 %call79.79, 5
  br label %for.body87.79

for.body87.79:                                    ; preds = %for.body87.79, %if.then73.79
  %indvars.iv.79 = phi i64 [ 0, %if.then73.79 ], [ %indvars.iv.next.79, %for.body87.79 ]
  %call88.79 = tail call i32 @rand() #3
  %rem89.79 = srem i32 %call88.79, 100
  %642 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.79 = add nsw i32 %rem89.79, %642
  %rem93.lhs.trunc.79 = trunc i64 %indvars.iv.79 to i8
  %rem93173.79 = urem i8 %rem93.lhs.trunc.79, 10
  %idxprom94.79 = zext i8 %rem93173.79 to i64
  %arrayidx95.79 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.79, i64 %idxprom94.79
  store i32 %add90.79, i32* %arrayidx95.79, align 4, !tbaa !12
  %indvars.iv.next.79 = add nuw nsw i64 %indvars.iv.79, 1
  %exitcond.79.not = icmp eq i64 %indvars.iv.next.79, 10
  br i1 %exitcond.79.not, label %for.inc100.loopexit.79, label %for.body87.79, !llvm.loop !13

for.inc100.loopexit.79:                           ; preds = %for.body87.79
  %mul75.79 = mul nsw i32 %add74.79, %rem15
  %add81.79 = add nsw i32 %rem80.79, %rem78.sext
  br label %for.inc100.79

for.inc100.79:                                    ; preds = %for.inc100.loopexit.79, %if.end.79
  %var4.1.79 = phi i32 [ %var4.1.78, %if.end.79 ], [ %mul75.79, %for.inc100.loopexit.79 ]
  %var5.1.79 = phi i32 [ %var5.1.78, %if.end.79 ], [ %rem9, %for.inc100.loopexit.79 ]
  %var1.1.79 = phi i32 [ %var1.1.78, %if.end.79 ], [ %add81.79, %for.inc100.loopexit.79 ]
  %643 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.80 = mul nsw i32 %643, 3
  %644 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.80 = sdiv i32 %644, -2
  %sub.80 = add i32 %div.neg.80, %mul.80
  store i32 %sub.80, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.80 = add nsw i32 %sub.80, %643
  %rem32.80 = srem i32 %add31.80, 100
  store i32 %rem32.80, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.80 = or i32 %rem32.80, 1
  %add33.80 = add nsw i32 %or.80, %rem17
  store i32 %add33.80, i32* @main.hot_data.1, align 4, !tbaa !10
  %645 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.80 = add nsw i32 %add33.80, %645
  store i32 %add42.80, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %646 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.80 = add i16 %646, 80
  %rem43171.80 = urem i16 %rem43.lhs.trunc.80, 100
  %cmp44.80 = icmp eq i16 %rem43171.80, 0
  br i1 %cmp44.80, label %if.then.80, label %if.end.80

if.then.80:                                       ; preds = %for.inc100.79
  %add48.80 = add nsw i32 %mid_vars.sroa.0.1.79, %rem9
  %mul49.80 = mul nsw i32 %local2.1.79, %add48.80
  %shr.80 = ashr i32 %mul49.80, 1
  %add51.80 = add nsw i32 %sub.80, %shr.80
  %call53.80 = tail call i32 @rand() #3
  %rem54.80 = srem i32 %call53.80, 5
  %add55.80 = add nsw i32 %rem54.80, %rem17
  %rem56.80 = srem i32 %add55.80, 100
  %647 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.80 = add nsw i32 %647, %shr.80
  %648 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.80 = add nsw i32 %add59.80, %648
  store i32 %add66.80, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.80, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.80, %for.inc100.79
  %mid_vars.sroa.0.1.80 = phi i32 [ %add51.80, %if.then.80 ], [ %mid_vars.sroa.0.1.79, %for.inc100.79 ]
  %mid_vars.sroa.10166.1.80 = phi i32 [ %mul49.80, %if.then.80 ], [ %mid_vars.sroa.10166.1.79, %for.inc100.79 ]
  %local2.1.80 = phi i32 [ %rem56.80, %if.then.80 ], [ %local2.1.79, %for.inc100.79 ]
  %rem70172.80 = urem i16 %rem43.lhs.trunc.80, 1000
  %cmp71.80 = icmp eq i16 %rem70172.80, 0
  br i1 %cmp71.80, label %if.then73.80, label %for.inc100.80

if.then73.80:                                     ; preds = %if.end.80
  %add74.80 = add nsw i32 %var1.1.79, %rem13
  %call79.80 = tail call i32 @rand() #3
  %rem80.80 = srem i32 %call79.80, 5
  br label %for.body87.80

for.body87.80:                                    ; preds = %for.body87.80, %if.then73.80
  %indvars.iv.80 = phi i64 [ 0, %if.then73.80 ], [ %indvars.iv.next.80, %for.body87.80 ]
  %call88.80 = tail call i32 @rand() #3
  %rem89.80 = srem i32 %call88.80, 100
  %649 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.80 = add nsw i32 %rem89.80, %649
  %rem93.lhs.trunc.80 = trunc i64 %indvars.iv.80 to i8
  %rem93173.80 = urem i8 %rem93.lhs.trunc.80, 10
  %idxprom94.80 = zext i8 %rem93173.80 to i64
  %arrayidx95.80 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.80, i64 %idxprom94.80
  store i32 %add90.80, i32* %arrayidx95.80, align 4, !tbaa !12
  %indvars.iv.next.80 = add nuw nsw i64 %indvars.iv.80, 1
  %exitcond.80.not = icmp eq i64 %indvars.iv.next.80, 10
  br i1 %exitcond.80.not, label %for.inc100.loopexit.80, label %for.body87.80, !llvm.loop !13

for.inc100.loopexit.80:                           ; preds = %for.body87.80
  %mul75.80 = mul nsw i32 %add74.80, %rem15
  %add81.80 = add nsw i32 %rem80.80, %rem78.sext
  br label %for.inc100.80

for.inc100.80:                                    ; preds = %for.inc100.loopexit.80, %if.end.80
  %var4.1.80 = phi i32 [ %var4.1.79, %if.end.80 ], [ %mul75.80, %for.inc100.loopexit.80 ]
  %var5.1.80 = phi i32 [ %var5.1.79, %if.end.80 ], [ %rem9, %for.inc100.loopexit.80 ]
  %var1.1.80 = phi i32 [ %var1.1.79, %if.end.80 ], [ %add81.80, %for.inc100.loopexit.80 ]
  %650 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.81 = mul nsw i32 %650, 3
  %651 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.81 = sdiv i32 %651, -2
  %sub.81 = add i32 %div.neg.81, %mul.81
  store i32 %sub.81, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.81 = add nsw i32 %sub.81, %650
  %rem32.81 = srem i32 %add31.81, 100
  store i32 %rem32.81, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.81 = or i32 %rem32.81, 1
  %add33.81 = add nsw i32 %or.81, %rem17
  store i32 %add33.81, i32* @main.hot_data.1, align 4, !tbaa !10
  %652 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.81 = add nsw i32 %add33.81, %652
  store i32 %add42.81, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %653 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.81 = add i16 %653, 81
  %rem43171.81 = urem i16 %rem43.lhs.trunc.81, 100
  %cmp44.81 = icmp eq i16 %rem43171.81, 0
  br i1 %cmp44.81, label %if.then.81, label %if.end.81

if.then.81:                                       ; preds = %for.inc100.80
  %add48.81 = add nsw i32 %mid_vars.sroa.0.1.80, %rem9
  %mul49.81 = mul nsw i32 %local2.1.80, %add48.81
  %shr.81 = ashr i32 %mul49.81, 1
  %add51.81 = add nsw i32 %sub.81, %shr.81
  %call53.81 = tail call i32 @rand() #3
  %rem54.81 = srem i32 %call53.81, 5
  %add55.81 = add nsw i32 %rem54.81, %rem17
  %rem56.81 = srem i32 %add55.81, 100
  %654 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.81 = add nsw i32 %654, %shr.81
  %655 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.81 = add nsw i32 %add59.81, %655
  store i32 %add66.81, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %656 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %656, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.81, %for.inc100.80
  %mid_vars.sroa.0.1.81 = phi i32 [ %add51.81, %if.then.81 ], [ %mid_vars.sroa.0.1.80, %for.inc100.80 ]
  %mid_vars.sroa.10166.1.81 = phi i32 [ %mul49.81, %if.then.81 ], [ %mid_vars.sroa.10166.1.80, %for.inc100.80 ]
  %local2.1.81 = phi i32 [ %rem56.81, %if.then.81 ], [ %local2.1.80, %for.inc100.80 ]
  %rem70172.81 = urem i16 %rem43.lhs.trunc.81, 1000
  %cmp71.81 = icmp eq i16 %rem70172.81, 0
  br i1 %cmp71.81, label %if.then73.81, label %for.inc100.81

if.then73.81:                                     ; preds = %if.end.81
  %add74.81 = add nsw i32 %var1.1.80, %rem13
  %call79.81 = tail call i32 @rand() #3
  %rem80.81 = srem i32 %call79.81, 5
  br label %for.body87.81

for.body87.81:                                    ; preds = %for.body87.81, %if.then73.81
  %indvars.iv.81 = phi i64 [ 0, %if.then73.81 ], [ %indvars.iv.next.81, %for.body87.81 ]
  %call88.81 = tail call i32 @rand() #3
  %rem89.81 = srem i32 %call88.81, 100
  %657 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.81 = add nsw i32 %rem89.81, %657
  %rem93.lhs.trunc.81 = trunc i64 %indvars.iv.81 to i8
  %rem93173.81 = urem i8 %rem93.lhs.trunc.81, 10
  %idxprom94.81 = zext i8 %rem93173.81 to i64
  %arrayidx95.81 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.81, i64 %idxprom94.81
  store i32 %add90.81, i32* %arrayidx95.81, align 4, !tbaa !12
  %indvars.iv.next.81 = add nuw nsw i64 %indvars.iv.81, 1
  %exitcond.81.not = icmp eq i64 %indvars.iv.next.81, 10
  br i1 %exitcond.81.not, label %for.inc100.loopexit.81, label %for.body87.81, !llvm.loop !13

for.inc100.loopexit.81:                           ; preds = %for.body87.81
  %mul75.81 = mul nsw i32 %add74.81, %rem15
  %add81.81 = add nsw i32 %rem80.81, %rem78.sext
  br label %for.inc100.81

for.inc100.81:                                    ; preds = %for.inc100.loopexit.81, %if.end.81
  %var4.1.81 = phi i32 [ %var4.1.80, %if.end.81 ], [ %mul75.81, %for.inc100.loopexit.81 ]
  %var5.1.81 = phi i32 [ %var5.1.80, %if.end.81 ], [ %rem9, %for.inc100.loopexit.81 ]
  %var1.1.81 = phi i32 [ %var1.1.80, %if.end.81 ], [ %add81.81, %for.inc100.loopexit.81 ]
  %658 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.82 = mul nsw i32 %658, 3
  %659 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.82 = sdiv i32 %659, -2
  %sub.82 = add i32 %div.neg.82, %mul.82
  store i32 %sub.82, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.82 = add nsw i32 %sub.82, %658
  %rem32.82 = srem i32 %add31.82, 100
  store i32 %rem32.82, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.82 = or i32 %rem32.82, 1
  %add33.82 = add nsw i32 %or.82, %rem17
  store i32 %add33.82, i32* @main.hot_data.1, align 4, !tbaa !10
  %660 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.82 = add nsw i32 %add33.82, %660
  store i32 %add42.82, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %661 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.82 = add i16 %661, 82
  %rem43171.82 = urem i16 %rem43.lhs.trunc.82, 100
  %cmp44.82 = icmp eq i16 %rem43171.82, 0
  br i1 %cmp44.82, label %if.then.82, label %if.end.82

if.then.82:                                       ; preds = %for.inc100.81
  %add48.82 = add nsw i32 %mid_vars.sroa.0.1.81, %rem9
  %mul49.82 = mul nsw i32 %local2.1.81, %add48.82
  %shr.82 = ashr i32 %mul49.82, 1
  %add51.82 = add nsw i32 %sub.82, %shr.82
  %call53.82 = tail call i32 @rand() #3
  %rem54.82 = srem i32 %call53.82, 5
  %add55.82 = add nsw i32 %rem54.82, %rem17
  %rem56.82 = srem i32 %add55.82, 100
  %662 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.82 = add nsw i32 %662, %shr.82
  %663 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.82 = add nsw i32 %add59.82, %663
  store i32 %add66.82, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %664 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %664, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.82, %for.inc100.81
  %mid_vars.sroa.0.1.82 = phi i32 [ %add51.82, %if.then.82 ], [ %mid_vars.sroa.0.1.81, %for.inc100.81 ]
  %mid_vars.sroa.10166.1.82 = phi i32 [ %mul49.82, %if.then.82 ], [ %mid_vars.sroa.10166.1.81, %for.inc100.81 ]
  %local2.1.82 = phi i32 [ %rem56.82, %if.then.82 ], [ %local2.1.81, %for.inc100.81 ]
  %rem70172.82 = urem i16 %rem43.lhs.trunc.82, 1000
  %cmp71.82 = icmp eq i16 %rem70172.82, 0
  br i1 %cmp71.82, label %if.then73.82, label %for.inc100.82

if.then73.82:                                     ; preds = %if.end.82
  %add74.82 = add nsw i32 %var1.1.81, %rem13
  %call79.82 = tail call i32 @rand() #3
  %rem80.82 = srem i32 %call79.82, 5
  br label %for.body87.82

for.body87.82:                                    ; preds = %for.body87.82, %if.then73.82
  %indvars.iv.82 = phi i64 [ 0, %if.then73.82 ], [ %indvars.iv.next.82, %for.body87.82 ]
  %call88.82 = tail call i32 @rand() #3
  %rem89.82 = srem i32 %call88.82, 100
  %665 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.82 = add nsw i32 %rem89.82, %665
  %rem93.lhs.trunc.82 = trunc i64 %indvars.iv.82 to i8
  %rem93173.82 = urem i8 %rem93.lhs.trunc.82, 10
  %idxprom94.82 = zext i8 %rem93173.82 to i64
  %arrayidx95.82 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.82, i64 %idxprom94.82
  store i32 %add90.82, i32* %arrayidx95.82, align 4, !tbaa !12
  %indvars.iv.next.82 = add nuw nsw i64 %indvars.iv.82, 1
  %exitcond.82.not = icmp eq i64 %indvars.iv.next.82, 10
  br i1 %exitcond.82.not, label %for.inc100.loopexit.82, label %for.body87.82, !llvm.loop !13

for.inc100.loopexit.82:                           ; preds = %for.body87.82
  %mul75.82 = mul nsw i32 %add74.82, %rem15
  %add81.82 = add nsw i32 %rem80.82, %rem78.sext
  br label %for.inc100.82

for.inc100.82:                                    ; preds = %for.inc100.loopexit.82, %if.end.82
  %var4.1.82 = phi i32 [ %var4.1.81, %if.end.82 ], [ %mul75.82, %for.inc100.loopexit.82 ]
  %var5.1.82 = phi i32 [ %var5.1.81, %if.end.82 ], [ %rem9, %for.inc100.loopexit.82 ]
  %var1.1.82 = phi i32 [ %var1.1.81, %if.end.82 ], [ %add81.82, %for.inc100.loopexit.82 ]
  %666 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.83 = mul nsw i32 %666, 3
  %667 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.83 = sdiv i32 %667, -2
  %sub.83 = add i32 %div.neg.83, %mul.83
  store i32 %sub.83, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.83 = add nsw i32 %sub.83, %666
  %rem32.83 = srem i32 %add31.83, 100
  store i32 %rem32.83, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.83 = or i32 %rem32.83, 1
  %add33.83 = add nsw i32 %or.83, %rem17
  store i32 %add33.83, i32* @main.hot_data.1, align 4, !tbaa !10
  %668 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.83 = add nsw i32 %add33.83, %668
  store i32 %add42.83, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %669 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.83 = add i16 %669, 83
  %rem43171.83 = urem i16 %rem43.lhs.trunc.83, 100
  %cmp44.83 = icmp eq i16 %rem43171.83, 0
  br i1 %cmp44.83, label %if.then.83, label %if.end.83

if.then.83:                                       ; preds = %for.inc100.82
  %add48.83 = add nsw i32 %mid_vars.sroa.0.1.82, %rem9
  %mul49.83 = mul nsw i32 %local2.1.82, %add48.83
  %shr.83 = ashr i32 %mul49.83, 1
  %add51.83 = add nsw i32 %sub.83, %shr.83
  %call53.83 = tail call i32 @rand() #3
  %rem54.83 = srem i32 %call53.83, 5
  %add55.83 = add nsw i32 %rem54.83, %rem17
  %rem56.83 = srem i32 %add55.83, 100
  %670 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.83 = add nsw i32 %670, %shr.83
  %671 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.83 = add nsw i32 %add59.83, %671
  store i32 %add66.83, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %672 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %672, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.83, %for.inc100.82
  %mid_vars.sroa.0.1.83 = phi i32 [ %add51.83, %if.then.83 ], [ %mid_vars.sroa.0.1.82, %for.inc100.82 ]
  %mid_vars.sroa.10166.1.83 = phi i32 [ %mul49.83, %if.then.83 ], [ %mid_vars.sroa.10166.1.82, %for.inc100.82 ]
  %local2.1.83 = phi i32 [ %rem56.83, %if.then.83 ], [ %local2.1.82, %for.inc100.82 ]
  %rem70172.83 = urem i16 %rem43.lhs.trunc.83, 1000
  %cmp71.83 = icmp eq i16 %rem70172.83, 0
  br i1 %cmp71.83, label %if.then73.83, label %for.inc100.83

if.then73.83:                                     ; preds = %if.end.83
  %add74.83 = add nsw i32 %var1.1.82, %rem13
  %call79.83 = tail call i32 @rand() #3
  %rem80.83 = srem i32 %call79.83, 5
  br label %for.body87.83

for.body87.83:                                    ; preds = %for.body87.83, %if.then73.83
  %indvars.iv.83 = phi i64 [ 0, %if.then73.83 ], [ %indvars.iv.next.83, %for.body87.83 ]
  %call88.83 = tail call i32 @rand() #3
  %rem89.83 = srem i32 %call88.83, 100
  %673 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.83 = add nsw i32 %rem89.83, %673
  %rem93.lhs.trunc.83 = trunc i64 %indvars.iv.83 to i8
  %rem93173.83 = urem i8 %rem93.lhs.trunc.83, 10
  %idxprom94.83 = zext i8 %rem93173.83 to i64
  %arrayidx95.83 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.83, i64 %idxprom94.83
  store i32 %add90.83, i32* %arrayidx95.83, align 4, !tbaa !12
  %indvars.iv.next.83 = add nuw nsw i64 %indvars.iv.83, 1
  %exitcond.83.not = icmp eq i64 %indvars.iv.next.83, 10
  br i1 %exitcond.83.not, label %for.inc100.loopexit.83, label %for.body87.83, !llvm.loop !13

for.inc100.loopexit.83:                           ; preds = %for.body87.83
  %mul75.83 = mul nsw i32 %add74.83, %rem15
  %add81.83 = add nsw i32 %rem80.83, %rem78.sext
  br label %for.inc100.83

for.inc100.83:                                    ; preds = %for.inc100.loopexit.83, %if.end.83
  %var4.1.83 = phi i32 [ %var4.1.82, %if.end.83 ], [ %mul75.83, %for.inc100.loopexit.83 ]
  %var5.1.83 = phi i32 [ %var5.1.82, %if.end.83 ], [ %rem9, %for.inc100.loopexit.83 ]
  %var1.1.83 = phi i32 [ %var1.1.82, %if.end.83 ], [ %add81.83, %for.inc100.loopexit.83 ]
  %674 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.84 = mul nsw i32 %674, 3
  %675 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.84 = sdiv i32 %675, -2
  %sub.84 = add i32 %div.neg.84, %mul.84
  store i32 %sub.84, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.84 = add nsw i32 %sub.84, %674
  %rem32.84 = srem i32 %add31.84, 100
  store i32 %rem32.84, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.84 = or i32 %rem32.84, 1
  %add33.84 = add nsw i32 %or.84, %rem17
  store i32 %add33.84, i32* @main.hot_data.1, align 4, !tbaa !10
  %676 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.84 = add nsw i32 %add33.84, %676
  store i32 %add42.84, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %677 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.84 = add i16 %677, 84
  %rem43171.84 = urem i16 %rem43.lhs.trunc.84, 100
  %cmp44.84 = icmp eq i16 %rem43171.84, 0
  br i1 %cmp44.84, label %if.then.84, label %if.end.84

if.then.84:                                       ; preds = %for.inc100.83
  %add48.84 = add nsw i32 %mid_vars.sroa.0.1.83, %rem9
  %mul49.84 = mul nsw i32 %local2.1.83, %add48.84
  %shr.84 = ashr i32 %mul49.84, 1
  %add51.84 = add nsw i32 %sub.84, %shr.84
  %call53.84 = tail call i32 @rand() #3
  %rem54.84 = srem i32 %call53.84, 5
  %add55.84 = add nsw i32 %rem54.84, %rem17
  %rem56.84 = srem i32 %add55.84, 100
  %678 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.84 = add nsw i32 %678, %shr.84
  %679 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.84 = add nsw i32 %add59.84, %679
  store i32 %add66.84, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %680 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %680, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.84, %for.inc100.83
  %mid_vars.sroa.0.1.84 = phi i32 [ %add51.84, %if.then.84 ], [ %mid_vars.sroa.0.1.83, %for.inc100.83 ]
  %mid_vars.sroa.10166.1.84 = phi i32 [ %mul49.84, %if.then.84 ], [ %mid_vars.sroa.10166.1.83, %for.inc100.83 ]
  %local2.1.84 = phi i32 [ %rem56.84, %if.then.84 ], [ %local2.1.83, %for.inc100.83 ]
  %rem70172.84 = urem i16 %rem43.lhs.trunc.84, 1000
  %cmp71.84 = icmp eq i16 %rem70172.84, 0
  br i1 %cmp71.84, label %if.then73.84, label %for.inc100.84

if.then73.84:                                     ; preds = %if.end.84
  %add74.84 = add nsw i32 %var1.1.83, %rem13
  %call79.84 = tail call i32 @rand() #3
  %rem80.84 = srem i32 %call79.84, 5
  br label %for.body87.84

for.body87.84:                                    ; preds = %for.body87.84, %if.then73.84
  %indvars.iv.84 = phi i64 [ 0, %if.then73.84 ], [ %indvars.iv.next.84, %for.body87.84 ]
  %call88.84 = tail call i32 @rand() #3
  %rem89.84 = srem i32 %call88.84, 100
  %681 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.84 = add nsw i32 %rem89.84, %681
  %rem93.lhs.trunc.84 = trunc i64 %indvars.iv.84 to i8
  %rem93173.84 = urem i8 %rem93.lhs.trunc.84, 10
  %idxprom94.84 = zext i8 %rem93173.84 to i64
  %arrayidx95.84 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.84, i64 %idxprom94.84
  store i32 %add90.84, i32* %arrayidx95.84, align 4, !tbaa !12
  %indvars.iv.next.84 = add nuw nsw i64 %indvars.iv.84, 1
  %exitcond.84.not = icmp eq i64 %indvars.iv.next.84, 10
  br i1 %exitcond.84.not, label %for.inc100.loopexit.84, label %for.body87.84, !llvm.loop !13

for.inc100.loopexit.84:                           ; preds = %for.body87.84
  %mul75.84 = mul nsw i32 %add74.84, %rem15
  %add81.84 = add nsw i32 %rem80.84, %rem78.sext
  br label %for.inc100.84

for.inc100.84:                                    ; preds = %for.inc100.loopexit.84, %if.end.84
  %var4.1.84 = phi i32 [ %var4.1.83, %if.end.84 ], [ %mul75.84, %for.inc100.loopexit.84 ]
  %var5.1.84 = phi i32 [ %var5.1.83, %if.end.84 ], [ %rem9, %for.inc100.loopexit.84 ]
  %var1.1.84 = phi i32 [ %var1.1.83, %if.end.84 ], [ %add81.84, %for.inc100.loopexit.84 ]
  %682 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.85 = mul nsw i32 %682, 3
  %683 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.85 = sdiv i32 %683, -2
  %sub.85 = add i32 %div.neg.85, %mul.85
  store i32 %sub.85, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.85 = add nsw i32 %sub.85, %682
  %rem32.85 = srem i32 %add31.85, 100
  store i32 %rem32.85, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.85 = or i32 %rem32.85, 1
  %add33.85 = add nsw i32 %or.85, %rem17
  store i32 %add33.85, i32* @main.hot_data.1, align 4, !tbaa !10
  %684 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.85 = add nsw i32 %add33.85, %684
  store i32 %add42.85, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %685 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.85 = add i16 %685, 85
  %rem43171.85 = urem i16 %rem43.lhs.trunc.85, 100
  %cmp44.85 = icmp eq i16 %rem43171.85, 0
  br i1 %cmp44.85, label %if.then.85, label %if.end.85

if.then.85:                                       ; preds = %for.inc100.84
  %add48.85 = add nsw i32 %mid_vars.sroa.0.1.84, %rem9
  %mul49.85 = mul nsw i32 %local2.1.84, %add48.85
  %shr.85 = ashr i32 %mul49.85, 1
  %add51.85 = add nsw i32 %sub.85, %shr.85
  %call53.85 = tail call i32 @rand() #3
  %rem54.85 = srem i32 %call53.85, 5
  %add55.85 = add nsw i32 %rem54.85, %rem17
  %rem56.85 = srem i32 %add55.85, 100
  %686 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.85 = add nsw i32 %686, %shr.85
  %687 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.85 = add nsw i32 %add59.85, %687
  store i32 %add66.85, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %688 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %688, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.85, %for.inc100.84
  %mid_vars.sroa.0.1.85 = phi i32 [ %add51.85, %if.then.85 ], [ %mid_vars.sroa.0.1.84, %for.inc100.84 ]
  %mid_vars.sroa.10166.1.85 = phi i32 [ %mul49.85, %if.then.85 ], [ %mid_vars.sroa.10166.1.84, %for.inc100.84 ]
  %local2.1.85 = phi i32 [ %rem56.85, %if.then.85 ], [ %local2.1.84, %for.inc100.84 ]
  %rem70172.85 = urem i16 %rem43.lhs.trunc.85, 1000
  %cmp71.85 = icmp eq i16 %rem70172.85, 0
  br i1 %cmp71.85, label %if.then73.85, label %for.inc100.85

if.then73.85:                                     ; preds = %if.end.85
  %add74.85 = add nsw i32 %var1.1.84, %rem13
  %call79.85 = tail call i32 @rand() #3
  %rem80.85 = srem i32 %call79.85, 5
  br label %for.body87.85

for.body87.85:                                    ; preds = %for.body87.85, %if.then73.85
  %indvars.iv.85 = phi i64 [ 0, %if.then73.85 ], [ %indvars.iv.next.85, %for.body87.85 ]
  %call88.85 = tail call i32 @rand() #3
  %rem89.85 = srem i32 %call88.85, 100
  %689 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.85 = add nsw i32 %rem89.85, %689
  %rem93.lhs.trunc.85 = trunc i64 %indvars.iv.85 to i8
  %rem93173.85 = urem i8 %rem93.lhs.trunc.85, 10
  %idxprom94.85 = zext i8 %rem93173.85 to i64
  %arrayidx95.85 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.85, i64 %idxprom94.85
  store i32 %add90.85, i32* %arrayidx95.85, align 4, !tbaa !12
  %indvars.iv.next.85 = add nuw nsw i64 %indvars.iv.85, 1
  %exitcond.85.not = icmp eq i64 %indvars.iv.next.85, 10
  br i1 %exitcond.85.not, label %for.inc100.loopexit.85, label %for.body87.85, !llvm.loop !13

for.inc100.loopexit.85:                           ; preds = %for.body87.85
  %mul75.85 = mul nsw i32 %add74.85, %rem15
  %add81.85 = add nsw i32 %rem80.85, %rem78.sext
  br label %for.inc100.85

for.inc100.85:                                    ; preds = %for.inc100.loopexit.85, %if.end.85
  %var4.1.85 = phi i32 [ %var4.1.84, %if.end.85 ], [ %mul75.85, %for.inc100.loopexit.85 ]
  %var5.1.85 = phi i32 [ %var5.1.84, %if.end.85 ], [ %rem9, %for.inc100.loopexit.85 ]
  %var1.1.85 = phi i32 [ %var1.1.84, %if.end.85 ], [ %add81.85, %for.inc100.loopexit.85 ]
  %690 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.86 = mul nsw i32 %690, 3
  %691 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.86 = sdiv i32 %691, -2
  %sub.86 = add i32 %div.neg.86, %mul.86
  store i32 %sub.86, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.86 = add nsw i32 %sub.86, %690
  %rem32.86 = srem i32 %add31.86, 100
  store i32 %rem32.86, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.86 = or i32 %rem32.86, 1
  %add33.86 = add nsw i32 %or.86, %rem17
  store i32 %add33.86, i32* @main.hot_data.1, align 4, !tbaa !10
  %692 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.86 = add nsw i32 %add33.86, %692
  store i32 %add42.86, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %693 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.86 = add i16 %693, 86
  %rem43171.86 = urem i16 %rem43.lhs.trunc.86, 100
  %cmp44.86 = icmp eq i16 %rem43171.86, 0
  br i1 %cmp44.86, label %if.then.86, label %if.end.86

if.then.86:                                       ; preds = %for.inc100.85
  %add48.86 = add nsw i32 %mid_vars.sroa.0.1.85, %rem9
  %mul49.86 = mul nsw i32 %local2.1.85, %add48.86
  %shr.86 = ashr i32 %mul49.86, 1
  %add51.86 = add nsw i32 %sub.86, %shr.86
  %call53.86 = tail call i32 @rand() #3
  %rem54.86 = srem i32 %call53.86, 5
  %add55.86 = add nsw i32 %rem54.86, %rem17
  %rem56.86 = srem i32 %add55.86, 100
  %694 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.86 = add nsw i32 %694, %shr.86
  %695 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.86 = add nsw i32 %add59.86, %695
  store i32 %add66.86, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %696 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %696, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.86, %for.inc100.85
  %mid_vars.sroa.0.1.86 = phi i32 [ %add51.86, %if.then.86 ], [ %mid_vars.sroa.0.1.85, %for.inc100.85 ]
  %mid_vars.sroa.10166.1.86 = phi i32 [ %mul49.86, %if.then.86 ], [ %mid_vars.sroa.10166.1.85, %for.inc100.85 ]
  %local2.1.86 = phi i32 [ %rem56.86, %if.then.86 ], [ %local2.1.85, %for.inc100.85 ]
  %rem70172.86 = urem i16 %rem43.lhs.trunc.86, 1000
  %cmp71.86 = icmp eq i16 %rem70172.86, 0
  br i1 %cmp71.86, label %if.then73.86, label %for.inc100.86

if.then73.86:                                     ; preds = %if.end.86
  %add74.86 = add nsw i32 %var1.1.85, %rem13
  %call79.86 = tail call i32 @rand() #3
  %rem80.86 = srem i32 %call79.86, 5
  br label %for.body87.86

for.body87.86:                                    ; preds = %for.body87.86, %if.then73.86
  %indvars.iv.86 = phi i64 [ 0, %if.then73.86 ], [ %indvars.iv.next.86, %for.body87.86 ]
  %call88.86 = tail call i32 @rand() #3
  %rem89.86 = srem i32 %call88.86, 100
  %697 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.86 = add nsw i32 %rem89.86, %697
  %rem93.lhs.trunc.86 = trunc i64 %indvars.iv.86 to i8
  %rem93173.86 = urem i8 %rem93.lhs.trunc.86, 10
  %idxprom94.86 = zext i8 %rem93173.86 to i64
  %arrayidx95.86 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.86, i64 %idxprom94.86
  store i32 %add90.86, i32* %arrayidx95.86, align 4, !tbaa !12
  %indvars.iv.next.86 = add nuw nsw i64 %indvars.iv.86, 1
  %exitcond.86.not = icmp eq i64 %indvars.iv.next.86, 10
  br i1 %exitcond.86.not, label %for.inc100.loopexit.86, label %for.body87.86, !llvm.loop !13

for.inc100.loopexit.86:                           ; preds = %for.body87.86
  %mul75.86 = mul nsw i32 %add74.86, %rem15
  %add81.86 = add nsw i32 %rem80.86, %rem78.sext
  br label %for.inc100.86

for.inc100.86:                                    ; preds = %for.inc100.loopexit.86, %if.end.86
  %var4.1.86 = phi i32 [ %var4.1.85, %if.end.86 ], [ %mul75.86, %for.inc100.loopexit.86 ]
  %var5.1.86 = phi i32 [ %var5.1.85, %if.end.86 ], [ %rem9, %for.inc100.loopexit.86 ]
  %var1.1.86 = phi i32 [ %var1.1.85, %if.end.86 ], [ %add81.86, %for.inc100.loopexit.86 ]
  %698 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.87 = mul nsw i32 %698, 3
  %699 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.87 = sdiv i32 %699, -2
  %sub.87 = add i32 %div.neg.87, %mul.87
  store i32 %sub.87, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.87 = add nsw i32 %sub.87, %698
  %rem32.87 = srem i32 %add31.87, 100
  store i32 %rem32.87, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.87 = or i32 %rem32.87, 1
  %add33.87 = add nsw i32 %or.87, %rem17
  store i32 %add33.87, i32* @main.hot_data.1, align 4, !tbaa !10
  %700 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.87 = add nsw i32 %add33.87, %700
  store i32 %add42.87, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %701 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.87 = add i16 %701, 87
  %rem43171.87 = urem i16 %rem43.lhs.trunc.87, 100
  %cmp44.87 = icmp eq i16 %rem43171.87, 0
  br i1 %cmp44.87, label %if.then.87, label %if.end.87

if.then.87:                                       ; preds = %for.inc100.86
  %add48.87 = add nsw i32 %mid_vars.sroa.0.1.86, %rem9
  %mul49.87 = mul nsw i32 %local2.1.86, %add48.87
  %shr.87 = ashr i32 %mul49.87, 1
  %add51.87 = add nsw i32 %sub.87, %shr.87
  %call53.87 = tail call i32 @rand() #3
  %rem54.87 = srem i32 %call53.87, 5
  %add55.87 = add nsw i32 %rem54.87, %rem17
  %rem56.87 = srem i32 %add55.87, 100
  %702 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.87 = add nsw i32 %702, %shr.87
  %703 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.87 = add nsw i32 %add59.87, %703
  store i32 %add66.87, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %704 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %704, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.87, %for.inc100.86
  %mid_vars.sroa.0.1.87 = phi i32 [ %add51.87, %if.then.87 ], [ %mid_vars.sroa.0.1.86, %for.inc100.86 ]
  %mid_vars.sroa.10166.1.87 = phi i32 [ %mul49.87, %if.then.87 ], [ %mid_vars.sroa.10166.1.86, %for.inc100.86 ]
  %local2.1.87 = phi i32 [ %rem56.87, %if.then.87 ], [ %local2.1.86, %for.inc100.86 ]
  %rem70172.87 = urem i16 %rem43.lhs.trunc.87, 1000
  %cmp71.87 = icmp eq i16 %rem70172.87, 0
  br i1 %cmp71.87, label %if.then73.87, label %for.inc100.87

if.then73.87:                                     ; preds = %if.end.87
  %add74.87 = add nsw i32 %var1.1.86, %rem13
  %call79.87 = tail call i32 @rand() #3
  %rem80.87 = srem i32 %call79.87, 5
  br label %for.body87.87

for.body87.87:                                    ; preds = %for.body87.87, %if.then73.87
  %indvars.iv.87 = phi i64 [ 0, %if.then73.87 ], [ %indvars.iv.next.87, %for.body87.87 ]
  %call88.87 = tail call i32 @rand() #3
  %rem89.87 = srem i32 %call88.87, 100
  %705 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.87 = add nsw i32 %rem89.87, %705
  %rem93.lhs.trunc.87 = trunc i64 %indvars.iv.87 to i8
  %rem93173.87 = urem i8 %rem93.lhs.trunc.87, 10
  %idxprom94.87 = zext i8 %rem93173.87 to i64
  %arrayidx95.87 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.87, i64 %idxprom94.87
  store i32 %add90.87, i32* %arrayidx95.87, align 4, !tbaa !12
  %indvars.iv.next.87 = add nuw nsw i64 %indvars.iv.87, 1
  %exitcond.87.not = icmp eq i64 %indvars.iv.next.87, 10
  br i1 %exitcond.87.not, label %for.inc100.loopexit.87, label %for.body87.87, !llvm.loop !13

for.inc100.loopexit.87:                           ; preds = %for.body87.87
  %mul75.87 = mul nsw i32 %add74.87, %rem15
  %add81.87 = add nsw i32 %rem80.87, %rem78.sext
  br label %for.inc100.87

for.inc100.87:                                    ; preds = %for.inc100.loopexit.87, %if.end.87
  %var4.1.87 = phi i32 [ %var4.1.86, %if.end.87 ], [ %mul75.87, %for.inc100.loopexit.87 ]
  %var5.1.87 = phi i32 [ %var5.1.86, %if.end.87 ], [ %rem9, %for.inc100.loopexit.87 ]
  %var1.1.87 = phi i32 [ %var1.1.86, %if.end.87 ], [ %add81.87, %for.inc100.loopexit.87 ]
  %706 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.88 = mul nsw i32 %706, 3
  %707 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.88 = sdiv i32 %707, -2
  %sub.88 = add i32 %div.neg.88, %mul.88
  store i32 %sub.88, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.88 = add nsw i32 %sub.88, %706
  %rem32.88 = srem i32 %add31.88, 100
  store i32 %rem32.88, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.88 = or i32 %rem32.88, 1
  %add33.88 = add nsw i32 %or.88, %rem17
  store i32 %add33.88, i32* @main.hot_data.1, align 4, !tbaa !10
  %708 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.88 = add nsw i32 %add33.88, %708
  store i32 %add42.88, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %709 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.88 = add i16 %709, 88
  %rem43171.88 = urem i16 %rem43.lhs.trunc.88, 100
  %cmp44.88 = icmp eq i16 %rem43171.88, 0
  br i1 %cmp44.88, label %if.then.88, label %if.end.88

if.then.88:                                       ; preds = %for.inc100.87
  %add48.88 = add nsw i32 %mid_vars.sroa.0.1.87, %rem9
  %mul49.88 = mul nsw i32 %local2.1.87, %add48.88
  %shr.88 = ashr i32 %mul49.88, 1
  %add51.88 = add nsw i32 %sub.88, %shr.88
  %call53.88 = tail call i32 @rand() #3
  %rem54.88 = srem i32 %call53.88, 5
  %add55.88 = add nsw i32 %rem54.88, %rem17
  %rem56.88 = srem i32 %add55.88, 100
  %710 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.88 = add nsw i32 %710, %shr.88
  %711 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.88 = add nsw i32 %add59.88, %711
  store i32 %add66.88, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %712 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %712, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.88, %for.inc100.87
  %mid_vars.sroa.0.1.88 = phi i32 [ %add51.88, %if.then.88 ], [ %mid_vars.sroa.0.1.87, %for.inc100.87 ]
  %mid_vars.sroa.10166.1.88 = phi i32 [ %mul49.88, %if.then.88 ], [ %mid_vars.sroa.10166.1.87, %for.inc100.87 ]
  %local2.1.88 = phi i32 [ %rem56.88, %if.then.88 ], [ %local2.1.87, %for.inc100.87 ]
  %rem70172.88 = urem i16 %rem43.lhs.trunc.88, 1000
  %cmp71.88 = icmp eq i16 %rem70172.88, 0
  br i1 %cmp71.88, label %if.then73.88, label %for.inc100.88

if.then73.88:                                     ; preds = %if.end.88
  %add74.88 = add nsw i32 %var1.1.87, %rem13
  %call79.88 = tail call i32 @rand() #3
  %rem80.88 = srem i32 %call79.88, 5
  br label %for.body87.88

for.body87.88:                                    ; preds = %for.body87.88, %if.then73.88
  %indvars.iv.88 = phi i64 [ 0, %if.then73.88 ], [ %indvars.iv.next.88, %for.body87.88 ]
  %call88.88 = tail call i32 @rand() #3
  %rem89.88 = srem i32 %call88.88, 100
  %713 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.88 = add nsw i32 %rem89.88, %713
  %rem93.lhs.trunc.88 = trunc i64 %indvars.iv.88 to i8
  %rem93173.88 = urem i8 %rem93.lhs.trunc.88, 10
  %idxprom94.88 = zext i8 %rem93173.88 to i64
  %arrayidx95.88 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.88, i64 %idxprom94.88
  store i32 %add90.88, i32* %arrayidx95.88, align 4, !tbaa !12
  %indvars.iv.next.88 = add nuw nsw i64 %indvars.iv.88, 1
  %exitcond.88.not = icmp eq i64 %indvars.iv.next.88, 10
  br i1 %exitcond.88.not, label %for.inc100.loopexit.88, label %for.body87.88, !llvm.loop !13

for.inc100.loopexit.88:                           ; preds = %for.body87.88
  %mul75.88 = mul nsw i32 %add74.88, %rem15
  %add81.88 = add nsw i32 %rem80.88, %rem78.sext
  br label %for.inc100.88

for.inc100.88:                                    ; preds = %for.inc100.loopexit.88, %if.end.88
  %var4.1.88 = phi i32 [ %var4.1.87, %if.end.88 ], [ %mul75.88, %for.inc100.loopexit.88 ]
  %var5.1.88 = phi i32 [ %var5.1.87, %if.end.88 ], [ %rem9, %for.inc100.loopexit.88 ]
  %var1.1.88 = phi i32 [ %var1.1.87, %if.end.88 ], [ %add81.88, %for.inc100.loopexit.88 ]
  %714 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.89 = mul nsw i32 %714, 3
  %715 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.89 = sdiv i32 %715, -2
  %sub.89 = add i32 %div.neg.89, %mul.89
  store i32 %sub.89, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.89 = add nsw i32 %sub.89, %714
  %rem32.89 = srem i32 %add31.89, 100
  store i32 %rem32.89, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.89 = or i32 %rem32.89, 1
  %add33.89 = add nsw i32 %or.89, %rem17
  store i32 %add33.89, i32* @main.hot_data.1, align 4, !tbaa !10
  %716 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.89 = add nsw i32 %add33.89, %716
  store i32 %add42.89, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %717 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.89 = add i16 %717, 89
  %rem43171.89 = urem i16 %rem43.lhs.trunc.89, 100
  %cmp44.89 = icmp eq i16 %rem43171.89, 0
  br i1 %cmp44.89, label %if.then.89, label %if.end.89

if.then.89:                                       ; preds = %for.inc100.88
  %add48.89 = add nsw i32 %mid_vars.sroa.0.1.88, %rem9
  %mul49.89 = mul nsw i32 %local2.1.88, %add48.89
  %shr.89 = ashr i32 %mul49.89, 1
  %add51.89 = add nsw i32 %sub.89, %shr.89
  %call53.89 = tail call i32 @rand() #3
  %rem54.89 = srem i32 %call53.89, 5
  %add55.89 = add nsw i32 %rem54.89, %rem17
  %rem56.89 = srem i32 %add55.89, 100
  %718 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.89 = add nsw i32 %718, %shr.89
  %719 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.89 = add nsw i32 %add59.89, %719
  store i32 %add66.89, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %720 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %720, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.89, %for.inc100.88
  %mid_vars.sroa.0.1.89 = phi i32 [ %add51.89, %if.then.89 ], [ %mid_vars.sroa.0.1.88, %for.inc100.88 ]
  %mid_vars.sroa.10166.1.89 = phi i32 [ %mul49.89, %if.then.89 ], [ %mid_vars.sroa.10166.1.88, %for.inc100.88 ]
  %local2.1.89 = phi i32 [ %rem56.89, %if.then.89 ], [ %local2.1.88, %for.inc100.88 ]
  %rem70172.89 = urem i16 %rem43.lhs.trunc.89, 1000
  %cmp71.89 = icmp eq i16 %rem70172.89, 0
  br i1 %cmp71.89, label %if.then73.89, label %for.inc100.89

if.then73.89:                                     ; preds = %if.end.89
  %add74.89 = add nsw i32 %var1.1.88, %rem13
  %call79.89 = tail call i32 @rand() #3
  %rem80.89 = srem i32 %call79.89, 5
  br label %for.body87.89

for.body87.89:                                    ; preds = %for.body87.89, %if.then73.89
  %indvars.iv.89 = phi i64 [ 0, %if.then73.89 ], [ %indvars.iv.next.89, %for.body87.89 ]
  %call88.89 = tail call i32 @rand() #3
  %rem89.89 = srem i32 %call88.89, 100
  %721 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.89 = add nsw i32 %rem89.89, %721
  %rem93.lhs.trunc.89 = trunc i64 %indvars.iv.89 to i8
  %rem93173.89 = urem i8 %rem93.lhs.trunc.89, 10
  %idxprom94.89 = zext i8 %rem93173.89 to i64
  %arrayidx95.89 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.89, i64 %idxprom94.89
  store i32 %add90.89, i32* %arrayidx95.89, align 4, !tbaa !12
  %indvars.iv.next.89 = add nuw nsw i64 %indvars.iv.89, 1
  %exitcond.89.not = icmp eq i64 %indvars.iv.next.89, 10
  br i1 %exitcond.89.not, label %for.inc100.loopexit.89, label %for.body87.89, !llvm.loop !13

for.inc100.loopexit.89:                           ; preds = %for.body87.89
  %mul75.89 = mul nsw i32 %add74.89, %rem15
  %add81.89 = add nsw i32 %rem80.89, %rem78.sext
  br label %for.inc100.89

for.inc100.89:                                    ; preds = %for.inc100.loopexit.89, %if.end.89
  %var4.1.89 = phi i32 [ %var4.1.88, %if.end.89 ], [ %mul75.89, %for.inc100.loopexit.89 ]
  %var5.1.89 = phi i32 [ %var5.1.88, %if.end.89 ], [ %rem9, %for.inc100.loopexit.89 ]
  %var1.1.89 = phi i32 [ %var1.1.88, %if.end.89 ], [ %add81.89, %for.inc100.loopexit.89 ]
  %722 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.90 = mul nsw i32 %722, 3
  %723 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.90 = sdiv i32 %723, -2
  %sub.90 = add i32 %div.neg.90, %mul.90
  store i32 %sub.90, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.90 = add nsw i32 %sub.90, %722
  %rem32.90 = srem i32 %add31.90, 100
  store i32 %rem32.90, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.90 = or i32 %rem32.90, 1
  %add33.90 = add nsw i32 %or.90, %rem17
  store i32 %add33.90, i32* @main.hot_data.1, align 4, !tbaa !10
  %724 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.90 = add nsw i32 %add33.90, %724
  store i32 %add42.90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %725 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.90 = add i16 %725, 90
  %rem43171.90 = urem i16 %rem43.lhs.trunc.90, 100
  %cmp44.90 = icmp eq i16 %rem43171.90, 0
  br i1 %cmp44.90, label %if.then.90, label %if.end.90

if.then.90:                                       ; preds = %for.inc100.89
  %add48.90 = add nsw i32 %mid_vars.sroa.0.1.89, %rem9
  %mul49.90 = mul nsw i32 %local2.1.89, %add48.90
  %shr.90 = ashr i32 %mul49.90, 1
  %add51.90 = add nsw i32 %sub.90, %shr.90
  %call53.90 = tail call i32 @rand() #3
  %rem54.90 = srem i32 %call53.90, 5
  %add55.90 = add nsw i32 %rem54.90, %rem17
  %rem56.90 = srem i32 %add55.90, 100
  %726 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.90 = add nsw i32 %726, %shr.90
  %727 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.90 = add nsw i32 %add59.90, %727
  store i32 %add66.90, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.90, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.90, %for.inc100.89
  %mid_vars.sroa.0.1.90 = phi i32 [ %add51.90, %if.then.90 ], [ %mid_vars.sroa.0.1.89, %for.inc100.89 ]
  %mid_vars.sroa.10166.1.90 = phi i32 [ %mul49.90, %if.then.90 ], [ %mid_vars.sroa.10166.1.89, %for.inc100.89 ]
  %local2.1.90 = phi i32 [ %rem56.90, %if.then.90 ], [ %local2.1.89, %for.inc100.89 ]
  %rem70172.90 = urem i16 %rem43.lhs.trunc.90, 1000
  %cmp71.90 = icmp eq i16 %rem70172.90, 0
  br i1 %cmp71.90, label %if.then73.90, label %for.inc100.90

if.then73.90:                                     ; preds = %if.end.90
  %add74.90 = add nsw i32 %var1.1.89, %rem13
  %call79.90 = tail call i32 @rand() #3
  %rem80.90 = srem i32 %call79.90, 5
  br label %for.body87.90

for.body87.90:                                    ; preds = %for.body87.90, %if.then73.90
  %indvars.iv.90 = phi i64 [ 0, %if.then73.90 ], [ %indvars.iv.next.90, %for.body87.90 ]
  %call88.90 = tail call i32 @rand() #3
  %rem89.90 = srem i32 %call88.90, 100
  %728 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.90 = add nsw i32 %rem89.90, %728
  %rem93.lhs.trunc.90 = trunc i64 %indvars.iv.90 to i8
  %rem93173.90 = urem i8 %rem93.lhs.trunc.90, 10
  %idxprom94.90 = zext i8 %rem93173.90 to i64
  %arrayidx95.90 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.90, i64 %idxprom94.90
  store i32 %add90.90, i32* %arrayidx95.90, align 4, !tbaa !12
  %indvars.iv.next.90 = add nuw nsw i64 %indvars.iv.90, 1
  %exitcond.90.not = icmp eq i64 %indvars.iv.next.90, 10
  br i1 %exitcond.90.not, label %for.inc100.loopexit.90, label %for.body87.90, !llvm.loop !13

for.inc100.loopexit.90:                           ; preds = %for.body87.90
  %mul75.90 = mul nsw i32 %add74.90, %rem15
  %add81.90 = add nsw i32 %rem80.90, %rem78.sext
  br label %for.inc100.90

for.inc100.90:                                    ; preds = %for.inc100.loopexit.90, %if.end.90
  %var4.1.90 = phi i32 [ %var4.1.89, %if.end.90 ], [ %mul75.90, %for.inc100.loopexit.90 ]
  %var5.1.90 = phi i32 [ %var5.1.89, %if.end.90 ], [ %rem9, %for.inc100.loopexit.90 ]
  %var1.1.90 = phi i32 [ %var1.1.89, %if.end.90 ], [ %add81.90, %for.inc100.loopexit.90 ]
  %729 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.91 = mul nsw i32 %729, 3
  %730 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.91 = sdiv i32 %730, -2
  %sub.91 = add i32 %div.neg.91, %mul.91
  store i32 %sub.91, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.91 = add nsw i32 %sub.91, %729
  %rem32.91 = srem i32 %add31.91, 100
  store i32 %rem32.91, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.91 = or i32 %rem32.91, 1
  %add33.91 = add nsw i32 %or.91, %rem17
  store i32 %add33.91, i32* @main.hot_data.1, align 4, !tbaa !10
  %731 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.91 = add nsw i32 %add33.91, %731
  store i32 %add42.91, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %732 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.91 = add i16 %732, 91
  %rem43171.91 = urem i16 %rem43.lhs.trunc.91, 100
  %cmp44.91 = icmp eq i16 %rem43171.91, 0
  br i1 %cmp44.91, label %if.then.91, label %if.end.91

if.then.91:                                       ; preds = %for.inc100.90
  %add48.91 = add nsw i32 %mid_vars.sroa.0.1.90, %rem9
  %mul49.91 = mul nsw i32 %local2.1.90, %add48.91
  %shr.91 = ashr i32 %mul49.91, 1
  %add51.91 = add nsw i32 %sub.91, %shr.91
  %call53.91 = tail call i32 @rand() #3
  %rem54.91 = srem i32 %call53.91, 5
  %add55.91 = add nsw i32 %rem54.91, %rem17
  %rem56.91 = srem i32 %add55.91, 100
  %733 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.91 = add nsw i32 %733, %shr.91
  %734 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.91 = add nsw i32 %add59.91, %734
  store i32 %add66.91, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %735 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %735, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.91, %for.inc100.90
  %mid_vars.sroa.0.1.91 = phi i32 [ %add51.91, %if.then.91 ], [ %mid_vars.sroa.0.1.90, %for.inc100.90 ]
  %mid_vars.sroa.10166.1.91 = phi i32 [ %mul49.91, %if.then.91 ], [ %mid_vars.sroa.10166.1.90, %for.inc100.90 ]
  %local2.1.91 = phi i32 [ %rem56.91, %if.then.91 ], [ %local2.1.90, %for.inc100.90 ]
  %rem70172.91 = urem i16 %rem43.lhs.trunc.91, 1000
  %cmp71.91 = icmp eq i16 %rem70172.91, 0
  br i1 %cmp71.91, label %if.then73.91, label %for.inc100.91

if.then73.91:                                     ; preds = %if.end.91
  %add74.91 = add nsw i32 %var1.1.90, %rem13
  %call79.91 = tail call i32 @rand() #3
  %rem80.91 = srem i32 %call79.91, 5
  br label %for.body87.91

for.body87.91:                                    ; preds = %for.body87.91, %if.then73.91
  %indvars.iv.91 = phi i64 [ 0, %if.then73.91 ], [ %indvars.iv.next.91, %for.body87.91 ]
  %call88.91 = tail call i32 @rand() #3
  %rem89.91 = srem i32 %call88.91, 100
  %736 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.91 = add nsw i32 %rem89.91, %736
  %rem93.lhs.trunc.91 = trunc i64 %indvars.iv.91 to i8
  %rem93173.91 = urem i8 %rem93.lhs.trunc.91, 10
  %idxprom94.91 = zext i8 %rem93173.91 to i64
  %arrayidx95.91 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.91, i64 %idxprom94.91
  store i32 %add90.91, i32* %arrayidx95.91, align 4, !tbaa !12
  %indvars.iv.next.91 = add nuw nsw i64 %indvars.iv.91, 1
  %exitcond.91.not = icmp eq i64 %indvars.iv.next.91, 10
  br i1 %exitcond.91.not, label %for.inc100.loopexit.91, label %for.body87.91, !llvm.loop !13

for.inc100.loopexit.91:                           ; preds = %for.body87.91
  %mul75.91 = mul nsw i32 %add74.91, %rem15
  %add81.91 = add nsw i32 %rem80.91, %rem78.sext
  br label %for.inc100.91

for.inc100.91:                                    ; preds = %for.inc100.loopexit.91, %if.end.91
  %var4.1.91 = phi i32 [ %var4.1.90, %if.end.91 ], [ %mul75.91, %for.inc100.loopexit.91 ]
  %var5.1.91 = phi i32 [ %var5.1.90, %if.end.91 ], [ %rem9, %for.inc100.loopexit.91 ]
  %var1.1.91 = phi i32 [ %var1.1.90, %if.end.91 ], [ %add81.91, %for.inc100.loopexit.91 ]
  %737 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.92 = mul nsw i32 %737, 3
  %738 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.92 = sdiv i32 %738, -2
  %sub.92 = add i32 %div.neg.92, %mul.92
  store i32 %sub.92, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.92 = add nsw i32 %sub.92, %737
  %rem32.92 = srem i32 %add31.92, 100
  store i32 %rem32.92, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.92 = or i32 %rem32.92, 1
  %add33.92 = add nsw i32 %or.92, %rem17
  store i32 %add33.92, i32* @main.hot_data.1, align 4, !tbaa !10
  %739 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.92 = add nsw i32 %add33.92, %739
  store i32 %add42.92, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %740 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.92 = add i16 %740, 92
  %rem43171.92 = urem i16 %rem43.lhs.trunc.92, 100
  %cmp44.92 = icmp eq i16 %rem43171.92, 0
  br i1 %cmp44.92, label %if.then.92, label %if.end.92

if.then.92:                                       ; preds = %for.inc100.91
  %add48.92 = add nsw i32 %mid_vars.sroa.0.1.91, %rem9
  %mul49.92 = mul nsw i32 %local2.1.91, %add48.92
  %shr.92 = ashr i32 %mul49.92, 1
  %add51.92 = add nsw i32 %sub.92, %shr.92
  %call53.92 = tail call i32 @rand() #3
  %rem54.92 = srem i32 %call53.92, 5
  %add55.92 = add nsw i32 %rem54.92, %rem17
  %rem56.92 = srem i32 %add55.92, 100
  %741 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.92 = add nsw i32 %741, %shr.92
  %742 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.92 = add nsw i32 %add59.92, %742
  store i32 %add66.92, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %743 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %743, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.92, %for.inc100.91
  %mid_vars.sroa.0.1.92 = phi i32 [ %add51.92, %if.then.92 ], [ %mid_vars.sroa.0.1.91, %for.inc100.91 ]
  %mid_vars.sroa.10166.1.92 = phi i32 [ %mul49.92, %if.then.92 ], [ %mid_vars.sroa.10166.1.91, %for.inc100.91 ]
  %local2.1.92 = phi i32 [ %rem56.92, %if.then.92 ], [ %local2.1.91, %for.inc100.91 ]
  %rem70172.92 = urem i16 %rem43.lhs.trunc.92, 1000
  %cmp71.92 = icmp eq i16 %rem70172.92, 0
  br i1 %cmp71.92, label %if.then73.92, label %for.inc100.92

if.then73.92:                                     ; preds = %if.end.92
  %add74.92 = add nsw i32 %var1.1.91, %rem13
  %call79.92 = tail call i32 @rand() #3
  %rem80.92 = srem i32 %call79.92, 5
  br label %for.body87.92

for.body87.92:                                    ; preds = %for.body87.92, %if.then73.92
  %indvars.iv.92 = phi i64 [ 0, %if.then73.92 ], [ %indvars.iv.next.92, %for.body87.92 ]
  %call88.92 = tail call i32 @rand() #3
  %rem89.92 = srem i32 %call88.92, 100
  %744 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.92 = add nsw i32 %rem89.92, %744
  %rem93.lhs.trunc.92 = trunc i64 %indvars.iv.92 to i8
  %rem93173.92 = urem i8 %rem93.lhs.trunc.92, 10
  %idxprom94.92 = zext i8 %rem93173.92 to i64
  %arrayidx95.92 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.92, i64 %idxprom94.92
  store i32 %add90.92, i32* %arrayidx95.92, align 4, !tbaa !12
  %indvars.iv.next.92 = add nuw nsw i64 %indvars.iv.92, 1
  %exitcond.92.not = icmp eq i64 %indvars.iv.next.92, 10
  br i1 %exitcond.92.not, label %for.inc100.loopexit.92, label %for.body87.92, !llvm.loop !13

for.inc100.loopexit.92:                           ; preds = %for.body87.92
  %mul75.92 = mul nsw i32 %add74.92, %rem15
  %add81.92 = add nsw i32 %rem80.92, %rem78.sext
  br label %for.inc100.92

for.inc100.92:                                    ; preds = %for.inc100.loopexit.92, %if.end.92
  %var4.1.92 = phi i32 [ %var4.1.91, %if.end.92 ], [ %mul75.92, %for.inc100.loopexit.92 ]
  %var5.1.92 = phi i32 [ %var5.1.91, %if.end.92 ], [ %rem9, %for.inc100.loopexit.92 ]
  %var1.1.92 = phi i32 [ %var1.1.91, %if.end.92 ], [ %add81.92, %for.inc100.loopexit.92 ]
  %745 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.93 = mul nsw i32 %745, 3
  %746 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.93 = sdiv i32 %746, -2
  %sub.93 = add i32 %div.neg.93, %mul.93
  store i32 %sub.93, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.93 = add nsw i32 %sub.93, %745
  %rem32.93 = srem i32 %add31.93, 100
  store i32 %rem32.93, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.93 = or i32 %rem32.93, 1
  %add33.93 = add nsw i32 %or.93, %rem17
  store i32 %add33.93, i32* @main.hot_data.1, align 4, !tbaa !10
  %747 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.93 = add nsw i32 %add33.93, %747
  store i32 %add42.93, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %748 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.93 = add i16 %748, 93
  %rem43171.93 = urem i16 %rem43.lhs.trunc.93, 100
  %cmp44.93 = icmp eq i16 %rem43171.93, 0
  br i1 %cmp44.93, label %if.then.93, label %if.end.93

if.then.93:                                       ; preds = %for.inc100.92
  %add48.93 = add nsw i32 %mid_vars.sroa.0.1.92, %rem9
  %mul49.93 = mul nsw i32 %local2.1.92, %add48.93
  %shr.93 = ashr i32 %mul49.93, 1
  %add51.93 = add nsw i32 %sub.93, %shr.93
  %call53.93 = tail call i32 @rand() #3
  %rem54.93 = srem i32 %call53.93, 5
  %add55.93 = add nsw i32 %rem54.93, %rem17
  %rem56.93 = srem i32 %add55.93, 100
  %749 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.93 = add nsw i32 %749, %shr.93
  %750 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.93 = add nsw i32 %add59.93, %750
  store i32 %add66.93, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %751 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %751, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.93, %for.inc100.92
  %mid_vars.sroa.0.1.93 = phi i32 [ %add51.93, %if.then.93 ], [ %mid_vars.sroa.0.1.92, %for.inc100.92 ]
  %mid_vars.sroa.10166.1.93 = phi i32 [ %mul49.93, %if.then.93 ], [ %mid_vars.sroa.10166.1.92, %for.inc100.92 ]
  %local2.1.93 = phi i32 [ %rem56.93, %if.then.93 ], [ %local2.1.92, %for.inc100.92 ]
  %rem70172.93 = urem i16 %rem43.lhs.trunc.93, 1000
  %cmp71.93 = icmp eq i16 %rem70172.93, 0
  br i1 %cmp71.93, label %if.then73.93, label %for.inc100.93

if.then73.93:                                     ; preds = %if.end.93
  %add74.93 = add nsw i32 %var1.1.92, %rem13
  %call79.93 = tail call i32 @rand() #3
  %rem80.93 = srem i32 %call79.93, 5
  br label %for.body87.93

for.body87.93:                                    ; preds = %for.body87.93, %if.then73.93
  %indvars.iv.93 = phi i64 [ 0, %if.then73.93 ], [ %indvars.iv.next.93, %for.body87.93 ]
  %call88.93 = tail call i32 @rand() #3
  %rem89.93 = srem i32 %call88.93, 100
  %752 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.93 = add nsw i32 %rem89.93, %752
  %rem93.lhs.trunc.93 = trunc i64 %indvars.iv.93 to i8
  %rem93173.93 = urem i8 %rem93.lhs.trunc.93, 10
  %idxprom94.93 = zext i8 %rem93173.93 to i64
  %arrayidx95.93 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.93, i64 %idxprom94.93
  store i32 %add90.93, i32* %arrayidx95.93, align 4, !tbaa !12
  %indvars.iv.next.93 = add nuw nsw i64 %indvars.iv.93, 1
  %exitcond.93.not = icmp eq i64 %indvars.iv.next.93, 10
  br i1 %exitcond.93.not, label %for.inc100.loopexit.93, label %for.body87.93, !llvm.loop !13

for.inc100.loopexit.93:                           ; preds = %for.body87.93
  %mul75.93 = mul nsw i32 %add74.93, %rem15
  %add81.93 = add nsw i32 %rem80.93, %rem78.sext
  br label %for.inc100.93

for.inc100.93:                                    ; preds = %for.inc100.loopexit.93, %if.end.93
  %var4.1.93 = phi i32 [ %var4.1.92, %if.end.93 ], [ %mul75.93, %for.inc100.loopexit.93 ]
  %var5.1.93 = phi i32 [ %var5.1.92, %if.end.93 ], [ %rem9, %for.inc100.loopexit.93 ]
  %var1.1.93 = phi i32 [ %var1.1.92, %if.end.93 ], [ %add81.93, %for.inc100.loopexit.93 ]
  %753 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.94 = mul nsw i32 %753, 3
  %754 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.94 = sdiv i32 %754, -2
  %sub.94 = add i32 %div.neg.94, %mul.94
  store i32 %sub.94, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.94 = add nsw i32 %sub.94, %753
  %rem32.94 = srem i32 %add31.94, 100
  store i32 %rem32.94, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.94 = or i32 %rem32.94, 1
  %add33.94 = add nsw i32 %or.94, %rem17
  store i32 %add33.94, i32* @main.hot_data.1, align 4, !tbaa !10
  %755 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.94 = add nsw i32 %add33.94, %755
  store i32 %add42.94, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %756 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.94 = add i16 %756, 94
  %rem43171.94 = urem i16 %rem43.lhs.trunc.94, 100
  %cmp44.94 = icmp eq i16 %rem43171.94, 0
  br i1 %cmp44.94, label %if.then.94, label %if.end.94

if.then.94:                                       ; preds = %for.inc100.93
  %add48.94 = add nsw i32 %mid_vars.sroa.0.1.93, %rem9
  %mul49.94 = mul nsw i32 %local2.1.93, %add48.94
  %shr.94 = ashr i32 %mul49.94, 1
  %add51.94 = add nsw i32 %sub.94, %shr.94
  %call53.94 = tail call i32 @rand() #3
  %rem54.94 = srem i32 %call53.94, 5
  %add55.94 = add nsw i32 %rem54.94, %rem17
  %rem56.94 = srem i32 %add55.94, 100
  %757 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.94 = add nsw i32 %757, %shr.94
  %758 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.94 = add nsw i32 %add59.94, %758
  store i32 %add66.94, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %759 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %759, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.94, %for.inc100.93
  %mid_vars.sroa.0.1.94 = phi i32 [ %add51.94, %if.then.94 ], [ %mid_vars.sroa.0.1.93, %for.inc100.93 ]
  %mid_vars.sroa.10166.1.94 = phi i32 [ %mul49.94, %if.then.94 ], [ %mid_vars.sroa.10166.1.93, %for.inc100.93 ]
  %local2.1.94 = phi i32 [ %rem56.94, %if.then.94 ], [ %local2.1.93, %for.inc100.93 ]
  %rem70172.94 = urem i16 %rem43.lhs.trunc.94, 1000
  %cmp71.94 = icmp eq i16 %rem70172.94, 0
  br i1 %cmp71.94, label %if.then73.94, label %for.inc100.94

if.then73.94:                                     ; preds = %if.end.94
  %add74.94 = add nsw i32 %var1.1.93, %rem13
  %call79.94 = tail call i32 @rand() #3
  %rem80.94 = srem i32 %call79.94, 5
  br label %for.body87.94

for.body87.94:                                    ; preds = %for.body87.94, %if.then73.94
  %indvars.iv.94 = phi i64 [ 0, %if.then73.94 ], [ %indvars.iv.next.94, %for.body87.94 ]
  %call88.94 = tail call i32 @rand() #3
  %rem89.94 = srem i32 %call88.94, 100
  %760 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.94 = add nsw i32 %rem89.94, %760
  %rem93.lhs.trunc.94 = trunc i64 %indvars.iv.94 to i8
  %rem93173.94 = urem i8 %rem93.lhs.trunc.94, 10
  %idxprom94.94 = zext i8 %rem93173.94 to i64
  %arrayidx95.94 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.94, i64 %idxprom94.94
  store i32 %add90.94, i32* %arrayidx95.94, align 4, !tbaa !12
  %indvars.iv.next.94 = add nuw nsw i64 %indvars.iv.94, 1
  %exitcond.94.not = icmp eq i64 %indvars.iv.next.94, 10
  br i1 %exitcond.94.not, label %for.inc100.loopexit.94, label %for.body87.94, !llvm.loop !13

for.inc100.loopexit.94:                           ; preds = %for.body87.94
  %mul75.94 = mul nsw i32 %add74.94, %rem15
  %add81.94 = add nsw i32 %rem80.94, %rem78.sext
  br label %for.inc100.94

for.inc100.94:                                    ; preds = %for.inc100.loopexit.94, %if.end.94
  %var4.1.94 = phi i32 [ %var4.1.93, %if.end.94 ], [ %mul75.94, %for.inc100.loopexit.94 ]
  %var5.1.94 = phi i32 [ %var5.1.93, %if.end.94 ], [ %rem9, %for.inc100.loopexit.94 ]
  %var1.1.94 = phi i32 [ %var1.1.93, %if.end.94 ], [ %add81.94, %for.inc100.loopexit.94 ]
  %761 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.95 = mul nsw i32 %761, 3
  %762 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.95 = sdiv i32 %762, -2
  %sub.95 = add i32 %div.neg.95, %mul.95
  store i32 %sub.95, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.95 = add nsw i32 %sub.95, %761
  %rem32.95 = srem i32 %add31.95, 100
  store i32 %rem32.95, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.95 = or i32 %rem32.95, 1
  %add33.95 = add nsw i32 %or.95, %rem17
  store i32 %add33.95, i32* @main.hot_data.1, align 4, !tbaa !10
  %763 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.95 = add nsw i32 %add33.95, %763
  store i32 %add42.95, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %764 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.95 = add i16 %764, 95
  %rem43171.95 = urem i16 %rem43.lhs.trunc.95, 100
  %cmp44.95 = icmp eq i16 %rem43171.95, 0
  br i1 %cmp44.95, label %if.then.95, label %if.end.95

if.then.95:                                       ; preds = %for.inc100.94
  %add48.95 = add nsw i32 %mid_vars.sroa.0.1.94, %rem9
  %mul49.95 = mul nsw i32 %local2.1.94, %add48.95
  %shr.95 = ashr i32 %mul49.95, 1
  %add51.95 = add nsw i32 %sub.95, %shr.95
  %call53.95 = tail call i32 @rand() #3
  %rem54.95 = srem i32 %call53.95, 5
  %add55.95 = add nsw i32 %rem54.95, %rem17
  %rem56.95 = srem i32 %add55.95, 100
  %765 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.95 = add nsw i32 %765, %shr.95
  %766 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.95 = add nsw i32 %add59.95, %766
  store i32 %add66.95, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %767 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %767, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.95, %for.inc100.94
  %mid_vars.sroa.0.1.95 = phi i32 [ %add51.95, %if.then.95 ], [ %mid_vars.sroa.0.1.94, %for.inc100.94 ]
  %mid_vars.sroa.10166.1.95 = phi i32 [ %mul49.95, %if.then.95 ], [ %mid_vars.sroa.10166.1.94, %for.inc100.94 ]
  %local2.1.95 = phi i32 [ %rem56.95, %if.then.95 ], [ %local2.1.94, %for.inc100.94 ]
  %rem70172.95 = urem i16 %rem43.lhs.trunc.95, 1000
  %cmp71.95 = icmp eq i16 %rem70172.95, 0
  br i1 %cmp71.95, label %if.then73.95, label %for.inc100.95

if.then73.95:                                     ; preds = %if.end.95
  %add74.95 = add nsw i32 %var1.1.94, %rem13
  %call79.95 = tail call i32 @rand() #3
  %rem80.95 = srem i32 %call79.95, 5
  br label %for.body87.95

for.body87.95:                                    ; preds = %for.body87.95, %if.then73.95
  %indvars.iv.95 = phi i64 [ 0, %if.then73.95 ], [ %indvars.iv.next.95, %for.body87.95 ]
  %call88.95 = tail call i32 @rand() #3
  %rem89.95 = srem i32 %call88.95, 100
  %768 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.95 = add nsw i32 %rem89.95, %768
  %rem93.lhs.trunc.95 = trunc i64 %indvars.iv.95 to i8
  %rem93173.95 = urem i8 %rem93.lhs.trunc.95, 10
  %idxprom94.95 = zext i8 %rem93173.95 to i64
  %arrayidx95.95 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.95, i64 %idxprom94.95
  store i32 %add90.95, i32* %arrayidx95.95, align 4, !tbaa !12
  %indvars.iv.next.95 = add nuw nsw i64 %indvars.iv.95, 1
  %exitcond.95.not = icmp eq i64 %indvars.iv.next.95, 10
  br i1 %exitcond.95.not, label %for.inc100.loopexit.95, label %for.body87.95, !llvm.loop !13

for.inc100.loopexit.95:                           ; preds = %for.body87.95
  %mul75.95 = mul nsw i32 %add74.95, %rem15
  %add81.95 = add nsw i32 %rem80.95, %rem78.sext
  br label %for.inc100.95

for.inc100.95:                                    ; preds = %for.inc100.loopexit.95, %if.end.95
  %var4.1.95 = phi i32 [ %var4.1.94, %if.end.95 ], [ %mul75.95, %for.inc100.loopexit.95 ]
  %var5.1.95 = phi i32 [ %var5.1.94, %if.end.95 ], [ %rem9, %for.inc100.loopexit.95 ]
  %var1.1.95 = phi i32 [ %var1.1.94, %if.end.95 ], [ %add81.95, %for.inc100.loopexit.95 ]
  %769 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.96 = mul nsw i32 %769, 3
  %770 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.96 = sdiv i32 %770, -2
  %sub.96 = add i32 %div.neg.96, %mul.96
  store i32 %sub.96, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.96 = add nsw i32 %sub.96, %769
  %rem32.96 = srem i32 %add31.96, 100
  store i32 %rem32.96, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.96 = or i32 %rem32.96, 1
  %add33.96 = add nsw i32 %or.96, %rem17
  store i32 %add33.96, i32* @main.hot_data.1, align 4, !tbaa !10
  %771 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.96 = add nsw i32 %add33.96, %771
  store i32 %add42.96, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %772 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.96 = add i16 %772, 96
  %rem43171.96 = urem i16 %rem43.lhs.trunc.96, 100
  %cmp44.96 = icmp eq i16 %rem43171.96, 0
  br i1 %cmp44.96, label %if.then.96, label %if.end.96

if.then.96:                                       ; preds = %for.inc100.95
  %add48.96 = add nsw i32 %mid_vars.sroa.0.1.95, %rem9
  %mul49.96 = mul nsw i32 %local2.1.95, %add48.96
  %shr.96 = ashr i32 %mul49.96, 1
  %add51.96 = add nsw i32 %sub.96, %shr.96
  %call53.96 = tail call i32 @rand() #3
  %rem54.96 = srem i32 %call53.96, 5
  %add55.96 = add nsw i32 %rem54.96, %rem17
  %rem56.96 = srem i32 %add55.96, 100
  %773 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.96 = add nsw i32 %773, %shr.96
  %774 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.96 = add nsw i32 %add59.96, %774
  store i32 %add66.96, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %775 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %775, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.96, %for.inc100.95
  %mid_vars.sroa.0.1.96 = phi i32 [ %add51.96, %if.then.96 ], [ %mid_vars.sroa.0.1.95, %for.inc100.95 ]
  %mid_vars.sroa.10166.1.96 = phi i32 [ %mul49.96, %if.then.96 ], [ %mid_vars.sroa.10166.1.95, %for.inc100.95 ]
  %local2.1.96 = phi i32 [ %rem56.96, %if.then.96 ], [ %local2.1.95, %for.inc100.95 ]
  %rem70172.96 = urem i16 %rem43.lhs.trunc.96, 1000
  %cmp71.96 = icmp eq i16 %rem70172.96, 0
  br i1 %cmp71.96, label %if.then73.96, label %for.inc100.96

if.then73.96:                                     ; preds = %if.end.96
  %add74.96 = add nsw i32 %var1.1.95, %rem13
  %call79.96 = tail call i32 @rand() #3
  %rem80.96 = srem i32 %call79.96, 5
  br label %for.body87.96

for.body87.96:                                    ; preds = %for.body87.96, %if.then73.96
  %indvars.iv.96 = phi i64 [ 0, %if.then73.96 ], [ %indvars.iv.next.96, %for.body87.96 ]
  %call88.96 = tail call i32 @rand() #3
  %rem89.96 = srem i32 %call88.96, 100
  %776 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.96 = add nsw i32 %rem89.96, %776
  %rem93.lhs.trunc.96 = trunc i64 %indvars.iv.96 to i8
  %rem93173.96 = urem i8 %rem93.lhs.trunc.96, 10
  %idxprom94.96 = zext i8 %rem93173.96 to i64
  %arrayidx95.96 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.96, i64 %idxprom94.96
  store i32 %add90.96, i32* %arrayidx95.96, align 4, !tbaa !12
  %indvars.iv.next.96 = add nuw nsw i64 %indvars.iv.96, 1
  %exitcond.96.not = icmp eq i64 %indvars.iv.next.96, 10
  br i1 %exitcond.96.not, label %for.inc100.loopexit.96, label %for.body87.96, !llvm.loop !13

for.inc100.loopexit.96:                           ; preds = %for.body87.96
  %mul75.96 = mul nsw i32 %add74.96, %rem15
  %add81.96 = add nsw i32 %rem80.96, %rem78.sext
  br label %for.inc100.96

for.inc100.96:                                    ; preds = %for.inc100.loopexit.96, %if.end.96
  %var4.1.96 = phi i32 [ %var4.1.95, %if.end.96 ], [ %mul75.96, %for.inc100.loopexit.96 ]
  %var5.1.96 = phi i32 [ %var5.1.95, %if.end.96 ], [ %rem9, %for.inc100.loopexit.96 ]
  %var1.1.96 = phi i32 [ %var1.1.95, %if.end.96 ], [ %add81.96, %for.inc100.loopexit.96 ]
  %777 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.97 = mul nsw i32 %777, 3
  %778 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.97 = sdiv i32 %778, -2
  %sub.97 = add i32 %div.neg.97, %mul.97
  store i32 %sub.97, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.97 = add nsw i32 %sub.97, %777
  %rem32.97 = srem i32 %add31.97, 100
  store i32 %rem32.97, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.97 = or i32 %rem32.97, 1
  %add33.97 = add nsw i32 %or.97, %rem17
  store i32 %add33.97, i32* @main.hot_data.1, align 4, !tbaa !10
  %779 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.97 = add nsw i32 %add33.97, %779
  store i32 %add42.97, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %780 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.97 = add i16 %780, 97
  %rem43171.97 = urem i16 %rem43.lhs.trunc.97, 100
  %cmp44.97 = icmp eq i16 %rem43171.97, 0
  br i1 %cmp44.97, label %if.then.97, label %if.end.97

if.then.97:                                       ; preds = %for.inc100.96
  %add48.97 = add nsw i32 %mid_vars.sroa.0.1.96, %rem9
  %mul49.97 = mul nsw i32 %local2.1.96, %add48.97
  %shr.97 = ashr i32 %mul49.97, 1
  %add51.97 = add nsw i32 %sub.97, %shr.97
  %call53.97 = tail call i32 @rand() #3
  %rem54.97 = srem i32 %call53.97, 5
  %add55.97 = add nsw i32 %rem54.97, %rem17
  %rem56.97 = srem i32 %add55.97, 100
  %781 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.97 = add nsw i32 %781, %shr.97
  %782 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.97 = add nsw i32 %add59.97, %782
  store i32 %add66.97, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %783 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %783, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.97, %for.inc100.96
  %mid_vars.sroa.0.1.97 = phi i32 [ %add51.97, %if.then.97 ], [ %mid_vars.sroa.0.1.96, %for.inc100.96 ]
  %mid_vars.sroa.10166.1.97 = phi i32 [ %mul49.97, %if.then.97 ], [ %mid_vars.sroa.10166.1.96, %for.inc100.96 ]
  %local2.1.97 = phi i32 [ %rem56.97, %if.then.97 ], [ %local2.1.96, %for.inc100.96 ]
  %rem70172.97 = urem i16 %rem43.lhs.trunc.97, 1000
  %cmp71.97 = icmp eq i16 %rem70172.97, 0
  br i1 %cmp71.97, label %if.then73.97, label %for.inc100.97

if.then73.97:                                     ; preds = %if.end.97
  %add74.97 = add nsw i32 %var1.1.96, %rem13
  %call79.97 = tail call i32 @rand() #3
  %rem80.97 = srem i32 %call79.97, 5
  br label %for.body87.97

for.body87.97:                                    ; preds = %for.body87.97, %if.then73.97
  %indvars.iv.97 = phi i64 [ 0, %if.then73.97 ], [ %indvars.iv.next.97, %for.body87.97 ]
  %call88.97 = tail call i32 @rand() #3
  %rem89.97 = srem i32 %call88.97, 100
  %784 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.97 = add nsw i32 %rem89.97, %784
  %rem93.lhs.trunc.97 = trunc i64 %indvars.iv.97 to i8
  %rem93173.97 = urem i8 %rem93.lhs.trunc.97, 10
  %idxprom94.97 = zext i8 %rem93173.97 to i64
  %arrayidx95.97 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.97, i64 %idxprom94.97
  store i32 %add90.97, i32* %arrayidx95.97, align 4, !tbaa !12
  %indvars.iv.next.97 = add nuw nsw i64 %indvars.iv.97, 1
  %exitcond.97.not = icmp eq i64 %indvars.iv.next.97, 10
  br i1 %exitcond.97.not, label %for.inc100.loopexit.97, label %for.body87.97, !llvm.loop !13

for.inc100.loopexit.97:                           ; preds = %for.body87.97
  %mul75.97 = mul nsw i32 %add74.97, %rem15
  %add81.97 = add nsw i32 %rem80.97, %rem78.sext
  br label %for.inc100.97

for.inc100.97:                                    ; preds = %for.inc100.loopexit.97, %if.end.97
  %var4.1.97 = phi i32 [ %var4.1.96, %if.end.97 ], [ %mul75.97, %for.inc100.loopexit.97 ]
  %var5.1.97 = phi i32 [ %var5.1.96, %if.end.97 ], [ %rem9, %for.inc100.loopexit.97 ]
  %var1.1.97 = phi i32 [ %var1.1.96, %if.end.97 ], [ %add81.97, %for.inc100.loopexit.97 ]
  %785 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.98 = mul nsw i32 %785, 3
  %786 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.98 = sdiv i32 %786, -2
  %sub.98 = add i32 %div.neg.98, %mul.98
  store i32 %sub.98, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.98 = add nsw i32 %sub.98, %785
  %rem32.98 = srem i32 %add31.98, 100
  store i32 %rem32.98, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.98 = or i32 %rem32.98, 1
  %add33.98 = add nsw i32 %or.98, %rem17
  store i32 %add33.98, i32* @main.hot_data.1, align 4, !tbaa !10
  %787 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.98 = add nsw i32 %add33.98, %787
  store i32 %add42.98, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %788 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.98 = add i16 %788, 98
  %rem43171.98 = urem i16 %rem43.lhs.trunc.98, 100
  %cmp44.98 = icmp eq i16 %rem43171.98, 0
  br i1 %cmp44.98, label %if.then.98, label %if.end.98

if.then.98:                                       ; preds = %for.inc100.97
  %add48.98 = add nsw i32 %mid_vars.sroa.0.1.97, %rem9
  %mul49.98 = mul nsw i32 %local2.1.97, %add48.98
  %shr.98 = ashr i32 %mul49.98, 1
  %add51.98 = add nsw i32 %sub.98, %shr.98
  %call53.98 = tail call i32 @rand() #3
  %rem54.98 = srem i32 %call53.98, 5
  %add55.98 = add nsw i32 %rem54.98, %rem17
  %rem56.98 = srem i32 %add55.98, 100
  %789 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.98 = add nsw i32 %789, %shr.98
  %790 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.98 = add nsw i32 %add59.98, %790
  store i32 %add66.98, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %791 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %791, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.98, %for.inc100.97
  %mid_vars.sroa.0.1.98 = phi i32 [ %add51.98, %if.then.98 ], [ %mid_vars.sroa.0.1.97, %for.inc100.97 ]
  %mid_vars.sroa.10166.1.98 = phi i32 [ %mul49.98, %if.then.98 ], [ %mid_vars.sroa.10166.1.97, %for.inc100.97 ]
  %local2.1.98 = phi i32 [ %rem56.98, %if.then.98 ], [ %local2.1.97, %for.inc100.97 ]
  %rem70172.98 = urem i16 %rem43.lhs.trunc.98, 1000
  %cmp71.98 = icmp eq i16 %rem70172.98, 0
  br i1 %cmp71.98, label %if.then73.98, label %for.inc100.98

if.then73.98:                                     ; preds = %if.end.98
  %add74.98 = add nsw i32 %var1.1.97, %rem13
  %call79.98 = tail call i32 @rand() #3
  %rem80.98 = srem i32 %call79.98, 5
  br label %for.body87.98

for.body87.98:                                    ; preds = %for.body87.98, %if.then73.98
  %indvars.iv.98 = phi i64 [ 0, %if.then73.98 ], [ %indvars.iv.next.98, %for.body87.98 ]
  %call88.98 = tail call i32 @rand() #3
  %rem89.98 = srem i32 %call88.98, 100
  %792 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.98 = add nsw i32 %rem89.98, %792
  %rem93.lhs.trunc.98 = trunc i64 %indvars.iv.98 to i8
  %rem93173.98 = urem i8 %rem93.lhs.trunc.98, 10
  %idxprom94.98 = zext i8 %rem93173.98 to i64
  %arrayidx95.98 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.98, i64 %idxprom94.98
  store i32 %add90.98, i32* %arrayidx95.98, align 4, !tbaa !12
  %indvars.iv.next.98 = add nuw nsw i64 %indvars.iv.98, 1
  %exitcond.98.not = icmp eq i64 %indvars.iv.next.98, 10
  br i1 %exitcond.98.not, label %for.inc100.loopexit.98, label %for.body87.98, !llvm.loop !13

for.inc100.loopexit.98:                           ; preds = %for.body87.98
  %mul75.98 = mul nsw i32 %add74.98, %rem15
  %add81.98 = add nsw i32 %rem80.98, %rem78.sext
  br label %for.inc100.98

for.inc100.98:                                    ; preds = %for.inc100.loopexit.98, %if.end.98
  %var4.1.98 = phi i32 [ %var4.1.97, %if.end.98 ], [ %mul75.98, %for.inc100.loopexit.98 ]
  %var5.1.98 = phi i32 [ %var5.1.97, %if.end.98 ], [ %rem9, %for.inc100.loopexit.98 ]
  %var1.1.98 = phi i32 [ %var1.1.97, %if.end.98 ], [ %add81.98, %for.inc100.loopexit.98 ]
  %793 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.99 = mul nsw i32 %793, 3
  %794 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.99 = sdiv i32 %794, -2
  %sub.99 = add i32 %div.neg.99, %mul.99
  store i32 %sub.99, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.99 = add nsw i32 %sub.99, %793
  %rem32.99 = srem i32 %add31.99, 100
  store i32 %rem32.99, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.99 = or i32 %rem32.99, 1
  %add33.99 = add nsw i32 %or.99, %rem17
  store i32 %add33.99, i32* @main.hot_data.1, align 4, !tbaa !10
  %795 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.99 = add nsw i32 %add33.99, %795
  store i32 %add42.99, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %796 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.99 = add i16 %796, 99
  %rem43171.99 = urem i16 %rem43.lhs.trunc.99, 100
  %cmp44.99 = icmp eq i16 %rem43171.99, 0
  br i1 %cmp44.99, label %if.then.99, label %if.end.99

if.then.99:                                       ; preds = %for.inc100.98
  %add48.99 = add nsw i32 %mid_vars.sroa.0.1.98, %rem9
  %mul49.99 = mul nsw i32 %local2.1.98, %add48.99
  %shr.99 = ashr i32 %mul49.99, 1
  %add51.99 = add nsw i32 %sub.99, %shr.99
  %call53.99 = tail call i32 @rand() #3
  %rem54.99 = srem i32 %call53.99, 5
  %add55.99 = add nsw i32 %rem54.99, %rem17
  %rem56.99 = srem i32 %add55.99, 100
  %797 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.99 = add nsw i32 %797, %shr.99
  %798 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.99 = add nsw i32 %add59.99, %798
  store i32 %add66.99, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %799 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %799, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.99, %for.inc100.98
  %mid_vars.sroa.0.1.99 = phi i32 [ %add51.99, %if.then.99 ], [ %mid_vars.sroa.0.1.98, %for.inc100.98 ]
  %mid_vars.sroa.10166.1.99 = phi i32 [ %mul49.99, %if.then.99 ], [ %mid_vars.sroa.10166.1.98, %for.inc100.98 ]
  %local2.1.99 = phi i32 [ %rem56.99, %if.then.99 ], [ %local2.1.98, %for.inc100.98 ]
  %rem70172.99 = urem i16 %rem43.lhs.trunc.99, 1000
  %cmp71.99 = icmp eq i16 %rem70172.99, 0
  br i1 %cmp71.99, label %if.then73.99, label %for.inc100.99

if.then73.99:                                     ; preds = %if.end.99
  %add74.99 = add nsw i32 %var1.1.98, %rem13
  %call79.99 = tail call i32 @rand() #3
  %rem80.99 = srem i32 %call79.99, 5
  br label %for.body87.99

for.body87.99:                                    ; preds = %for.body87.99, %if.then73.99
  %indvars.iv.99 = phi i64 [ 0, %if.then73.99 ], [ %indvars.iv.next.99, %for.body87.99 ]
  %call88.99 = tail call i32 @rand() #3
  %rem89.99 = srem i32 %call88.99, 100
  %800 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.99 = add nsw i32 %rem89.99, %800
  %rem93.lhs.trunc.99 = trunc i64 %indvars.iv.99 to i8
  %rem93173.99 = urem i8 %rem93.lhs.trunc.99, 10
  %idxprom94.99 = zext i8 %rem93173.99 to i64
  %arrayidx95.99 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.99, i64 %idxprom94.99
  store i32 %add90.99, i32* %arrayidx95.99, align 4, !tbaa !12
  %indvars.iv.next.99 = add nuw nsw i64 %indvars.iv.99, 1
  %exitcond.99.not = icmp eq i64 %indvars.iv.next.99, 10
  br i1 %exitcond.99.not, label %for.inc100.loopexit.99, label %for.body87.99, !llvm.loop !13

for.inc100.loopexit.99:                           ; preds = %for.body87.99
  %mul75.99 = mul nsw i32 %add74.99, %rem15
  %add81.99 = add nsw i32 %rem80.99, %rem78.sext
  br label %for.inc100.99

for.inc100.99:                                    ; preds = %for.inc100.loopexit.99, %if.end.99
  %var4.1.99 = phi i32 [ %var4.1.98, %if.end.99 ], [ %mul75.99, %for.inc100.loopexit.99 ]
  %var5.1.99 = phi i32 [ %var5.1.98, %if.end.99 ], [ %rem9, %for.inc100.loopexit.99 ]
  %var1.1.99 = phi i32 [ %var1.1.98, %if.end.99 ], [ %add81.99, %for.inc100.loopexit.99 ]
  %801 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.100 = mul nsw i32 %801, 3
  %802 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.100 = sdiv i32 %802, -2
  %sub.100 = add i32 %div.neg.100, %mul.100
  store i32 %sub.100, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.100 = add nsw i32 %sub.100, %801
  %rem32.100 = srem i32 %add31.100, 100
  store i32 %rem32.100, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.100 = or i32 %rem32.100, 1
  %add33.100 = add nsw i32 %or.100, %rem17
  store i32 %add33.100, i32* @main.hot_data.1, align 4, !tbaa !10
  %803 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.100 = add nsw i32 %add33.100, %803
  store i32 %add42.100, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %804 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.100 = add i16 %804, 100
  %rem43171.100 = urem i16 %rem43.lhs.trunc.100, 100
  %cmp44.100 = icmp eq i16 %rem43171.100, 0
  br i1 %cmp44.100, label %if.then.100, label %if.end.100

if.then.100:                                      ; preds = %for.inc100.99
  %add48.100 = add nsw i32 %mid_vars.sroa.0.1.99, %rem9
  %mul49.100 = mul nsw i32 %local2.1.99, %add48.100
  %shr.100 = ashr i32 %mul49.100, 1
  %add51.100 = add nsw i32 %sub.100, %shr.100
  %call53.100 = tail call i32 @rand() #3
  %rem54.100 = srem i32 %call53.100, 5
  %add55.100 = add nsw i32 %rem54.100, %rem17
  %rem56.100 = srem i32 %add55.100, 100
  %805 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.100 = add nsw i32 %805, %shr.100
  %806 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.100 = add nsw i32 %add59.100, %806
  store i32 %add66.100, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.100, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.100, %for.inc100.99
  %mid_vars.sroa.0.1.100 = phi i32 [ %add51.100, %if.then.100 ], [ %mid_vars.sroa.0.1.99, %for.inc100.99 ]
  %mid_vars.sroa.10166.1.100 = phi i32 [ %mul49.100, %if.then.100 ], [ %mid_vars.sroa.10166.1.99, %for.inc100.99 ]
  %local2.1.100 = phi i32 [ %rem56.100, %if.then.100 ], [ %local2.1.99, %for.inc100.99 ]
  %rem70172.100 = urem i16 %rem43.lhs.trunc.100, 1000
  %cmp71.100 = icmp eq i16 %rem70172.100, 0
  br i1 %cmp71.100, label %if.then73.100, label %for.inc100.100

if.then73.100:                                    ; preds = %if.end.100
  %add74.100 = add nsw i32 %var1.1.99, %rem13
  %call79.100 = tail call i32 @rand() #3
  %rem80.100 = srem i32 %call79.100, 5
  br label %for.body87.100

for.body87.100:                                   ; preds = %for.body87.100, %if.then73.100
  %indvars.iv.100 = phi i64 [ 0, %if.then73.100 ], [ %indvars.iv.next.100, %for.body87.100 ]
  %call88.100 = tail call i32 @rand() #3
  %rem89.100 = srem i32 %call88.100, 100
  %807 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.100 = add nsw i32 %rem89.100, %807
  %rem93.lhs.trunc.100 = trunc i64 %indvars.iv.100 to i8
  %rem93173.100 = urem i8 %rem93.lhs.trunc.100, 10
  %idxprom94.100 = zext i8 %rem93173.100 to i64
  %arrayidx95.100 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.100, i64 %idxprom94.100
  store i32 %add90.100, i32* %arrayidx95.100, align 4, !tbaa !12
  %indvars.iv.next.100 = add nuw nsw i64 %indvars.iv.100, 1
  %exitcond.100.not = icmp eq i64 %indvars.iv.next.100, 10
  br i1 %exitcond.100.not, label %for.inc100.loopexit.100, label %for.body87.100, !llvm.loop !13

for.inc100.loopexit.100:                          ; preds = %for.body87.100
  %mul75.100 = mul nsw i32 %add74.100, %rem15
  %add81.100 = add nsw i32 %rem80.100, %rem78.sext
  br label %for.inc100.100

for.inc100.100:                                   ; preds = %for.inc100.loopexit.100, %if.end.100
  %var4.1.100 = phi i32 [ %var4.1.99, %if.end.100 ], [ %mul75.100, %for.inc100.loopexit.100 ]
  %var5.1.100 = phi i32 [ %var5.1.99, %if.end.100 ], [ %rem9, %for.inc100.loopexit.100 ]
  %var1.1.100 = phi i32 [ %var1.1.99, %if.end.100 ], [ %add81.100, %for.inc100.loopexit.100 ]
  %808 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.101 = mul nsw i32 %808, 3
  %809 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.101 = sdiv i32 %809, -2
  %sub.101 = add i32 %div.neg.101, %mul.101
  store i32 %sub.101, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.101 = add nsw i32 %sub.101, %808
  %rem32.101 = srem i32 %add31.101, 100
  store i32 %rem32.101, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.101 = or i32 %rem32.101, 1
  %add33.101 = add nsw i32 %or.101, %rem17
  store i32 %add33.101, i32* @main.hot_data.1, align 4, !tbaa !10
  %810 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.101 = add nsw i32 %add33.101, %810
  store i32 %add42.101, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %811 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.101 = add i16 %811, 101
  %rem43171.101 = urem i16 %rem43.lhs.trunc.101, 100
  %cmp44.101 = icmp eq i16 %rem43171.101, 0
  br i1 %cmp44.101, label %if.then.101, label %if.end.101

if.then.101:                                      ; preds = %for.inc100.100
  %add48.101 = add nsw i32 %mid_vars.sroa.0.1.100, %rem9
  %mul49.101 = mul nsw i32 %local2.1.100, %add48.101
  %shr.101 = ashr i32 %mul49.101, 1
  %add51.101 = add nsw i32 %sub.101, %shr.101
  %call53.101 = tail call i32 @rand() #3
  %rem54.101 = srem i32 %call53.101, 5
  %add55.101 = add nsw i32 %rem54.101, %rem17
  %rem56.101 = srem i32 %add55.101, 100
  %812 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.101 = add nsw i32 %812, %shr.101
  %813 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.101 = add nsw i32 %add59.101, %813
  store i32 %add66.101, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %814 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %814, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.101, %for.inc100.100
  %mid_vars.sroa.0.1.101 = phi i32 [ %add51.101, %if.then.101 ], [ %mid_vars.sroa.0.1.100, %for.inc100.100 ]
  %mid_vars.sroa.10166.1.101 = phi i32 [ %mul49.101, %if.then.101 ], [ %mid_vars.sroa.10166.1.100, %for.inc100.100 ]
  %local2.1.101 = phi i32 [ %rem56.101, %if.then.101 ], [ %local2.1.100, %for.inc100.100 ]
  %rem70172.101 = urem i16 %rem43.lhs.trunc.101, 1000
  %cmp71.101 = icmp eq i16 %rem70172.101, 0
  br i1 %cmp71.101, label %if.then73.101, label %for.inc100.101

if.then73.101:                                    ; preds = %if.end.101
  %add74.101 = add nsw i32 %var1.1.100, %rem13
  %call79.101 = tail call i32 @rand() #3
  %rem80.101 = srem i32 %call79.101, 5
  br label %for.body87.101

for.body87.101:                                   ; preds = %for.body87.101, %if.then73.101
  %indvars.iv.101 = phi i64 [ 0, %if.then73.101 ], [ %indvars.iv.next.101, %for.body87.101 ]
  %call88.101 = tail call i32 @rand() #3
  %rem89.101 = srem i32 %call88.101, 100
  %815 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.101 = add nsw i32 %rem89.101, %815
  %rem93.lhs.trunc.101 = trunc i64 %indvars.iv.101 to i8
  %rem93173.101 = urem i8 %rem93.lhs.trunc.101, 10
  %idxprom94.101 = zext i8 %rem93173.101 to i64
  %arrayidx95.101 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.101, i64 %idxprom94.101
  store i32 %add90.101, i32* %arrayidx95.101, align 4, !tbaa !12
  %indvars.iv.next.101 = add nuw nsw i64 %indvars.iv.101, 1
  %exitcond.101.not = icmp eq i64 %indvars.iv.next.101, 10
  br i1 %exitcond.101.not, label %for.inc100.loopexit.101, label %for.body87.101, !llvm.loop !13

for.inc100.loopexit.101:                          ; preds = %for.body87.101
  %mul75.101 = mul nsw i32 %add74.101, %rem15
  %add81.101 = add nsw i32 %rem80.101, %rem78.sext
  br label %for.inc100.101

for.inc100.101:                                   ; preds = %for.inc100.loopexit.101, %if.end.101
  %var4.1.101 = phi i32 [ %var4.1.100, %if.end.101 ], [ %mul75.101, %for.inc100.loopexit.101 ]
  %var5.1.101 = phi i32 [ %var5.1.100, %if.end.101 ], [ %rem9, %for.inc100.loopexit.101 ]
  %var1.1.101 = phi i32 [ %var1.1.100, %if.end.101 ], [ %add81.101, %for.inc100.loopexit.101 ]
  %816 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.102 = mul nsw i32 %816, 3
  %817 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.102 = sdiv i32 %817, -2
  %sub.102 = add i32 %div.neg.102, %mul.102
  store i32 %sub.102, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.102 = add nsw i32 %sub.102, %816
  %rem32.102 = srem i32 %add31.102, 100
  store i32 %rem32.102, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.102 = or i32 %rem32.102, 1
  %add33.102 = add nsw i32 %or.102, %rem17
  store i32 %add33.102, i32* @main.hot_data.1, align 4, !tbaa !10
  %818 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.102 = add nsw i32 %add33.102, %818
  store i32 %add42.102, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %819 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.102 = add i16 %819, 102
  %rem43171.102 = urem i16 %rem43.lhs.trunc.102, 100
  %cmp44.102 = icmp eq i16 %rem43171.102, 0
  br i1 %cmp44.102, label %if.then.102, label %if.end.102

if.then.102:                                      ; preds = %for.inc100.101
  %add48.102 = add nsw i32 %mid_vars.sroa.0.1.101, %rem9
  %mul49.102 = mul nsw i32 %local2.1.101, %add48.102
  %shr.102 = ashr i32 %mul49.102, 1
  %add51.102 = add nsw i32 %sub.102, %shr.102
  %call53.102 = tail call i32 @rand() #3
  %rem54.102 = srem i32 %call53.102, 5
  %add55.102 = add nsw i32 %rem54.102, %rem17
  %rem56.102 = srem i32 %add55.102, 100
  %820 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.102 = add nsw i32 %820, %shr.102
  %821 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.102 = add nsw i32 %add59.102, %821
  store i32 %add66.102, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %822 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %822, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.102, %for.inc100.101
  %mid_vars.sroa.0.1.102 = phi i32 [ %add51.102, %if.then.102 ], [ %mid_vars.sroa.0.1.101, %for.inc100.101 ]
  %mid_vars.sroa.10166.1.102 = phi i32 [ %mul49.102, %if.then.102 ], [ %mid_vars.sroa.10166.1.101, %for.inc100.101 ]
  %local2.1.102 = phi i32 [ %rem56.102, %if.then.102 ], [ %local2.1.101, %for.inc100.101 ]
  %rem70172.102 = urem i16 %rem43.lhs.trunc.102, 1000
  %cmp71.102 = icmp eq i16 %rem70172.102, 0
  br i1 %cmp71.102, label %if.then73.102, label %for.inc100.102

if.then73.102:                                    ; preds = %if.end.102
  %add74.102 = add nsw i32 %var1.1.101, %rem13
  %call79.102 = tail call i32 @rand() #3
  %rem80.102 = srem i32 %call79.102, 5
  br label %for.body87.102

for.body87.102:                                   ; preds = %for.body87.102, %if.then73.102
  %indvars.iv.102 = phi i64 [ 0, %if.then73.102 ], [ %indvars.iv.next.102, %for.body87.102 ]
  %call88.102 = tail call i32 @rand() #3
  %rem89.102 = srem i32 %call88.102, 100
  %823 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.102 = add nsw i32 %rem89.102, %823
  %rem93.lhs.trunc.102 = trunc i64 %indvars.iv.102 to i8
  %rem93173.102 = urem i8 %rem93.lhs.trunc.102, 10
  %idxprom94.102 = zext i8 %rem93173.102 to i64
  %arrayidx95.102 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.102, i64 %idxprom94.102
  store i32 %add90.102, i32* %arrayidx95.102, align 4, !tbaa !12
  %indvars.iv.next.102 = add nuw nsw i64 %indvars.iv.102, 1
  %exitcond.102.not = icmp eq i64 %indvars.iv.next.102, 10
  br i1 %exitcond.102.not, label %for.inc100.loopexit.102, label %for.body87.102, !llvm.loop !13

for.inc100.loopexit.102:                          ; preds = %for.body87.102
  %mul75.102 = mul nsw i32 %add74.102, %rem15
  %add81.102 = add nsw i32 %rem80.102, %rem78.sext
  br label %for.inc100.102

for.inc100.102:                                   ; preds = %for.inc100.loopexit.102, %if.end.102
  %var4.1.102 = phi i32 [ %var4.1.101, %if.end.102 ], [ %mul75.102, %for.inc100.loopexit.102 ]
  %var5.1.102 = phi i32 [ %var5.1.101, %if.end.102 ], [ %rem9, %for.inc100.loopexit.102 ]
  %var1.1.102 = phi i32 [ %var1.1.101, %if.end.102 ], [ %add81.102, %for.inc100.loopexit.102 ]
  %824 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.103 = mul nsw i32 %824, 3
  %825 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.103 = sdiv i32 %825, -2
  %sub.103 = add i32 %div.neg.103, %mul.103
  store i32 %sub.103, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.103 = add nsw i32 %sub.103, %824
  %rem32.103 = srem i32 %add31.103, 100
  store i32 %rem32.103, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.103 = or i32 %rem32.103, 1
  %add33.103 = add nsw i32 %or.103, %rem17
  store i32 %add33.103, i32* @main.hot_data.1, align 4, !tbaa !10
  %826 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.103 = add nsw i32 %add33.103, %826
  store i32 %add42.103, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %827 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.103 = add i16 %827, 103
  %rem43171.103 = urem i16 %rem43.lhs.trunc.103, 100
  %cmp44.103 = icmp eq i16 %rem43171.103, 0
  br i1 %cmp44.103, label %if.then.103, label %if.end.103

if.then.103:                                      ; preds = %for.inc100.102
  %add48.103 = add nsw i32 %mid_vars.sroa.0.1.102, %rem9
  %mul49.103 = mul nsw i32 %local2.1.102, %add48.103
  %shr.103 = ashr i32 %mul49.103, 1
  %add51.103 = add nsw i32 %sub.103, %shr.103
  %call53.103 = tail call i32 @rand() #3
  %rem54.103 = srem i32 %call53.103, 5
  %add55.103 = add nsw i32 %rem54.103, %rem17
  %rem56.103 = srem i32 %add55.103, 100
  %828 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.103 = add nsw i32 %828, %shr.103
  %829 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.103 = add nsw i32 %add59.103, %829
  store i32 %add66.103, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %830 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %830, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.103, %for.inc100.102
  %mid_vars.sroa.0.1.103 = phi i32 [ %add51.103, %if.then.103 ], [ %mid_vars.sroa.0.1.102, %for.inc100.102 ]
  %mid_vars.sroa.10166.1.103 = phi i32 [ %mul49.103, %if.then.103 ], [ %mid_vars.sroa.10166.1.102, %for.inc100.102 ]
  %local2.1.103 = phi i32 [ %rem56.103, %if.then.103 ], [ %local2.1.102, %for.inc100.102 ]
  %rem70172.103 = urem i16 %rem43.lhs.trunc.103, 1000
  %cmp71.103 = icmp eq i16 %rem70172.103, 0
  br i1 %cmp71.103, label %if.then73.103, label %for.inc100.103

if.then73.103:                                    ; preds = %if.end.103
  %add74.103 = add nsw i32 %var1.1.102, %rem13
  %call79.103 = tail call i32 @rand() #3
  %rem80.103 = srem i32 %call79.103, 5
  br label %for.body87.103

for.body87.103:                                   ; preds = %for.body87.103, %if.then73.103
  %indvars.iv.103 = phi i64 [ 0, %if.then73.103 ], [ %indvars.iv.next.103, %for.body87.103 ]
  %call88.103 = tail call i32 @rand() #3
  %rem89.103 = srem i32 %call88.103, 100
  %831 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.103 = add nsw i32 %rem89.103, %831
  %rem93.lhs.trunc.103 = trunc i64 %indvars.iv.103 to i8
  %rem93173.103 = urem i8 %rem93.lhs.trunc.103, 10
  %idxprom94.103 = zext i8 %rem93173.103 to i64
  %arrayidx95.103 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.103, i64 %idxprom94.103
  store i32 %add90.103, i32* %arrayidx95.103, align 4, !tbaa !12
  %indvars.iv.next.103 = add nuw nsw i64 %indvars.iv.103, 1
  %exitcond.103.not = icmp eq i64 %indvars.iv.next.103, 10
  br i1 %exitcond.103.not, label %for.inc100.loopexit.103, label %for.body87.103, !llvm.loop !13

for.inc100.loopexit.103:                          ; preds = %for.body87.103
  %mul75.103 = mul nsw i32 %add74.103, %rem15
  %add81.103 = add nsw i32 %rem80.103, %rem78.sext
  br label %for.inc100.103

for.inc100.103:                                   ; preds = %for.inc100.loopexit.103, %if.end.103
  %var4.1.103 = phi i32 [ %var4.1.102, %if.end.103 ], [ %mul75.103, %for.inc100.loopexit.103 ]
  %var5.1.103 = phi i32 [ %var5.1.102, %if.end.103 ], [ %rem9, %for.inc100.loopexit.103 ]
  %var1.1.103 = phi i32 [ %var1.1.102, %if.end.103 ], [ %add81.103, %for.inc100.loopexit.103 ]
  %832 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.104 = mul nsw i32 %832, 3
  %833 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.104 = sdiv i32 %833, -2
  %sub.104 = add i32 %div.neg.104, %mul.104
  store i32 %sub.104, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.104 = add nsw i32 %sub.104, %832
  %rem32.104 = srem i32 %add31.104, 100
  store i32 %rem32.104, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.104 = or i32 %rem32.104, 1
  %add33.104 = add nsw i32 %or.104, %rem17
  store i32 %add33.104, i32* @main.hot_data.1, align 4, !tbaa !10
  %834 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.104 = add nsw i32 %add33.104, %834
  store i32 %add42.104, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %835 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.104 = add i16 %835, 104
  %rem43171.104 = urem i16 %rem43.lhs.trunc.104, 100
  %cmp44.104 = icmp eq i16 %rem43171.104, 0
  br i1 %cmp44.104, label %if.then.104, label %if.end.104

if.then.104:                                      ; preds = %for.inc100.103
  %add48.104 = add nsw i32 %mid_vars.sroa.0.1.103, %rem9
  %mul49.104 = mul nsw i32 %local2.1.103, %add48.104
  %shr.104 = ashr i32 %mul49.104, 1
  %add51.104 = add nsw i32 %sub.104, %shr.104
  %call53.104 = tail call i32 @rand() #3
  %rem54.104 = srem i32 %call53.104, 5
  %add55.104 = add nsw i32 %rem54.104, %rem17
  %rem56.104 = srem i32 %add55.104, 100
  %836 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.104 = add nsw i32 %836, %shr.104
  %837 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.104 = add nsw i32 %add59.104, %837
  store i32 %add66.104, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %838 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %838, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.104, %for.inc100.103
  %mid_vars.sroa.0.1.104 = phi i32 [ %add51.104, %if.then.104 ], [ %mid_vars.sroa.0.1.103, %for.inc100.103 ]
  %mid_vars.sroa.10166.1.104 = phi i32 [ %mul49.104, %if.then.104 ], [ %mid_vars.sroa.10166.1.103, %for.inc100.103 ]
  %local2.1.104 = phi i32 [ %rem56.104, %if.then.104 ], [ %local2.1.103, %for.inc100.103 ]
  %rem70172.104 = urem i16 %rem43.lhs.trunc.104, 1000
  %cmp71.104 = icmp eq i16 %rem70172.104, 0
  br i1 %cmp71.104, label %if.then73.104, label %for.inc100.104

if.then73.104:                                    ; preds = %if.end.104
  %add74.104 = add nsw i32 %var1.1.103, %rem13
  %call79.104 = tail call i32 @rand() #3
  %rem80.104 = srem i32 %call79.104, 5
  br label %for.body87.104

for.body87.104:                                   ; preds = %for.body87.104, %if.then73.104
  %indvars.iv.104 = phi i64 [ 0, %if.then73.104 ], [ %indvars.iv.next.104, %for.body87.104 ]
  %call88.104 = tail call i32 @rand() #3
  %rem89.104 = srem i32 %call88.104, 100
  %839 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.104 = add nsw i32 %rem89.104, %839
  %rem93.lhs.trunc.104 = trunc i64 %indvars.iv.104 to i8
  %rem93173.104 = urem i8 %rem93.lhs.trunc.104, 10
  %idxprom94.104 = zext i8 %rem93173.104 to i64
  %arrayidx95.104 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.104, i64 %idxprom94.104
  store i32 %add90.104, i32* %arrayidx95.104, align 4, !tbaa !12
  %indvars.iv.next.104 = add nuw nsw i64 %indvars.iv.104, 1
  %exitcond.104.not = icmp eq i64 %indvars.iv.next.104, 10
  br i1 %exitcond.104.not, label %for.inc100.loopexit.104, label %for.body87.104, !llvm.loop !13

for.inc100.loopexit.104:                          ; preds = %for.body87.104
  %mul75.104 = mul nsw i32 %add74.104, %rem15
  %add81.104 = add nsw i32 %rem80.104, %rem78.sext
  br label %for.inc100.104

for.inc100.104:                                   ; preds = %for.inc100.loopexit.104, %if.end.104
  %var4.1.104 = phi i32 [ %var4.1.103, %if.end.104 ], [ %mul75.104, %for.inc100.loopexit.104 ]
  %var5.1.104 = phi i32 [ %var5.1.103, %if.end.104 ], [ %rem9, %for.inc100.loopexit.104 ]
  %var1.1.104 = phi i32 [ %var1.1.103, %if.end.104 ], [ %add81.104, %for.inc100.loopexit.104 ]
  %840 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.105 = mul nsw i32 %840, 3
  %841 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.105 = sdiv i32 %841, -2
  %sub.105 = add i32 %div.neg.105, %mul.105
  store i32 %sub.105, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.105 = add nsw i32 %sub.105, %840
  %rem32.105 = srem i32 %add31.105, 100
  store i32 %rem32.105, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.105 = or i32 %rem32.105, 1
  %add33.105 = add nsw i32 %or.105, %rem17
  store i32 %add33.105, i32* @main.hot_data.1, align 4, !tbaa !10
  %842 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.105 = add nsw i32 %add33.105, %842
  store i32 %add42.105, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %843 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.105 = add i16 %843, 105
  %rem43171.105 = urem i16 %rem43.lhs.trunc.105, 100
  %cmp44.105 = icmp eq i16 %rem43171.105, 0
  br i1 %cmp44.105, label %if.then.105, label %if.end.105

if.then.105:                                      ; preds = %for.inc100.104
  %add48.105 = add nsw i32 %mid_vars.sroa.0.1.104, %rem9
  %mul49.105 = mul nsw i32 %local2.1.104, %add48.105
  %shr.105 = ashr i32 %mul49.105, 1
  %add51.105 = add nsw i32 %sub.105, %shr.105
  %call53.105 = tail call i32 @rand() #3
  %rem54.105 = srem i32 %call53.105, 5
  %add55.105 = add nsw i32 %rem54.105, %rem17
  %rem56.105 = srem i32 %add55.105, 100
  %844 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.105 = add nsw i32 %844, %shr.105
  %845 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.105 = add nsw i32 %add59.105, %845
  store i32 %add66.105, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %846 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %846, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.105, %for.inc100.104
  %mid_vars.sroa.0.1.105 = phi i32 [ %add51.105, %if.then.105 ], [ %mid_vars.sroa.0.1.104, %for.inc100.104 ]
  %mid_vars.sroa.10166.1.105 = phi i32 [ %mul49.105, %if.then.105 ], [ %mid_vars.sroa.10166.1.104, %for.inc100.104 ]
  %local2.1.105 = phi i32 [ %rem56.105, %if.then.105 ], [ %local2.1.104, %for.inc100.104 ]
  %rem70172.105 = urem i16 %rem43.lhs.trunc.105, 1000
  %cmp71.105 = icmp eq i16 %rem70172.105, 0
  br i1 %cmp71.105, label %if.then73.105, label %for.inc100.105

if.then73.105:                                    ; preds = %if.end.105
  %add74.105 = add nsw i32 %var1.1.104, %rem13
  %call79.105 = tail call i32 @rand() #3
  %rem80.105 = srem i32 %call79.105, 5
  br label %for.body87.105

for.body87.105:                                   ; preds = %for.body87.105, %if.then73.105
  %indvars.iv.105 = phi i64 [ 0, %if.then73.105 ], [ %indvars.iv.next.105, %for.body87.105 ]
  %call88.105 = tail call i32 @rand() #3
  %rem89.105 = srem i32 %call88.105, 100
  %847 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.105 = add nsw i32 %rem89.105, %847
  %rem93.lhs.trunc.105 = trunc i64 %indvars.iv.105 to i8
  %rem93173.105 = urem i8 %rem93.lhs.trunc.105, 10
  %idxprom94.105 = zext i8 %rem93173.105 to i64
  %arrayidx95.105 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.105, i64 %idxprom94.105
  store i32 %add90.105, i32* %arrayidx95.105, align 4, !tbaa !12
  %indvars.iv.next.105 = add nuw nsw i64 %indvars.iv.105, 1
  %exitcond.105.not = icmp eq i64 %indvars.iv.next.105, 10
  br i1 %exitcond.105.not, label %for.inc100.loopexit.105, label %for.body87.105, !llvm.loop !13

for.inc100.loopexit.105:                          ; preds = %for.body87.105
  %mul75.105 = mul nsw i32 %add74.105, %rem15
  %add81.105 = add nsw i32 %rem80.105, %rem78.sext
  br label %for.inc100.105

for.inc100.105:                                   ; preds = %for.inc100.loopexit.105, %if.end.105
  %var4.1.105 = phi i32 [ %var4.1.104, %if.end.105 ], [ %mul75.105, %for.inc100.loopexit.105 ]
  %var5.1.105 = phi i32 [ %var5.1.104, %if.end.105 ], [ %rem9, %for.inc100.loopexit.105 ]
  %var1.1.105 = phi i32 [ %var1.1.104, %if.end.105 ], [ %add81.105, %for.inc100.loopexit.105 ]
  %848 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.106 = mul nsw i32 %848, 3
  %849 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.106 = sdiv i32 %849, -2
  %sub.106 = add i32 %div.neg.106, %mul.106
  store i32 %sub.106, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.106 = add nsw i32 %sub.106, %848
  %rem32.106 = srem i32 %add31.106, 100
  store i32 %rem32.106, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.106 = or i32 %rem32.106, 1
  %add33.106 = add nsw i32 %or.106, %rem17
  store i32 %add33.106, i32* @main.hot_data.1, align 4, !tbaa !10
  %850 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.106 = add nsw i32 %add33.106, %850
  store i32 %add42.106, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %851 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.106 = add i16 %851, 106
  %rem43171.106 = urem i16 %rem43.lhs.trunc.106, 100
  %cmp44.106 = icmp eq i16 %rem43171.106, 0
  br i1 %cmp44.106, label %if.then.106, label %if.end.106

if.then.106:                                      ; preds = %for.inc100.105
  %add48.106 = add nsw i32 %mid_vars.sroa.0.1.105, %rem9
  %mul49.106 = mul nsw i32 %local2.1.105, %add48.106
  %shr.106 = ashr i32 %mul49.106, 1
  %add51.106 = add nsw i32 %sub.106, %shr.106
  %call53.106 = tail call i32 @rand() #3
  %rem54.106 = srem i32 %call53.106, 5
  %add55.106 = add nsw i32 %rem54.106, %rem17
  %rem56.106 = srem i32 %add55.106, 100
  %852 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.106 = add nsw i32 %852, %shr.106
  %853 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.106 = add nsw i32 %add59.106, %853
  store i32 %add66.106, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %854 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %854, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.106, %for.inc100.105
  %mid_vars.sroa.0.1.106 = phi i32 [ %add51.106, %if.then.106 ], [ %mid_vars.sroa.0.1.105, %for.inc100.105 ]
  %mid_vars.sroa.10166.1.106 = phi i32 [ %mul49.106, %if.then.106 ], [ %mid_vars.sroa.10166.1.105, %for.inc100.105 ]
  %local2.1.106 = phi i32 [ %rem56.106, %if.then.106 ], [ %local2.1.105, %for.inc100.105 ]
  %rem70172.106 = urem i16 %rem43.lhs.trunc.106, 1000
  %cmp71.106 = icmp eq i16 %rem70172.106, 0
  br i1 %cmp71.106, label %if.then73.106, label %for.inc100.106

if.then73.106:                                    ; preds = %if.end.106
  %add74.106 = add nsw i32 %var1.1.105, %rem13
  %call79.106 = tail call i32 @rand() #3
  %rem80.106 = srem i32 %call79.106, 5
  br label %for.body87.106

for.body87.106:                                   ; preds = %for.body87.106, %if.then73.106
  %indvars.iv.106 = phi i64 [ 0, %if.then73.106 ], [ %indvars.iv.next.106, %for.body87.106 ]
  %call88.106 = tail call i32 @rand() #3
  %rem89.106 = srem i32 %call88.106, 100
  %855 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.106 = add nsw i32 %rem89.106, %855
  %rem93.lhs.trunc.106 = trunc i64 %indvars.iv.106 to i8
  %rem93173.106 = urem i8 %rem93.lhs.trunc.106, 10
  %idxprom94.106 = zext i8 %rem93173.106 to i64
  %arrayidx95.106 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.106, i64 %idxprom94.106
  store i32 %add90.106, i32* %arrayidx95.106, align 4, !tbaa !12
  %indvars.iv.next.106 = add nuw nsw i64 %indvars.iv.106, 1
  %exitcond.106.not = icmp eq i64 %indvars.iv.next.106, 10
  br i1 %exitcond.106.not, label %for.inc100.loopexit.106, label %for.body87.106, !llvm.loop !13

for.inc100.loopexit.106:                          ; preds = %for.body87.106
  %mul75.106 = mul nsw i32 %add74.106, %rem15
  %add81.106 = add nsw i32 %rem80.106, %rem78.sext
  br label %for.inc100.106

for.inc100.106:                                   ; preds = %for.inc100.loopexit.106, %if.end.106
  %var4.1.106 = phi i32 [ %var4.1.105, %if.end.106 ], [ %mul75.106, %for.inc100.loopexit.106 ]
  %var5.1.106 = phi i32 [ %var5.1.105, %if.end.106 ], [ %rem9, %for.inc100.loopexit.106 ]
  %var1.1.106 = phi i32 [ %var1.1.105, %if.end.106 ], [ %add81.106, %for.inc100.loopexit.106 ]
  %856 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.107 = mul nsw i32 %856, 3
  %857 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.107 = sdiv i32 %857, -2
  %sub.107 = add i32 %div.neg.107, %mul.107
  store i32 %sub.107, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.107 = add nsw i32 %sub.107, %856
  %rem32.107 = srem i32 %add31.107, 100
  store i32 %rem32.107, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.107 = or i32 %rem32.107, 1
  %add33.107 = add nsw i32 %or.107, %rem17
  store i32 %add33.107, i32* @main.hot_data.1, align 4, !tbaa !10
  %858 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.107 = add nsw i32 %add33.107, %858
  store i32 %add42.107, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %859 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.107 = add i16 %859, 107
  %rem43171.107 = urem i16 %rem43.lhs.trunc.107, 100
  %cmp44.107 = icmp eq i16 %rem43171.107, 0
  br i1 %cmp44.107, label %if.then.107, label %if.end.107

if.then.107:                                      ; preds = %for.inc100.106
  %add48.107 = add nsw i32 %mid_vars.sroa.0.1.106, %rem9
  %mul49.107 = mul nsw i32 %local2.1.106, %add48.107
  %shr.107 = ashr i32 %mul49.107, 1
  %add51.107 = add nsw i32 %sub.107, %shr.107
  %call53.107 = tail call i32 @rand() #3
  %rem54.107 = srem i32 %call53.107, 5
  %add55.107 = add nsw i32 %rem54.107, %rem17
  %rem56.107 = srem i32 %add55.107, 100
  %860 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.107 = add nsw i32 %860, %shr.107
  %861 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.107 = add nsw i32 %add59.107, %861
  store i32 %add66.107, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %862 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %862, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.107, %for.inc100.106
  %mid_vars.sroa.0.1.107 = phi i32 [ %add51.107, %if.then.107 ], [ %mid_vars.sroa.0.1.106, %for.inc100.106 ]
  %mid_vars.sroa.10166.1.107 = phi i32 [ %mul49.107, %if.then.107 ], [ %mid_vars.sroa.10166.1.106, %for.inc100.106 ]
  %local2.1.107 = phi i32 [ %rem56.107, %if.then.107 ], [ %local2.1.106, %for.inc100.106 ]
  %rem70172.107 = urem i16 %rem43.lhs.trunc.107, 1000
  %cmp71.107 = icmp eq i16 %rem70172.107, 0
  br i1 %cmp71.107, label %if.then73.107, label %for.inc100.107

if.then73.107:                                    ; preds = %if.end.107
  %add74.107 = add nsw i32 %var1.1.106, %rem13
  %call79.107 = tail call i32 @rand() #3
  %rem80.107 = srem i32 %call79.107, 5
  br label %for.body87.107

for.body87.107:                                   ; preds = %for.body87.107, %if.then73.107
  %indvars.iv.107 = phi i64 [ 0, %if.then73.107 ], [ %indvars.iv.next.107, %for.body87.107 ]
  %call88.107 = tail call i32 @rand() #3
  %rem89.107 = srem i32 %call88.107, 100
  %863 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.107 = add nsw i32 %rem89.107, %863
  %rem93.lhs.trunc.107 = trunc i64 %indvars.iv.107 to i8
  %rem93173.107 = urem i8 %rem93.lhs.trunc.107, 10
  %idxprom94.107 = zext i8 %rem93173.107 to i64
  %arrayidx95.107 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.107, i64 %idxprom94.107
  store i32 %add90.107, i32* %arrayidx95.107, align 4, !tbaa !12
  %indvars.iv.next.107 = add nuw nsw i64 %indvars.iv.107, 1
  %exitcond.107.not = icmp eq i64 %indvars.iv.next.107, 10
  br i1 %exitcond.107.not, label %for.inc100.loopexit.107, label %for.body87.107, !llvm.loop !13

for.inc100.loopexit.107:                          ; preds = %for.body87.107
  %mul75.107 = mul nsw i32 %add74.107, %rem15
  %add81.107 = add nsw i32 %rem80.107, %rem78.sext
  br label %for.inc100.107

for.inc100.107:                                   ; preds = %for.inc100.loopexit.107, %if.end.107
  %var4.1.107 = phi i32 [ %var4.1.106, %if.end.107 ], [ %mul75.107, %for.inc100.loopexit.107 ]
  %var5.1.107 = phi i32 [ %var5.1.106, %if.end.107 ], [ %rem9, %for.inc100.loopexit.107 ]
  %var1.1.107 = phi i32 [ %var1.1.106, %if.end.107 ], [ %add81.107, %for.inc100.loopexit.107 ]
  %864 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.108 = mul nsw i32 %864, 3
  %865 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.108 = sdiv i32 %865, -2
  %sub.108 = add i32 %div.neg.108, %mul.108
  store i32 %sub.108, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.108 = add nsw i32 %sub.108, %864
  %rem32.108 = srem i32 %add31.108, 100
  store i32 %rem32.108, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.108 = or i32 %rem32.108, 1
  %add33.108 = add nsw i32 %or.108, %rem17
  store i32 %add33.108, i32* @main.hot_data.1, align 4, !tbaa !10
  %866 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.108 = add nsw i32 %add33.108, %866
  store i32 %add42.108, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %867 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.108 = add i16 %867, 108
  %rem43171.108 = urem i16 %rem43.lhs.trunc.108, 100
  %cmp44.108 = icmp eq i16 %rem43171.108, 0
  br i1 %cmp44.108, label %if.then.108, label %if.end.108

if.then.108:                                      ; preds = %for.inc100.107
  %add48.108 = add nsw i32 %mid_vars.sroa.0.1.107, %rem9
  %mul49.108 = mul nsw i32 %local2.1.107, %add48.108
  %shr.108 = ashr i32 %mul49.108, 1
  %add51.108 = add nsw i32 %sub.108, %shr.108
  %call53.108 = tail call i32 @rand() #3
  %rem54.108 = srem i32 %call53.108, 5
  %add55.108 = add nsw i32 %rem54.108, %rem17
  %rem56.108 = srem i32 %add55.108, 100
  %868 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.108 = add nsw i32 %868, %shr.108
  %869 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.108 = add nsw i32 %add59.108, %869
  store i32 %add66.108, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %870 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %870, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.108, %for.inc100.107
  %mid_vars.sroa.0.1.108 = phi i32 [ %add51.108, %if.then.108 ], [ %mid_vars.sroa.0.1.107, %for.inc100.107 ]
  %mid_vars.sroa.10166.1.108 = phi i32 [ %mul49.108, %if.then.108 ], [ %mid_vars.sroa.10166.1.107, %for.inc100.107 ]
  %local2.1.108 = phi i32 [ %rem56.108, %if.then.108 ], [ %local2.1.107, %for.inc100.107 ]
  %rem70172.108 = urem i16 %rem43.lhs.trunc.108, 1000
  %cmp71.108 = icmp eq i16 %rem70172.108, 0
  br i1 %cmp71.108, label %if.then73.108, label %for.inc100.108

if.then73.108:                                    ; preds = %if.end.108
  %add74.108 = add nsw i32 %var1.1.107, %rem13
  %call79.108 = tail call i32 @rand() #3
  %rem80.108 = srem i32 %call79.108, 5
  br label %for.body87.108

for.body87.108:                                   ; preds = %for.body87.108, %if.then73.108
  %indvars.iv.108 = phi i64 [ 0, %if.then73.108 ], [ %indvars.iv.next.108, %for.body87.108 ]
  %call88.108 = tail call i32 @rand() #3
  %rem89.108 = srem i32 %call88.108, 100
  %871 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.108 = add nsw i32 %rem89.108, %871
  %rem93.lhs.trunc.108 = trunc i64 %indvars.iv.108 to i8
  %rem93173.108 = urem i8 %rem93.lhs.trunc.108, 10
  %idxprom94.108 = zext i8 %rem93173.108 to i64
  %arrayidx95.108 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.108, i64 %idxprom94.108
  store i32 %add90.108, i32* %arrayidx95.108, align 4, !tbaa !12
  %indvars.iv.next.108 = add nuw nsw i64 %indvars.iv.108, 1
  %exitcond.108.not = icmp eq i64 %indvars.iv.next.108, 10
  br i1 %exitcond.108.not, label %for.inc100.loopexit.108, label %for.body87.108, !llvm.loop !13

for.inc100.loopexit.108:                          ; preds = %for.body87.108
  %mul75.108 = mul nsw i32 %add74.108, %rem15
  %add81.108 = add nsw i32 %rem80.108, %rem78.sext
  br label %for.inc100.108

for.inc100.108:                                   ; preds = %for.inc100.loopexit.108, %if.end.108
  %var4.1.108 = phi i32 [ %var4.1.107, %if.end.108 ], [ %mul75.108, %for.inc100.loopexit.108 ]
  %var5.1.108 = phi i32 [ %var5.1.107, %if.end.108 ], [ %rem9, %for.inc100.loopexit.108 ]
  %var1.1.108 = phi i32 [ %var1.1.107, %if.end.108 ], [ %add81.108, %for.inc100.loopexit.108 ]
  %872 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.109 = mul nsw i32 %872, 3
  %873 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.109 = sdiv i32 %873, -2
  %sub.109 = add i32 %div.neg.109, %mul.109
  store i32 %sub.109, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.109 = add nsw i32 %sub.109, %872
  %rem32.109 = srem i32 %add31.109, 100
  store i32 %rem32.109, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.109 = or i32 %rem32.109, 1
  %add33.109 = add nsw i32 %or.109, %rem17
  store i32 %add33.109, i32* @main.hot_data.1, align 4, !tbaa !10
  %874 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.109 = add nsw i32 %add33.109, %874
  store i32 %add42.109, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %875 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.109 = add i16 %875, 109
  %rem43171.109 = urem i16 %rem43.lhs.trunc.109, 100
  %cmp44.109 = icmp eq i16 %rem43171.109, 0
  br i1 %cmp44.109, label %if.then.109, label %if.end.109

if.then.109:                                      ; preds = %for.inc100.108
  %add48.109 = add nsw i32 %mid_vars.sroa.0.1.108, %rem9
  %mul49.109 = mul nsw i32 %local2.1.108, %add48.109
  %shr.109 = ashr i32 %mul49.109, 1
  %add51.109 = add nsw i32 %sub.109, %shr.109
  %call53.109 = tail call i32 @rand() #3
  %rem54.109 = srem i32 %call53.109, 5
  %add55.109 = add nsw i32 %rem54.109, %rem17
  %rem56.109 = srem i32 %add55.109, 100
  %876 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.109 = add nsw i32 %876, %shr.109
  %877 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.109 = add nsw i32 %add59.109, %877
  store i32 %add66.109, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %878 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %878, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.109, %for.inc100.108
  %mid_vars.sroa.0.1.109 = phi i32 [ %add51.109, %if.then.109 ], [ %mid_vars.sroa.0.1.108, %for.inc100.108 ]
  %mid_vars.sroa.10166.1.109 = phi i32 [ %mul49.109, %if.then.109 ], [ %mid_vars.sroa.10166.1.108, %for.inc100.108 ]
  %local2.1.109 = phi i32 [ %rem56.109, %if.then.109 ], [ %local2.1.108, %for.inc100.108 ]
  %rem70172.109 = urem i16 %rem43.lhs.trunc.109, 1000
  %cmp71.109 = icmp eq i16 %rem70172.109, 0
  br i1 %cmp71.109, label %if.then73.109, label %for.inc100.109

if.then73.109:                                    ; preds = %if.end.109
  %add74.109 = add nsw i32 %var1.1.108, %rem13
  %call79.109 = tail call i32 @rand() #3
  %rem80.109 = srem i32 %call79.109, 5
  br label %for.body87.109

for.body87.109:                                   ; preds = %for.body87.109, %if.then73.109
  %indvars.iv.109 = phi i64 [ 0, %if.then73.109 ], [ %indvars.iv.next.109, %for.body87.109 ]
  %call88.109 = tail call i32 @rand() #3
  %rem89.109 = srem i32 %call88.109, 100
  %879 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.109 = add nsw i32 %rem89.109, %879
  %rem93.lhs.trunc.109 = trunc i64 %indvars.iv.109 to i8
  %rem93173.109 = urem i8 %rem93.lhs.trunc.109, 10
  %idxprom94.109 = zext i8 %rem93173.109 to i64
  %arrayidx95.109 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.109, i64 %idxprom94.109
  store i32 %add90.109, i32* %arrayidx95.109, align 4, !tbaa !12
  %indvars.iv.next.109 = add nuw nsw i64 %indvars.iv.109, 1
  %exitcond.109.not = icmp eq i64 %indvars.iv.next.109, 10
  br i1 %exitcond.109.not, label %for.inc100.loopexit.109, label %for.body87.109, !llvm.loop !13

for.inc100.loopexit.109:                          ; preds = %for.body87.109
  %mul75.109 = mul nsw i32 %add74.109, %rem15
  %add81.109 = add nsw i32 %rem80.109, %rem78.sext
  br label %for.inc100.109

for.inc100.109:                                   ; preds = %for.inc100.loopexit.109, %if.end.109
  %var4.1.109 = phi i32 [ %var4.1.108, %if.end.109 ], [ %mul75.109, %for.inc100.loopexit.109 ]
  %var5.1.109 = phi i32 [ %var5.1.108, %if.end.109 ], [ %rem9, %for.inc100.loopexit.109 ]
  %var1.1.109 = phi i32 [ %var1.1.108, %if.end.109 ], [ %add81.109, %for.inc100.loopexit.109 ]
  %880 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.110 = mul nsw i32 %880, 3
  %881 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.110 = sdiv i32 %881, -2
  %sub.110 = add i32 %div.neg.110, %mul.110
  store i32 %sub.110, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.110 = add nsw i32 %sub.110, %880
  %rem32.110 = srem i32 %add31.110, 100
  store i32 %rem32.110, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.110 = or i32 %rem32.110, 1
  %add33.110 = add nsw i32 %or.110, %rem17
  store i32 %add33.110, i32* @main.hot_data.1, align 4, !tbaa !10
  %882 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.110 = add nsw i32 %add33.110, %882
  store i32 %add42.110, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %883 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.110 = add i16 %883, 110
  %rem43171.110 = urem i16 %rem43.lhs.trunc.110, 100
  %cmp44.110 = icmp eq i16 %rem43171.110, 0
  br i1 %cmp44.110, label %if.then.110, label %if.end.110

if.then.110:                                      ; preds = %for.inc100.109
  %add48.110 = add nsw i32 %mid_vars.sroa.0.1.109, %rem9
  %mul49.110 = mul nsw i32 %local2.1.109, %add48.110
  %shr.110 = ashr i32 %mul49.110, 1
  %add51.110 = add nsw i32 %sub.110, %shr.110
  %call53.110 = tail call i32 @rand() #3
  %rem54.110 = srem i32 %call53.110, 5
  %add55.110 = add nsw i32 %rem54.110, %rem17
  %rem56.110 = srem i32 %add55.110, 100
  %884 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.110 = add nsw i32 %884, %shr.110
  %885 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.110 = add nsw i32 %add59.110, %885
  store i32 %add66.110, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.110, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.110, %for.inc100.109
  %mid_vars.sroa.0.1.110 = phi i32 [ %add51.110, %if.then.110 ], [ %mid_vars.sroa.0.1.109, %for.inc100.109 ]
  %mid_vars.sroa.10166.1.110 = phi i32 [ %mul49.110, %if.then.110 ], [ %mid_vars.sroa.10166.1.109, %for.inc100.109 ]
  %local2.1.110 = phi i32 [ %rem56.110, %if.then.110 ], [ %local2.1.109, %for.inc100.109 ]
  %rem70172.110 = urem i16 %rem43.lhs.trunc.110, 1000
  %cmp71.110 = icmp eq i16 %rem70172.110, 0
  br i1 %cmp71.110, label %if.then73.110, label %for.inc100.110

if.then73.110:                                    ; preds = %if.end.110
  %add74.110 = add nsw i32 %var1.1.109, %rem13
  %call79.110 = tail call i32 @rand() #3
  %rem80.110 = srem i32 %call79.110, 5
  br label %for.body87.110

for.body87.110:                                   ; preds = %for.body87.110, %if.then73.110
  %indvars.iv.110 = phi i64 [ 0, %if.then73.110 ], [ %indvars.iv.next.110, %for.body87.110 ]
  %call88.110 = tail call i32 @rand() #3
  %rem89.110 = srem i32 %call88.110, 100
  %886 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.110 = add nsw i32 %rem89.110, %886
  %rem93.lhs.trunc.110 = trunc i64 %indvars.iv.110 to i8
  %rem93173.110 = urem i8 %rem93.lhs.trunc.110, 10
  %idxprom94.110 = zext i8 %rem93173.110 to i64
  %arrayidx95.110 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.110, i64 %idxprom94.110
  store i32 %add90.110, i32* %arrayidx95.110, align 4, !tbaa !12
  %indvars.iv.next.110 = add nuw nsw i64 %indvars.iv.110, 1
  %exitcond.110.not = icmp eq i64 %indvars.iv.next.110, 10
  br i1 %exitcond.110.not, label %for.inc100.loopexit.110, label %for.body87.110, !llvm.loop !13

for.inc100.loopexit.110:                          ; preds = %for.body87.110
  %mul75.110 = mul nsw i32 %add74.110, %rem15
  %add81.110 = add nsw i32 %rem80.110, %rem78.sext
  br label %for.inc100.110

for.inc100.110:                                   ; preds = %for.inc100.loopexit.110, %if.end.110
  %var4.1.110 = phi i32 [ %var4.1.109, %if.end.110 ], [ %mul75.110, %for.inc100.loopexit.110 ]
  %var5.1.110 = phi i32 [ %var5.1.109, %if.end.110 ], [ %rem9, %for.inc100.loopexit.110 ]
  %var1.1.110 = phi i32 [ %var1.1.109, %if.end.110 ], [ %add81.110, %for.inc100.loopexit.110 ]
  %887 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.111 = mul nsw i32 %887, 3
  %888 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.111 = sdiv i32 %888, -2
  %sub.111 = add i32 %div.neg.111, %mul.111
  store i32 %sub.111, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.111 = add nsw i32 %sub.111, %887
  %rem32.111 = srem i32 %add31.111, 100
  store i32 %rem32.111, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.111 = or i32 %rem32.111, 1
  %add33.111 = add nsw i32 %or.111, %rem17
  store i32 %add33.111, i32* @main.hot_data.1, align 4, !tbaa !10
  %889 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.111 = add nsw i32 %add33.111, %889
  store i32 %add42.111, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %890 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.111 = add i16 %890, 111
  %rem43171.111 = urem i16 %rem43.lhs.trunc.111, 100
  %cmp44.111 = icmp eq i16 %rem43171.111, 0
  br i1 %cmp44.111, label %if.then.111, label %if.end.111

if.then.111:                                      ; preds = %for.inc100.110
  %add48.111 = add nsw i32 %mid_vars.sroa.0.1.110, %rem9
  %mul49.111 = mul nsw i32 %local2.1.110, %add48.111
  %shr.111 = ashr i32 %mul49.111, 1
  %add51.111 = add nsw i32 %sub.111, %shr.111
  %call53.111 = tail call i32 @rand() #3
  %rem54.111 = srem i32 %call53.111, 5
  %add55.111 = add nsw i32 %rem54.111, %rem17
  %rem56.111 = srem i32 %add55.111, 100
  %891 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.111 = add nsw i32 %891, %shr.111
  %892 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.111 = add nsw i32 %add59.111, %892
  store i32 %add66.111, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %893 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %893, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.111, %for.inc100.110
  %mid_vars.sroa.0.1.111 = phi i32 [ %add51.111, %if.then.111 ], [ %mid_vars.sroa.0.1.110, %for.inc100.110 ]
  %mid_vars.sroa.10166.1.111 = phi i32 [ %mul49.111, %if.then.111 ], [ %mid_vars.sroa.10166.1.110, %for.inc100.110 ]
  %local2.1.111 = phi i32 [ %rem56.111, %if.then.111 ], [ %local2.1.110, %for.inc100.110 ]
  %rem70172.111 = urem i16 %rem43.lhs.trunc.111, 1000
  %cmp71.111 = icmp eq i16 %rem70172.111, 0
  br i1 %cmp71.111, label %if.then73.111, label %for.inc100.111

if.then73.111:                                    ; preds = %if.end.111
  %add74.111 = add nsw i32 %var1.1.110, %rem13
  %call79.111 = tail call i32 @rand() #3
  %rem80.111 = srem i32 %call79.111, 5
  br label %for.body87.111

for.body87.111:                                   ; preds = %for.body87.111, %if.then73.111
  %indvars.iv.111 = phi i64 [ 0, %if.then73.111 ], [ %indvars.iv.next.111, %for.body87.111 ]
  %call88.111 = tail call i32 @rand() #3
  %rem89.111 = srem i32 %call88.111, 100
  %894 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.111 = add nsw i32 %rem89.111, %894
  %rem93.lhs.trunc.111 = trunc i64 %indvars.iv.111 to i8
  %rem93173.111 = urem i8 %rem93.lhs.trunc.111, 10
  %idxprom94.111 = zext i8 %rem93173.111 to i64
  %arrayidx95.111 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.111, i64 %idxprom94.111
  store i32 %add90.111, i32* %arrayidx95.111, align 4, !tbaa !12
  %indvars.iv.next.111 = add nuw nsw i64 %indvars.iv.111, 1
  %exitcond.111.not = icmp eq i64 %indvars.iv.next.111, 10
  br i1 %exitcond.111.not, label %for.inc100.loopexit.111, label %for.body87.111, !llvm.loop !13

for.inc100.loopexit.111:                          ; preds = %for.body87.111
  %mul75.111 = mul nsw i32 %add74.111, %rem15
  %add81.111 = add nsw i32 %rem80.111, %rem78.sext
  br label %for.inc100.111

for.inc100.111:                                   ; preds = %for.inc100.loopexit.111, %if.end.111
  %var4.1.111 = phi i32 [ %var4.1.110, %if.end.111 ], [ %mul75.111, %for.inc100.loopexit.111 ]
  %var5.1.111 = phi i32 [ %var5.1.110, %if.end.111 ], [ %rem9, %for.inc100.loopexit.111 ]
  %var1.1.111 = phi i32 [ %var1.1.110, %if.end.111 ], [ %add81.111, %for.inc100.loopexit.111 ]
  %895 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.112 = mul nsw i32 %895, 3
  %896 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.112 = sdiv i32 %896, -2
  %sub.112 = add i32 %div.neg.112, %mul.112
  store i32 %sub.112, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.112 = add nsw i32 %sub.112, %895
  %rem32.112 = srem i32 %add31.112, 100
  store i32 %rem32.112, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.112 = or i32 %rem32.112, 1
  %add33.112 = add nsw i32 %or.112, %rem17
  store i32 %add33.112, i32* @main.hot_data.1, align 4, !tbaa !10
  %897 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.112 = add nsw i32 %add33.112, %897
  store i32 %add42.112, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %898 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.112 = add i16 %898, 112
  %rem43171.112 = urem i16 %rem43.lhs.trunc.112, 100
  %cmp44.112 = icmp eq i16 %rem43171.112, 0
  br i1 %cmp44.112, label %if.then.112, label %if.end.112

if.then.112:                                      ; preds = %for.inc100.111
  %add48.112 = add nsw i32 %mid_vars.sroa.0.1.111, %rem9
  %mul49.112 = mul nsw i32 %local2.1.111, %add48.112
  %shr.112 = ashr i32 %mul49.112, 1
  %add51.112 = add nsw i32 %sub.112, %shr.112
  %call53.112 = tail call i32 @rand() #3
  %rem54.112 = srem i32 %call53.112, 5
  %add55.112 = add nsw i32 %rem54.112, %rem17
  %rem56.112 = srem i32 %add55.112, 100
  %899 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.112 = add nsw i32 %899, %shr.112
  %900 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.112 = add nsw i32 %add59.112, %900
  store i32 %add66.112, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %901 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %901, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.112, %for.inc100.111
  %mid_vars.sroa.0.1.112 = phi i32 [ %add51.112, %if.then.112 ], [ %mid_vars.sroa.0.1.111, %for.inc100.111 ]
  %mid_vars.sroa.10166.1.112 = phi i32 [ %mul49.112, %if.then.112 ], [ %mid_vars.sroa.10166.1.111, %for.inc100.111 ]
  %local2.1.112 = phi i32 [ %rem56.112, %if.then.112 ], [ %local2.1.111, %for.inc100.111 ]
  %rem70172.112 = urem i16 %rem43.lhs.trunc.112, 1000
  %cmp71.112 = icmp eq i16 %rem70172.112, 0
  br i1 %cmp71.112, label %if.then73.112, label %for.inc100.112

if.then73.112:                                    ; preds = %if.end.112
  %add74.112 = add nsw i32 %var1.1.111, %rem13
  %call79.112 = tail call i32 @rand() #3
  %rem80.112 = srem i32 %call79.112, 5
  br label %for.body87.112

for.body87.112:                                   ; preds = %for.body87.112, %if.then73.112
  %indvars.iv.112 = phi i64 [ 0, %if.then73.112 ], [ %indvars.iv.next.112, %for.body87.112 ]
  %call88.112 = tail call i32 @rand() #3
  %rem89.112 = srem i32 %call88.112, 100
  %902 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.112 = add nsw i32 %rem89.112, %902
  %rem93.lhs.trunc.112 = trunc i64 %indvars.iv.112 to i8
  %rem93173.112 = urem i8 %rem93.lhs.trunc.112, 10
  %idxprom94.112 = zext i8 %rem93173.112 to i64
  %arrayidx95.112 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.112, i64 %idxprom94.112
  store i32 %add90.112, i32* %arrayidx95.112, align 4, !tbaa !12
  %indvars.iv.next.112 = add nuw nsw i64 %indvars.iv.112, 1
  %exitcond.112.not = icmp eq i64 %indvars.iv.next.112, 10
  br i1 %exitcond.112.not, label %for.inc100.loopexit.112, label %for.body87.112, !llvm.loop !13

for.inc100.loopexit.112:                          ; preds = %for.body87.112
  %mul75.112 = mul nsw i32 %add74.112, %rem15
  %add81.112 = add nsw i32 %rem80.112, %rem78.sext
  br label %for.inc100.112

for.inc100.112:                                   ; preds = %for.inc100.loopexit.112, %if.end.112
  %var4.1.112 = phi i32 [ %var4.1.111, %if.end.112 ], [ %mul75.112, %for.inc100.loopexit.112 ]
  %var5.1.112 = phi i32 [ %var5.1.111, %if.end.112 ], [ %rem9, %for.inc100.loopexit.112 ]
  %var1.1.112 = phi i32 [ %var1.1.111, %if.end.112 ], [ %add81.112, %for.inc100.loopexit.112 ]
  %903 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.113 = mul nsw i32 %903, 3
  %904 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.113 = sdiv i32 %904, -2
  %sub.113 = add i32 %div.neg.113, %mul.113
  store i32 %sub.113, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.113 = add nsw i32 %sub.113, %903
  %rem32.113 = srem i32 %add31.113, 100
  store i32 %rem32.113, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.113 = or i32 %rem32.113, 1
  %add33.113 = add nsw i32 %or.113, %rem17
  store i32 %add33.113, i32* @main.hot_data.1, align 4, !tbaa !10
  %905 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.113 = add nsw i32 %add33.113, %905
  store i32 %add42.113, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %906 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.113 = add i16 %906, 113
  %rem43171.113 = urem i16 %rem43.lhs.trunc.113, 100
  %cmp44.113 = icmp eq i16 %rem43171.113, 0
  br i1 %cmp44.113, label %if.then.113, label %if.end.113

if.then.113:                                      ; preds = %for.inc100.112
  %add48.113 = add nsw i32 %mid_vars.sroa.0.1.112, %rem9
  %mul49.113 = mul nsw i32 %local2.1.112, %add48.113
  %shr.113 = ashr i32 %mul49.113, 1
  %add51.113 = add nsw i32 %sub.113, %shr.113
  %call53.113 = tail call i32 @rand() #3
  %rem54.113 = srem i32 %call53.113, 5
  %add55.113 = add nsw i32 %rem54.113, %rem17
  %rem56.113 = srem i32 %add55.113, 100
  %907 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.113 = add nsw i32 %907, %shr.113
  %908 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.113 = add nsw i32 %add59.113, %908
  store i32 %add66.113, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %909 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %909, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.113, %for.inc100.112
  %mid_vars.sroa.0.1.113 = phi i32 [ %add51.113, %if.then.113 ], [ %mid_vars.sroa.0.1.112, %for.inc100.112 ]
  %mid_vars.sroa.10166.1.113 = phi i32 [ %mul49.113, %if.then.113 ], [ %mid_vars.sroa.10166.1.112, %for.inc100.112 ]
  %local2.1.113 = phi i32 [ %rem56.113, %if.then.113 ], [ %local2.1.112, %for.inc100.112 ]
  %rem70172.113 = urem i16 %rem43.lhs.trunc.113, 1000
  %cmp71.113 = icmp eq i16 %rem70172.113, 0
  br i1 %cmp71.113, label %if.then73.113, label %for.inc100.113

if.then73.113:                                    ; preds = %if.end.113
  %add74.113 = add nsw i32 %var1.1.112, %rem13
  %call79.113 = tail call i32 @rand() #3
  %rem80.113 = srem i32 %call79.113, 5
  br label %for.body87.113

for.body87.113:                                   ; preds = %for.body87.113, %if.then73.113
  %indvars.iv.113 = phi i64 [ 0, %if.then73.113 ], [ %indvars.iv.next.113, %for.body87.113 ]
  %call88.113 = tail call i32 @rand() #3
  %rem89.113 = srem i32 %call88.113, 100
  %910 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.113 = add nsw i32 %rem89.113, %910
  %rem93.lhs.trunc.113 = trunc i64 %indvars.iv.113 to i8
  %rem93173.113 = urem i8 %rem93.lhs.trunc.113, 10
  %idxprom94.113 = zext i8 %rem93173.113 to i64
  %arrayidx95.113 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.113, i64 %idxprom94.113
  store i32 %add90.113, i32* %arrayidx95.113, align 4, !tbaa !12
  %indvars.iv.next.113 = add nuw nsw i64 %indvars.iv.113, 1
  %exitcond.113.not = icmp eq i64 %indvars.iv.next.113, 10
  br i1 %exitcond.113.not, label %for.inc100.loopexit.113, label %for.body87.113, !llvm.loop !13

for.inc100.loopexit.113:                          ; preds = %for.body87.113
  %mul75.113 = mul nsw i32 %add74.113, %rem15
  %add81.113 = add nsw i32 %rem80.113, %rem78.sext
  br label %for.inc100.113

for.inc100.113:                                   ; preds = %for.inc100.loopexit.113, %if.end.113
  %var4.1.113 = phi i32 [ %var4.1.112, %if.end.113 ], [ %mul75.113, %for.inc100.loopexit.113 ]
  %var5.1.113 = phi i32 [ %var5.1.112, %if.end.113 ], [ %rem9, %for.inc100.loopexit.113 ]
  %var1.1.113 = phi i32 [ %var1.1.112, %if.end.113 ], [ %add81.113, %for.inc100.loopexit.113 ]
  %911 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.114 = mul nsw i32 %911, 3
  %912 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.114 = sdiv i32 %912, -2
  %sub.114 = add i32 %div.neg.114, %mul.114
  store i32 %sub.114, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.114 = add nsw i32 %sub.114, %911
  %rem32.114 = srem i32 %add31.114, 100
  store i32 %rem32.114, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.114 = or i32 %rem32.114, 1
  %add33.114 = add nsw i32 %or.114, %rem17
  store i32 %add33.114, i32* @main.hot_data.1, align 4, !tbaa !10
  %913 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.114 = add nsw i32 %add33.114, %913
  store i32 %add42.114, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %914 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.114 = add i16 %914, 114
  %rem43171.114 = urem i16 %rem43.lhs.trunc.114, 100
  %cmp44.114 = icmp eq i16 %rem43171.114, 0
  br i1 %cmp44.114, label %if.then.114, label %if.end.114

if.then.114:                                      ; preds = %for.inc100.113
  %add48.114 = add nsw i32 %mid_vars.sroa.0.1.113, %rem9
  %mul49.114 = mul nsw i32 %local2.1.113, %add48.114
  %shr.114 = ashr i32 %mul49.114, 1
  %add51.114 = add nsw i32 %sub.114, %shr.114
  %call53.114 = tail call i32 @rand() #3
  %rem54.114 = srem i32 %call53.114, 5
  %add55.114 = add nsw i32 %rem54.114, %rem17
  %rem56.114 = srem i32 %add55.114, 100
  %915 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.114 = add nsw i32 %915, %shr.114
  %916 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.114 = add nsw i32 %add59.114, %916
  store i32 %add66.114, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %917 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %917, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.114, %for.inc100.113
  %mid_vars.sroa.0.1.114 = phi i32 [ %add51.114, %if.then.114 ], [ %mid_vars.sroa.0.1.113, %for.inc100.113 ]
  %mid_vars.sroa.10166.1.114 = phi i32 [ %mul49.114, %if.then.114 ], [ %mid_vars.sroa.10166.1.113, %for.inc100.113 ]
  %local2.1.114 = phi i32 [ %rem56.114, %if.then.114 ], [ %local2.1.113, %for.inc100.113 ]
  %rem70172.114 = urem i16 %rem43.lhs.trunc.114, 1000
  %cmp71.114 = icmp eq i16 %rem70172.114, 0
  br i1 %cmp71.114, label %if.then73.114, label %for.inc100.114

if.then73.114:                                    ; preds = %if.end.114
  %add74.114 = add nsw i32 %var1.1.113, %rem13
  %call79.114 = tail call i32 @rand() #3
  %rem80.114 = srem i32 %call79.114, 5
  br label %for.body87.114

for.body87.114:                                   ; preds = %for.body87.114, %if.then73.114
  %indvars.iv.114 = phi i64 [ 0, %if.then73.114 ], [ %indvars.iv.next.114, %for.body87.114 ]
  %call88.114 = tail call i32 @rand() #3
  %rem89.114 = srem i32 %call88.114, 100
  %918 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.114 = add nsw i32 %rem89.114, %918
  %rem93.lhs.trunc.114 = trunc i64 %indvars.iv.114 to i8
  %rem93173.114 = urem i8 %rem93.lhs.trunc.114, 10
  %idxprom94.114 = zext i8 %rem93173.114 to i64
  %arrayidx95.114 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.114, i64 %idxprom94.114
  store i32 %add90.114, i32* %arrayidx95.114, align 4, !tbaa !12
  %indvars.iv.next.114 = add nuw nsw i64 %indvars.iv.114, 1
  %exitcond.114.not = icmp eq i64 %indvars.iv.next.114, 10
  br i1 %exitcond.114.not, label %for.inc100.loopexit.114, label %for.body87.114, !llvm.loop !13

for.inc100.loopexit.114:                          ; preds = %for.body87.114
  %mul75.114 = mul nsw i32 %add74.114, %rem15
  %add81.114 = add nsw i32 %rem80.114, %rem78.sext
  br label %for.inc100.114

for.inc100.114:                                   ; preds = %for.inc100.loopexit.114, %if.end.114
  %var4.1.114 = phi i32 [ %var4.1.113, %if.end.114 ], [ %mul75.114, %for.inc100.loopexit.114 ]
  %var5.1.114 = phi i32 [ %var5.1.113, %if.end.114 ], [ %rem9, %for.inc100.loopexit.114 ]
  %var1.1.114 = phi i32 [ %var1.1.113, %if.end.114 ], [ %add81.114, %for.inc100.loopexit.114 ]
  %919 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.115 = mul nsw i32 %919, 3
  %920 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.115 = sdiv i32 %920, -2
  %sub.115 = add i32 %div.neg.115, %mul.115
  store i32 %sub.115, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.115 = add nsw i32 %sub.115, %919
  %rem32.115 = srem i32 %add31.115, 100
  store i32 %rem32.115, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.115 = or i32 %rem32.115, 1
  %add33.115 = add nsw i32 %or.115, %rem17
  store i32 %add33.115, i32* @main.hot_data.1, align 4, !tbaa !10
  %921 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.115 = add nsw i32 %add33.115, %921
  store i32 %add42.115, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %922 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.115 = add i16 %922, 115
  %rem43171.115 = urem i16 %rem43.lhs.trunc.115, 100
  %cmp44.115 = icmp eq i16 %rem43171.115, 0
  br i1 %cmp44.115, label %if.then.115, label %if.end.115

if.then.115:                                      ; preds = %for.inc100.114
  %add48.115 = add nsw i32 %mid_vars.sroa.0.1.114, %rem9
  %mul49.115 = mul nsw i32 %local2.1.114, %add48.115
  %shr.115 = ashr i32 %mul49.115, 1
  %add51.115 = add nsw i32 %sub.115, %shr.115
  %call53.115 = tail call i32 @rand() #3
  %rem54.115 = srem i32 %call53.115, 5
  %add55.115 = add nsw i32 %rem54.115, %rem17
  %rem56.115 = srem i32 %add55.115, 100
  %923 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.115 = add nsw i32 %923, %shr.115
  %924 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.115 = add nsw i32 %add59.115, %924
  store i32 %add66.115, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %925 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %925, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.115, %for.inc100.114
  %mid_vars.sroa.0.1.115 = phi i32 [ %add51.115, %if.then.115 ], [ %mid_vars.sroa.0.1.114, %for.inc100.114 ]
  %mid_vars.sroa.10166.1.115 = phi i32 [ %mul49.115, %if.then.115 ], [ %mid_vars.sroa.10166.1.114, %for.inc100.114 ]
  %local2.1.115 = phi i32 [ %rem56.115, %if.then.115 ], [ %local2.1.114, %for.inc100.114 ]
  %rem70172.115 = urem i16 %rem43.lhs.trunc.115, 1000
  %cmp71.115 = icmp eq i16 %rem70172.115, 0
  br i1 %cmp71.115, label %if.then73.115, label %for.inc100.115

if.then73.115:                                    ; preds = %if.end.115
  %add74.115 = add nsw i32 %var1.1.114, %rem13
  %call79.115 = tail call i32 @rand() #3
  %rem80.115 = srem i32 %call79.115, 5
  br label %for.body87.115

for.body87.115:                                   ; preds = %for.body87.115, %if.then73.115
  %indvars.iv.115 = phi i64 [ 0, %if.then73.115 ], [ %indvars.iv.next.115, %for.body87.115 ]
  %call88.115 = tail call i32 @rand() #3
  %rem89.115 = srem i32 %call88.115, 100
  %926 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.115 = add nsw i32 %rem89.115, %926
  %rem93.lhs.trunc.115 = trunc i64 %indvars.iv.115 to i8
  %rem93173.115 = urem i8 %rem93.lhs.trunc.115, 10
  %idxprom94.115 = zext i8 %rem93173.115 to i64
  %arrayidx95.115 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.115, i64 %idxprom94.115
  store i32 %add90.115, i32* %arrayidx95.115, align 4, !tbaa !12
  %indvars.iv.next.115 = add nuw nsw i64 %indvars.iv.115, 1
  %exitcond.115.not = icmp eq i64 %indvars.iv.next.115, 10
  br i1 %exitcond.115.not, label %for.inc100.loopexit.115, label %for.body87.115, !llvm.loop !13

for.inc100.loopexit.115:                          ; preds = %for.body87.115
  %mul75.115 = mul nsw i32 %add74.115, %rem15
  %add81.115 = add nsw i32 %rem80.115, %rem78.sext
  br label %for.inc100.115

for.inc100.115:                                   ; preds = %for.inc100.loopexit.115, %if.end.115
  %var4.1.115 = phi i32 [ %var4.1.114, %if.end.115 ], [ %mul75.115, %for.inc100.loopexit.115 ]
  %var5.1.115 = phi i32 [ %var5.1.114, %if.end.115 ], [ %rem9, %for.inc100.loopexit.115 ]
  %var1.1.115 = phi i32 [ %var1.1.114, %if.end.115 ], [ %add81.115, %for.inc100.loopexit.115 ]
  %927 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.116 = mul nsw i32 %927, 3
  %928 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.116 = sdiv i32 %928, -2
  %sub.116 = add i32 %div.neg.116, %mul.116
  store i32 %sub.116, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.116 = add nsw i32 %sub.116, %927
  %rem32.116 = srem i32 %add31.116, 100
  store i32 %rem32.116, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.116 = or i32 %rem32.116, 1
  %add33.116 = add nsw i32 %or.116, %rem17
  store i32 %add33.116, i32* @main.hot_data.1, align 4, !tbaa !10
  %929 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.116 = add nsw i32 %add33.116, %929
  store i32 %add42.116, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %930 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.116 = add i16 %930, 116
  %rem43171.116 = urem i16 %rem43.lhs.trunc.116, 100
  %cmp44.116 = icmp eq i16 %rem43171.116, 0
  br i1 %cmp44.116, label %if.then.116, label %if.end.116

if.then.116:                                      ; preds = %for.inc100.115
  %add48.116 = add nsw i32 %mid_vars.sroa.0.1.115, %rem9
  %mul49.116 = mul nsw i32 %local2.1.115, %add48.116
  %shr.116 = ashr i32 %mul49.116, 1
  %add51.116 = add nsw i32 %sub.116, %shr.116
  %call53.116 = tail call i32 @rand() #3
  %rem54.116 = srem i32 %call53.116, 5
  %add55.116 = add nsw i32 %rem54.116, %rem17
  %rem56.116 = srem i32 %add55.116, 100
  %931 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.116 = add nsw i32 %931, %shr.116
  %932 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.116 = add nsw i32 %add59.116, %932
  store i32 %add66.116, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %933 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %933, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.116, %for.inc100.115
  %mid_vars.sroa.0.1.116 = phi i32 [ %add51.116, %if.then.116 ], [ %mid_vars.sroa.0.1.115, %for.inc100.115 ]
  %mid_vars.sroa.10166.1.116 = phi i32 [ %mul49.116, %if.then.116 ], [ %mid_vars.sroa.10166.1.115, %for.inc100.115 ]
  %local2.1.116 = phi i32 [ %rem56.116, %if.then.116 ], [ %local2.1.115, %for.inc100.115 ]
  %rem70172.116 = urem i16 %rem43.lhs.trunc.116, 1000
  %cmp71.116 = icmp eq i16 %rem70172.116, 0
  br i1 %cmp71.116, label %if.then73.116, label %for.inc100.116

if.then73.116:                                    ; preds = %if.end.116
  %add74.116 = add nsw i32 %var1.1.115, %rem13
  %call79.116 = tail call i32 @rand() #3
  %rem80.116 = srem i32 %call79.116, 5
  br label %for.body87.116

for.body87.116:                                   ; preds = %for.body87.116, %if.then73.116
  %indvars.iv.116 = phi i64 [ 0, %if.then73.116 ], [ %indvars.iv.next.116, %for.body87.116 ]
  %call88.116 = tail call i32 @rand() #3
  %rem89.116 = srem i32 %call88.116, 100
  %934 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.116 = add nsw i32 %rem89.116, %934
  %rem93.lhs.trunc.116 = trunc i64 %indvars.iv.116 to i8
  %rem93173.116 = urem i8 %rem93.lhs.trunc.116, 10
  %idxprom94.116 = zext i8 %rem93173.116 to i64
  %arrayidx95.116 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.116, i64 %idxprom94.116
  store i32 %add90.116, i32* %arrayidx95.116, align 4, !tbaa !12
  %indvars.iv.next.116 = add nuw nsw i64 %indvars.iv.116, 1
  %exitcond.116.not = icmp eq i64 %indvars.iv.next.116, 10
  br i1 %exitcond.116.not, label %for.inc100.loopexit.116, label %for.body87.116, !llvm.loop !13

for.inc100.loopexit.116:                          ; preds = %for.body87.116
  %mul75.116 = mul nsw i32 %add74.116, %rem15
  %add81.116 = add nsw i32 %rem80.116, %rem78.sext
  br label %for.inc100.116

for.inc100.116:                                   ; preds = %for.inc100.loopexit.116, %if.end.116
  %var4.1.116 = phi i32 [ %var4.1.115, %if.end.116 ], [ %mul75.116, %for.inc100.loopexit.116 ]
  %var5.1.116 = phi i32 [ %var5.1.115, %if.end.116 ], [ %rem9, %for.inc100.loopexit.116 ]
  %var1.1.116 = phi i32 [ %var1.1.115, %if.end.116 ], [ %add81.116, %for.inc100.loopexit.116 ]
  %935 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.117 = mul nsw i32 %935, 3
  %936 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.117 = sdiv i32 %936, -2
  %sub.117 = add i32 %div.neg.117, %mul.117
  store i32 %sub.117, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.117 = add nsw i32 %sub.117, %935
  %rem32.117 = srem i32 %add31.117, 100
  store i32 %rem32.117, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.117 = or i32 %rem32.117, 1
  %add33.117 = add nsw i32 %or.117, %rem17
  store i32 %add33.117, i32* @main.hot_data.1, align 4, !tbaa !10
  %937 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.117 = add nsw i32 %add33.117, %937
  store i32 %add42.117, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %938 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.117 = add i16 %938, 117
  %rem43171.117 = urem i16 %rem43.lhs.trunc.117, 100
  %cmp44.117 = icmp eq i16 %rem43171.117, 0
  br i1 %cmp44.117, label %if.then.117, label %if.end.117

if.then.117:                                      ; preds = %for.inc100.116
  %add48.117 = add nsw i32 %mid_vars.sroa.0.1.116, %rem9
  %mul49.117 = mul nsw i32 %local2.1.116, %add48.117
  %shr.117 = ashr i32 %mul49.117, 1
  %add51.117 = add nsw i32 %sub.117, %shr.117
  %call53.117 = tail call i32 @rand() #3
  %rem54.117 = srem i32 %call53.117, 5
  %add55.117 = add nsw i32 %rem54.117, %rem17
  %rem56.117 = srem i32 %add55.117, 100
  %939 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.117 = add nsw i32 %939, %shr.117
  %940 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.117 = add nsw i32 %add59.117, %940
  store i32 %add66.117, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %941 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %941, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.117, %for.inc100.116
  %mid_vars.sroa.0.1.117 = phi i32 [ %add51.117, %if.then.117 ], [ %mid_vars.sroa.0.1.116, %for.inc100.116 ]
  %mid_vars.sroa.10166.1.117 = phi i32 [ %mul49.117, %if.then.117 ], [ %mid_vars.sroa.10166.1.116, %for.inc100.116 ]
  %local2.1.117 = phi i32 [ %rem56.117, %if.then.117 ], [ %local2.1.116, %for.inc100.116 ]
  %rem70172.117 = urem i16 %rem43.lhs.trunc.117, 1000
  %cmp71.117 = icmp eq i16 %rem70172.117, 0
  br i1 %cmp71.117, label %if.then73.117, label %for.inc100.117

if.then73.117:                                    ; preds = %if.end.117
  %add74.117 = add nsw i32 %var1.1.116, %rem13
  %call79.117 = tail call i32 @rand() #3
  %rem80.117 = srem i32 %call79.117, 5
  br label %for.body87.117

for.body87.117:                                   ; preds = %for.body87.117, %if.then73.117
  %indvars.iv.117 = phi i64 [ 0, %if.then73.117 ], [ %indvars.iv.next.117, %for.body87.117 ]
  %call88.117 = tail call i32 @rand() #3
  %rem89.117 = srem i32 %call88.117, 100
  %942 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.117 = add nsw i32 %rem89.117, %942
  %rem93.lhs.trunc.117 = trunc i64 %indvars.iv.117 to i8
  %rem93173.117 = urem i8 %rem93.lhs.trunc.117, 10
  %idxprom94.117 = zext i8 %rem93173.117 to i64
  %arrayidx95.117 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.117, i64 %idxprom94.117
  store i32 %add90.117, i32* %arrayidx95.117, align 4, !tbaa !12
  %indvars.iv.next.117 = add nuw nsw i64 %indvars.iv.117, 1
  %exitcond.117.not = icmp eq i64 %indvars.iv.next.117, 10
  br i1 %exitcond.117.not, label %for.inc100.loopexit.117, label %for.body87.117, !llvm.loop !13

for.inc100.loopexit.117:                          ; preds = %for.body87.117
  %mul75.117 = mul nsw i32 %add74.117, %rem15
  %add81.117 = add nsw i32 %rem80.117, %rem78.sext
  br label %for.inc100.117

for.inc100.117:                                   ; preds = %for.inc100.loopexit.117, %if.end.117
  %var4.1.117 = phi i32 [ %var4.1.116, %if.end.117 ], [ %mul75.117, %for.inc100.loopexit.117 ]
  %var5.1.117 = phi i32 [ %var5.1.116, %if.end.117 ], [ %rem9, %for.inc100.loopexit.117 ]
  %var1.1.117 = phi i32 [ %var1.1.116, %if.end.117 ], [ %add81.117, %for.inc100.loopexit.117 ]
  %943 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.118 = mul nsw i32 %943, 3
  %944 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.118 = sdiv i32 %944, -2
  %sub.118 = add i32 %div.neg.118, %mul.118
  store i32 %sub.118, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.118 = add nsw i32 %sub.118, %943
  %rem32.118 = srem i32 %add31.118, 100
  store i32 %rem32.118, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.118 = or i32 %rem32.118, 1
  %add33.118 = add nsw i32 %or.118, %rem17
  store i32 %add33.118, i32* @main.hot_data.1, align 4, !tbaa !10
  %945 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.118 = add nsw i32 %add33.118, %945
  store i32 %add42.118, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %946 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.118 = add i16 %946, 118
  %rem43171.118 = urem i16 %rem43.lhs.trunc.118, 100
  %cmp44.118 = icmp eq i16 %rem43171.118, 0
  br i1 %cmp44.118, label %if.then.118, label %if.end.118

if.then.118:                                      ; preds = %for.inc100.117
  %add48.118 = add nsw i32 %mid_vars.sroa.0.1.117, %rem9
  %mul49.118 = mul nsw i32 %local2.1.117, %add48.118
  %shr.118 = ashr i32 %mul49.118, 1
  %add51.118 = add nsw i32 %sub.118, %shr.118
  %call53.118 = tail call i32 @rand() #3
  %rem54.118 = srem i32 %call53.118, 5
  %add55.118 = add nsw i32 %rem54.118, %rem17
  %rem56.118 = srem i32 %add55.118, 100
  %947 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.118 = add nsw i32 %947, %shr.118
  %948 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.118 = add nsw i32 %add59.118, %948
  store i32 %add66.118, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %949 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %949, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.118, %for.inc100.117
  %mid_vars.sroa.0.1.118 = phi i32 [ %add51.118, %if.then.118 ], [ %mid_vars.sroa.0.1.117, %for.inc100.117 ]
  %mid_vars.sroa.10166.1.118 = phi i32 [ %mul49.118, %if.then.118 ], [ %mid_vars.sroa.10166.1.117, %for.inc100.117 ]
  %local2.1.118 = phi i32 [ %rem56.118, %if.then.118 ], [ %local2.1.117, %for.inc100.117 ]
  %rem70172.118 = urem i16 %rem43.lhs.trunc.118, 1000
  %cmp71.118 = icmp eq i16 %rem70172.118, 0
  br i1 %cmp71.118, label %if.then73.118, label %for.inc100.118

if.then73.118:                                    ; preds = %if.end.118
  %add74.118 = add nsw i32 %var1.1.117, %rem13
  %call79.118 = tail call i32 @rand() #3
  %rem80.118 = srem i32 %call79.118, 5
  br label %for.body87.118

for.body87.118:                                   ; preds = %for.body87.118, %if.then73.118
  %indvars.iv.118 = phi i64 [ 0, %if.then73.118 ], [ %indvars.iv.next.118, %for.body87.118 ]
  %call88.118 = tail call i32 @rand() #3
  %rem89.118 = srem i32 %call88.118, 100
  %950 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.118 = add nsw i32 %rem89.118, %950
  %rem93.lhs.trunc.118 = trunc i64 %indvars.iv.118 to i8
  %rem93173.118 = urem i8 %rem93.lhs.trunc.118, 10
  %idxprom94.118 = zext i8 %rem93173.118 to i64
  %arrayidx95.118 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.118, i64 %idxprom94.118
  store i32 %add90.118, i32* %arrayidx95.118, align 4, !tbaa !12
  %indvars.iv.next.118 = add nuw nsw i64 %indvars.iv.118, 1
  %exitcond.118.not = icmp eq i64 %indvars.iv.next.118, 10
  br i1 %exitcond.118.not, label %for.inc100.loopexit.118, label %for.body87.118, !llvm.loop !13

for.inc100.loopexit.118:                          ; preds = %for.body87.118
  %mul75.118 = mul nsw i32 %add74.118, %rem15
  %add81.118 = add nsw i32 %rem80.118, %rem78.sext
  br label %for.inc100.118

for.inc100.118:                                   ; preds = %for.inc100.loopexit.118, %if.end.118
  %var4.1.118 = phi i32 [ %var4.1.117, %if.end.118 ], [ %mul75.118, %for.inc100.loopexit.118 ]
  %var5.1.118 = phi i32 [ %var5.1.117, %if.end.118 ], [ %rem9, %for.inc100.loopexit.118 ]
  %var1.1.118 = phi i32 [ %var1.1.117, %if.end.118 ], [ %add81.118, %for.inc100.loopexit.118 ]
  %951 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.119 = mul nsw i32 %951, 3
  %952 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.119 = sdiv i32 %952, -2
  %sub.119 = add i32 %div.neg.119, %mul.119
  store i32 %sub.119, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.119 = add nsw i32 %sub.119, %951
  %rem32.119 = srem i32 %add31.119, 100
  store i32 %rem32.119, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.119 = or i32 %rem32.119, 1
  %add33.119 = add nsw i32 %or.119, %rem17
  store i32 %add33.119, i32* @main.hot_data.1, align 4, !tbaa !10
  %953 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.119 = add nsw i32 %add33.119, %953
  store i32 %add42.119, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %954 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.119 = add i16 %954, 119
  %rem43171.119 = urem i16 %rem43.lhs.trunc.119, 100
  %cmp44.119 = icmp eq i16 %rem43171.119, 0
  br i1 %cmp44.119, label %if.then.119, label %if.end.119

if.then.119:                                      ; preds = %for.inc100.118
  %add48.119 = add nsw i32 %mid_vars.sroa.0.1.118, %rem9
  %mul49.119 = mul nsw i32 %local2.1.118, %add48.119
  %shr.119 = ashr i32 %mul49.119, 1
  %add51.119 = add nsw i32 %sub.119, %shr.119
  %call53.119 = tail call i32 @rand() #3
  %rem54.119 = srem i32 %call53.119, 5
  %add55.119 = add nsw i32 %rem54.119, %rem17
  %rem56.119 = srem i32 %add55.119, 100
  %955 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.119 = add nsw i32 %955, %shr.119
  %956 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.119 = add nsw i32 %add59.119, %956
  store i32 %add66.119, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %957 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %957, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.119, %for.inc100.118
  %mid_vars.sroa.0.1.119 = phi i32 [ %add51.119, %if.then.119 ], [ %mid_vars.sroa.0.1.118, %for.inc100.118 ]
  %mid_vars.sroa.10166.1.119 = phi i32 [ %mul49.119, %if.then.119 ], [ %mid_vars.sroa.10166.1.118, %for.inc100.118 ]
  %local2.1.119 = phi i32 [ %rem56.119, %if.then.119 ], [ %local2.1.118, %for.inc100.118 ]
  %rem70172.119 = urem i16 %rem43.lhs.trunc.119, 1000
  %cmp71.119 = icmp eq i16 %rem70172.119, 0
  br i1 %cmp71.119, label %if.then73.119, label %for.inc100.119

if.then73.119:                                    ; preds = %if.end.119
  %add74.119 = add nsw i32 %var1.1.118, %rem13
  %call79.119 = tail call i32 @rand() #3
  %rem80.119 = srem i32 %call79.119, 5
  br label %for.body87.119

for.body87.119:                                   ; preds = %for.body87.119, %if.then73.119
  %indvars.iv.119 = phi i64 [ 0, %if.then73.119 ], [ %indvars.iv.next.119, %for.body87.119 ]
  %call88.119 = tail call i32 @rand() #3
  %rem89.119 = srem i32 %call88.119, 100
  %958 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.119 = add nsw i32 %rem89.119, %958
  %rem93.lhs.trunc.119 = trunc i64 %indvars.iv.119 to i8
  %rem93173.119 = urem i8 %rem93.lhs.trunc.119, 10
  %idxprom94.119 = zext i8 %rem93173.119 to i64
  %arrayidx95.119 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.119, i64 %idxprom94.119
  store i32 %add90.119, i32* %arrayidx95.119, align 4, !tbaa !12
  %indvars.iv.next.119 = add nuw nsw i64 %indvars.iv.119, 1
  %exitcond.119.not = icmp eq i64 %indvars.iv.next.119, 10
  br i1 %exitcond.119.not, label %for.inc100.loopexit.119, label %for.body87.119, !llvm.loop !13

for.inc100.loopexit.119:                          ; preds = %for.body87.119
  %mul75.119 = mul nsw i32 %add74.119, %rem15
  %add81.119 = add nsw i32 %rem80.119, %rem78.sext
  br label %for.inc100.119

for.inc100.119:                                   ; preds = %for.inc100.loopexit.119, %if.end.119
  %var4.1.119 = phi i32 [ %var4.1.118, %if.end.119 ], [ %mul75.119, %for.inc100.loopexit.119 ]
  %var5.1.119 = phi i32 [ %var5.1.118, %if.end.119 ], [ %rem9, %for.inc100.loopexit.119 ]
  %var1.1.119 = phi i32 [ %var1.1.118, %if.end.119 ], [ %add81.119, %for.inc100.loopexit.119 ]
  %959 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.120 = mul nsw i32 %959, 3
  %960 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.120 = sdiv i32 %960, -2
  %sub.120 = add i32 %div.neg.120, %mul.120
  store i32 %sub.120, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.120 = add nsw i32 %sub.120, %959
  %rem32.120 = srem i32 %add31.120, 100
  store i32 %rem32.120, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.120 = or i32 %rem32.120, 1
  %add33.120 = add nsw i32 %or.120, %rem17
  store i32 %add33.120, i32* @main.hot_data.1, align 4, !tbaa !10
  %961 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.120 = add nsw i32 %add33.120, %961
  store i32 %add42.120, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %962 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.120 = add i16 %962, 120
  %rem43171.120 = urem i16 %rem43.lhs.trunc.120, 100
  %cmp44.120 = icmp eq i16 %rem43171.120, 0
  br i1 %cmp44.120, label %if.then.120, label %if.end.120

if.then.120:                                      ; preds = %for.inc100.119
  %add48.120 = add nsw i32 %mid_vars.sroa.0.1.119, %rem9
  %mul49.120 = mul nsw i32 %local2.1.119, %add48.120
  %shr.120 = ashr i32 %mul49.120, 1
  %add51.120 = add nsw i32 %sub.120, %shr.120
  %call53.120 = tail call i32 @rand() #3
  %rem54.120 = srem i32 %call53.120, 5
  %add55.120 = add nsw i32 %rem54.120, %rem17
  %rem56.120 = srem i32 %add55.120, 100
  %963 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.120 = add nsw i32 %963, %shr.120
  %964 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.120 = add nsw i32 %add59.120, %964
  store i32 %add66.120, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.120, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.120, %for.inc100.119
  %mid_vars.sroa.0.1.120 = phi i32 [ %add51.120, %if.then.120 ], [ %mid_vars.sroa.0.1.119, %for.inc100.119 ]
  %mid_vars.sroa.10166.1.120 = phi i32 [ %mul49.120, %if.then.120 ], [ %mid_vars.sroa.10166.1.119, %for.inc100.119 ]
  %local2.1.120 = phi i32 [ %rem56.120, %if.then.120 ], [ %local2.1.119, %for.inc100.119 ]
  %rem70172.120 = urem i16 %rem43.lhs.trunc.120, 1000
  %cmp71.120 = icmp eq i16 %rem70172.120, 0
  br i1 %cmp71.120, label %if.then73.120, label %for.inc100.120

if.then73.120:                                    ; preds = %if.end.120
  %add74.120 = add nsw i32 %var1.1.119, %rem13
  %call79.120 = tail call i32 @rand() #3
  %rem80.120 = srem i32 %call79.120, 5
  br label %for.body87.120

for.body87.120:                                   ; preds = %for.body87.120, %if.then73.120
  %indvars.iv.120 = phi i64 [ 0, %if.then73.120 ], [ %indvars.iv.next.120, %for.body87.120 ]
  %call88.120 = tail call i32 @rand() #3
  %rem89.120 = srem i32 %call88.120, 100
  %965 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.120 = add nsw i32 %rem89.120, %965
  %rem93.lhs.trunc.120 = trunc i64 %indvars.iv.120 to i8
  %rem93173.120 = urem i8 %rem93.lhs.trunc.120, 10
  %idxprom94.120 = zext i8 %rem93173.120 to i64
  %arrayidx95.120 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.120, i64 %idxprom94.120
  store i32 %add90.120, i32* %arrayidx95.120, align 4, !tbaa !12
  %indvars.iv.next.120 = add nuw nsw i64 %indvars.iv.120, 1
  %exitcond.120.not = icmp eq i64 %indvars.iv.next.120, 10
  br i1 %exitcond.120.not, label %for.inc100.loopexit.120, label %for.body87.120, !llvm.loop !13

for.inc100.loopexit.120:                          ; preds = %for.body87.120
  %mul75.120 = mul nsw i32 %add74.120, %rem15
  %add81.120 = add nsw i32 %rem80.120, %rem78.sext
  br label %for.inc100.120

for.inc100.120:                                   ; preds = %for.inc100.loopexit.120, %if.end.120
  %var4.1.120 = phi i32 [ %var4.1.119, %if.end.120 ], [ %mul75.120, %for.inc100.loopexit.120 ]
  %var5.1.120 = phi i32 [ %var5.1.119, %if.end.120 ], [ %rem9, %for.inc100.loopexit.120 ]
  %var1.1.120 = phi i32 [ %var1.1.119, %if.end.120 ], [ %add81.120, %for.inc100.loopexit.120 ]
  %966 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.121 = mul nsw i32 %966, 3
  %967 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.121 = sdiv i32 %967, -2
  %sub.121 = add i32 %div.neg.121, %mul.121
  store i32 %sub.121, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.121 = add nsw i32 %sub.121, %966
  %rem32.121 = srem i32 %add31.121, 100
  store i32 %rem32.121, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.121 = or i32 %rem32.121, 1
  %add33.121 = add nsw i32 %or.121, %rem17
  store i32 %add33.121, i32* @main.hot_data.1, align 4, !tbaa !10
  %968 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.121 = add nsw i32 %add33.121, %968
  store i32 %add42.121, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %969 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.121 = add i16 %969, 121
  %rem43171.121 = urem i16 %rem43.lhs.trunc.121, 100
  %cmp44.121 = icmp eq i16 %rem43171.121, 0
  br i1 %cmp44.121, label %if.then.121, label %if.end.121

if.then.121:                                      ; preds = %for.inc100.120
  %add48.121 = add nsw i32 %mid_vars.sroa.0.1.120, %rem9
  %mul49.121 = mul nsw i32 %local2.1.120, %add48.121
  %shr.121 = ashr i32 %mul49.121, 1
  %add51.121 = add nsw i32 %sub.121, %shr.121
  %call53.121 = tail call i32 @rand() #3
  %rem54.121 = srem i32 %call53.121, 5
  %add55.121 = add nsw i32 %rem54.121, %rem17
  %rem56.121 = srem i32 %add55.121, 100
  %970 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.121 = add nsw i32 %970, %shr.121
  %971 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.121 = add nsw i32 %add59.121, %971
  store i32 %add66.121, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %972 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %972, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.121, %for.inc100.120
  %mid_vars.sroa.0.1.121 = phi i32 [ %add51.121, %if.then.121 ], [ %mid_vars.sroa.0.1.120, %for.inc100.120 ]
  %mid_vars.sroa.10166.1.121 = phi i32 [ %mul49.121, %if.then.121 ], [ %mid_vars.sroa.10166.1.120, %for.inc100.120 ]
  %local2.1.121 = phi i32 [ %rem56.121, %if.then.121 ], [ %local2.1.120, %for.inc100.120 ]
  %rem70172.121 = urem i16 %rem43.lhs.trunc.121, 1000
  %cmp71.121 = icmp eq i16 %rem70172.121, 0
  br i1 %cmp71.121, label %if.then73.121, label %for.inc100.121

if.then73.121:                                    ; preds = %if.end.121
  %add74.121 = add nsw i32 %var1.1.120, %rem13
  %call79.121 = tail call i32 @rand() #3
  %rem80.121 = srem i32 %call79.121, 5
  br label %for.body87.121

for.body87.121:                                   ; preds = %for.body87.121, %if.then73.121
  %indvars.iv.121 = phi i64 [ 0, %if.then73.121 ], [ %indvars.iv.next.121, %for.body87.121 ]
  %call88.121 = tail call i32 @rand() #3
  %rem89.121 = srem i32 %call88.121, 100
  %973 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.121 = add nsw i32 %rem89.121, %973
  %rem93.lhs.trunc.121 = trunc i64 %indvars.iv.121 to i8
  %rem93173.121 = urem i8 %rem93.lhs.trunc.121, 10
  %idxprom94.121 = zext i8 %rem93173.121 to i64
  %arrayidx95.121 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.121, i64 %idxprom94.121
  store i32 %add90.121, i32* %arrayidx95.121, align 4, !tbaa !12
  %indvars.iv.next.121 = add nuw nsw i64 %indvars.iv.121, 1
  %exitcond.121.not = icmp eq i64 %indvars.iv.next.121, 10
  br i1 %exitcond.121.not, label %for.inc100.loopexit.121, label %for.body87.121, !llvm.loop !13

for.inc100.loopexit.121:                          ; preds = %for.body87.121
  %mul75.121 = mul nsw i32 %add74.121, %rem15
  %add81.121 = add nsw i32 %rem80.121, %rem78.sext
  br label %for.inc100.121

for.inc100.121:                                   ; preds = %for.inc100.loopexit.121, %if.end.121
  %var4.1.121 = phi i32 [ %var4.1.120, %if.end.121 ], [ %mul75.121, %for.inc100.loopexit.121 ]
  %var5.1.121 = phi i32 [ %var5.1.120, %if.end.121 ], [ %rem9, %for.inc100.loopexit.121 ]
  %var1.1.121 = phi i32 [ %var1.1.120, %if.end.121 ], [ %add81.121, %for.inc100.loopexit.121 ]
  %974 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.122 = mul nsw i32 %974, 3
  %975 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.122 = sdiv i32 %975, -2
  %sub.122 = add i32 %div.neg.122, %mul.122
  store i32 %sub.122, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.122 = add nsw i32 %sub.122, %974
  %rem32.122 = srem i32 %add31.122, 100
  store i32 %rem32.122, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.122 = or i32 %rem32.122, 1
  %add33.122 = add nsw i32 %or.122, %rem17
  store i32 %add33.122, i32* @main.hot_data.1, align 4, !tbaa !10
  %976 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.122 = add nsw i32 %add33.122, %976
  store i32 %add42.122, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %977 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.122 = add i16 %977, 122
  %rem43171.122 = urem i16 %rem43.lhs.trunc.122, 100
  %cmp44.122 = icmp eq i16 %rem43171.122, 0
  br i1 %cmp44.122, label %if.then.122, label %if.end.122

if.then.122:                                      ; preds = %for.inc100.121
  %add48.122 = add nsw i32 %mid_vars.sroa.0.1.121, %rem9
  %mul49.122 = mul nsw i32 %local2.1.121, %add48.122
  %shr.122 = ashr i32 %mul49.122, 1
  %add51.122 = add nsw i32 %sub.122, %shr.122
  %call53.122 = tail call i32 @rand() #3
  %rem54.122 = srem i32 %call53.122, 5
  %add55.122 = add nsw i32 %rem54.122, %rem17
  %rem56.122 = srem i32 %add55.122, 100
  %978 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.122 = add nsw i32 %978, %shr.122
  %979 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.122 = add nsw i32 %add59.122, %979
  store i32 %add66.122, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %980 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %980, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.122, %for.inc100.121
  %mid_vars.sroa.0.1.122 = phi i32 [ %add51.122, %if.then.122 ], [ %mid_vars.sroa.0.1.121, %for.inc100.121 ]
  %mid_vars.sroa.10166.1.122 = phi i32 [ %mul49.122, %if.then.122 ], [ %mid_vars.sroa.10166.1.121, %for.inc100.121 ]
  %local2.1.122 = phi i32 [ %rem56.122, %if.then.122 ], [ %local2.1.121, %for.inc100.121 ]
  %rem70172.122 = urem i16 %rem43.lhs.trunc.122, 1000
  %cmp71.122 = icmp eq i16 %rem70172.122, 0
  br i1 %cmp71.122, label %if.then73.122, label %for.inc100.122

if.then73.122:                                    ; preds = %if.end.122
  %add74.122 = add nsw i32 %var1.1.121, %rem13
  %call79.122 = tail call i32 @rand() #3
  %rem80.122 = srem i32 %call79.122, 5
  br label %for.body87.122

for.body87.122:                                   ; preds = %for.body87.122, %if.then73.122
  %indvars.iv.122 = phi i64 [ 0, %if.then73.122 ], [ %indvars.iv.next.122, %for.body87.122 ]
  %call88.122 = tail call i32 @rand() #3
  %rem89.122 = srem i32 %call88.122, 100
  %981 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.122 = add nsw i32 %rem89.122, %981
  %rem93.lhs.trunc.122 = trunc i64 %indvars.iv.122 to i8
  %rem93173.122 = urem i8 %rem93.lhs.trunc.122, 10
  %idxprom94.122 = zext i8 %rem93173.122 to i64
  %arrayidx95.122 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.122, i64 %idxprom94.122
  store i32 %add90.122, i32* %arrayidx95.122, align 4, !tbaa !12
  %indvars.iv.next.122 = add nuw nsw i64 %indvars.iv.122, 1
  %exitcond.122.not = icmp eq i64 %indvars.iv.next.122, 10
  br i1 %exitcond.122.not, label %for.inc100.loopexit.122, label %for.body87.122, !llvm.loop !13

for.inc100.loopexit.122:                          ; preds = %for.body87.122
  %mul75.122 = mul nsw i32 %add74.122, %rem15
  %add81.122 = add nsw i32 %rem80.122, %rem78.sext
  br label %for.inc100.122

for.inc100.122:                                   ; preds = %for.inc100.loopexit.122, %if.end.122
  %var4.1.122 = phi i32 [ %var4.1.121, %if.end.122 ], [ %mul75.122, %for.inc100.loopexit.122 ]
  %var5.1.122 = phi i32 [ %var5.1.121, %if.end.122 ], [ %rem9, %for.inc100.loopexit.122 ]
  %var1.1.122 = phi i32 [ %var1.1.121, %if.end.122 ], [ %add81.122, %for.inc100.loopexit.122 ]
  %982 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.123 = mul nsw i32 %982, 3
  %983 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.123 = sdiv i32 %983, -2
  %sub.123 = add i32 %div.neg.123, %mul.123
  store i32 %sub.123, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.123 = add nsw i32 %sub.123, %982
  %rem32.123 = srem i32 %add31.123, 100
  store i32 %rem32.123, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.123 = or i32 %rem32.123, 1
  %add33.123 = add nsw i32 %or.123, %rem17
  store i32 %add33.123, i32* @main.hot_data.1, align 4, !tbaa !10
  %984 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.123 = add nsw i32 %add33.123, %984
  store i32 %add42.123, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %985 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.123 = add i16 %985, 123
  %rem43171.123 = urem i16 %rem43.lhs.trunc.123, 100
  %cmp44.123 = icmp eq i16 %rem43171.123, 0
  br i1 %cmp44.123, label %if.then.123, label %if.end.123

if.then.123:                                      ; preds = %for.inc100.122
  %add48.123 = add nsw i32 %mid_vars.sroa.0.1.122, %rem9
  %mul49.123 = mul nsw i32 %local2.1.122, %add48.123
  %shr.123 = ashr i32 %mul49.123, 1
  %add51.123 = add nsw i32 %sub.123, %shr.123
  %call53.123 = tail call i32 @rand() #3
  %rem54.123 = srem i32 %call53.123, 5
  %add55.123 = add nsw i32 %rem54.123, %rem17
  %rem56.123 = srem i32 %add55.123, 100
  %986 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.123 = add nsw i32 %986, %shr.123
  %987 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.123 = add nsw i32 %add59.123, %987
  store i32 %add66.123, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %988 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %988, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.123, %for.inc100.122
  %mid_vars.sroa.0.1.123 = phi i32 [ %add51.123, %if.then.123 ], [ %mid_vars.sroa.0.1.122, %for.inc100.122 ]
  %mid_vars.sroa.10166.1.123 = phi i32 [ %mul49.123, %if.then.123 ], [ %mid_vars.sroa.10166.1.122, %for.inc100.122 ]
  %local2.1.123 = phi i32 [ %rem56.123, %if.then.123 ], [ %local2.1.122, %for.inc100.122 ]
  %rem70172.123 = urem i16 %rem43.lhs.trunc.123, 1000
  %cmp71.123 = icmp eq i16 %rem70172.123, 0
  br i1 %cmp71.123, label %if.then73.123, label %for.inc100.123

if.then73.123:                                    ; preds = %if.end.123
  %add74.123 = add nsw i32 %var1.1.122, %rem13
  %call79.123 = tail call i32 @rand() #3
  %rem80.123 = srem i32 %call79.123, 5
  br label %for.body87.123

for.body87.123:                                   ; preds = %for.body87.123, %if.then73.123
  %indvars.iv.123 = phi i64 [ 0, %if.then73.123 ], [ %indvars.iv.next.123, %for.body87.123 ]
  %call88.123 = tail call i32 @rand() #3
  %rem89.123 = srem i32 %call88.123, 100
  %989 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.123 = add nsw i32 %rem89.123, %989
  %rem93.lhs.trunc.123 = trunc i64 %indvars.iv.123 to i8
  %rem93173.123 = urem i8 %rem93.lhs.trunc.123, 10
  %idxprom94.123 = zext i8 %rem93173.123 to i64
  %arrayidx95.123 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.123, i64 %idxprom94.123
  store i32 %add90.123, i32* %arrayidx95.123, align 4, !tbaa !12
  %indvars.iv.next.123 = add nuw nsw i64 %indvars.iv.123, 1
  %exitcond.123.not = icmp eq i64 %indvars.iv.next.123, 10
  br i1 %exitcond.123.not, label %for.inc100.loopexit.123, label %for.body87.123, !llvm.loop !13

for.inc100.loopexit.123:                          ; preds = %for.body87.123
  %mul75.123 = mul nsw i32 %add74.123, %rem15
  %add81.123 = add nsw i32 %rem80.123, %rem78.sext
  br label %for.inc100.123

for.inc100.123:                                   ; preds = %for.inc100.loopexit.123, %if.end.123
  %var4.1.123 = phi i32 [ %var4.1.122, %if.end.123 ], [ %mul75.123, %for.inc100.loopexit.123 ]
  %var5.1.123 = phi i32 [ %var5.1.122, %if.end.123 ], [ %rem9, %for.inc100.loopexit.123 ]
  %var1.1.123 = phi i32 [ %var1.1.122, %if.end.123 ], [ %add81.123, %for.inc100.loopexit.123 ]
  %990 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.124 = mul nsw i32 %990, 3
  %991 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.124 = sdiv i32 %991, -2
  %sub.124 = add i32 %div.neg.124, %mul.124
  store i32 %sub.124, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.124 = add nsw i32 %sub.124, %990
  %rem32.124 = srem i32 %add31.124, 100
  store i32 %rem32.124, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.124 = or i32 %rem32.124, 1
  %add33.124 = add nsw i32 %or.124, %rem17
  store i32 %add33.124, i32* @main.hot_data.1, align 4, !tbaa !10
  %992 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.124 = add nsw i32 %add33.124, %992
  store i32 %add42.124, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %993 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.124 = add i16 %993, 124
  %rem43171.124 = urem i16 %rem43.lhs.trunc.124, 100
  %cmp44.124 = icmp eq i16 %rem43171.124, 0
  br i1 %cmp44.124, label %if.then.124, label %if.end.124

if.then.124:                                      ; preds = %for.inc100.123
  %add48.124 = add nsw i32 %mid_vars.sroa.0.1.123, %rem9
  %mul49.124 = mul nsw i32 %local2.1.123, %add48.124
  %shr.124 = ashr i32 %mul49.124, 1
  %add51.124 = add nsw i32 %sub.124, %shr.124
  %call53.124 = tail call i32 @rand() #3
  %rem54.124 = srem i32 %call53.124, 5
  %add55.124 = add nsw i32 %rem54.124, %rem17
  %rem56.124 = srem i32 %add55.124, 100
  %994 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.124 = add nsw i32 %994, %shr.124
  %995 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.124 = add nsw i32 %add59.124, %995
  store i32 %add66.124, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %996 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %996, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.124, %for.inc100.123
  %mid_vars.sroa.0.1.124 = phi i32 [ %add51.124, %if.then.124 ], [ %mid_vars.sroa.0.1.123, %for.inc100.123 ]
  %mid_vars.sroa.10166.1.124 = phi i32 [ %mul49.124, %if.then.124 ], [ %mid_vars.sroa.10166.1.123, %for.inc100.123 ]
  %local2.1.124 = phi i32 [ %rem56.124, %if.then.124 ], [ %local2.1.123, %for.inc100.123 ]
  %rem70172.124 = urem i16 %rem43.lhs.trunc.124, 1000
  %cmp71.124 = icmp eq i16 %rem70172.124, 0
  br i1 %cmp71.124, label %if.then73.124, label %for.inc100.124

if.then73.124:                                    ; preds = %if.end.124
  %add74.124 = add nsw i32 %var1.1.123, %rem13
  %call79.124 = tail call i32 @rand() #3
  %rem80.124 = srem i32 %call79.124, 5
  br label %for.body87.124

for.body87.124:                                   ; preds = %for.body87.124, %if.then73.124
  %indvars.iv.124 = phi i64 [ 0, %if.then73.124 ], [ %indvars.iv.next.124, %for.body87.124 ]
  %call88.124 = tail call i32 @rand() #3
  %rem89.124 = srem i32 %call88.124, 100
  %997 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.124 = add nsw i32 %rem89.124, %997
  %rem93.lhs.trunc.124 = trunc i64 %indvars.iv.124 to i8
  %rem93173.124 = urem i8 %rem93.lhs.trunc.124, 10
  %idxprom94.124 = zext i8 %rem93173.124 to i64
  %arrayidx95.124 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.124, i64 %idxprom94.124
  store i32 %add90.124, i32* %arrayidx95.124, align 4, !tbaa !12
  %indvars.iv.next.124 = add nuw nsw i64 %indvars.iv.124, 1
  %exitcond.124.not = icmp eq i64 %indvars.iv.next.124, 10
  br i1 %exitcond.124.not, label %for.inc100.loopexit.124, label %for.body87.124, !llvm.loop !13

for.inc100.loopexit.124:                          ; preds = %for.body87.124
  %mul75.124 = mul nsw i32 %add74.124, %rem15
  %add81.124 = add nsw i32 %rem80.124, %rem78.sext
  br label %for.inc100.124

for.inc100.124:                                   ; preds = %for.inc100.loopexit.124, %if.end.124
  %var4.1.124 = phi i32 [ %var4.1.123, %if.end.124 ], [ %mul75.124, %for.inc100.loopexit.124 ]
  %var5.1.124 = phi i32 [ %var5.1.123, %if.end.124 ], [ %rem9, %for.inc100.loopexit.124 ]
  %var1.1.124 = phi i32 [ %var1.1.123, %if.end.124 ], [ %add81.124, %for.inc100.loopexit.124 ]
  %998 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.125 = mul nsw i32 %998, 3
  %999 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.125 = sdiv i32 %999, -2
  %sub.125 = add i32 %div.neg.125, %mul.125
  store i32 %sub.125, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.125 = add nsw i32 %sub.125, %998
  %rem32.125 = srem i32 %add31.125, 100
  store i32 %rem32.125, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.125 = or i32 %rem32.125, 1
  %add33.125 = add nsw i32 %or.125, %rem17
  store i32 %add33.125, i32* @main.hot_data.1, align 4, !tbaa !10
  %1000 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.125 = add nsw i32 %add33.125, %1000
  store i32 %add42.125, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %1001 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.125 = add i16 %1001, 125
  %rem43171.125 = urem i16 %rem43.lhs.trunc.125, 100
  %cmp44.125 = icmp eq i16 %rem43171.125, 0
  br i1 %cmp44.125, label %if.then.125, label %if.end.125

if.then.125:                                      ; preds = %for.inc100.124
  %add48.125 = add nsw i32 %mid_vars.sroa.0.1.124, %rem9
  %mul49.125 = mul nsw i32 %local2.1.124, %add48.125
  %shr.125 = ashr i32 %mul49.125, 1
  %add51.125 = add nsw i32 %sub.125, %shr.125
  %call53.125 = tail call i32 @rand() #3
  %rem54.125 = srem i32 %call53.125, 5
  %add55.125 = add nsw i32 %rem54.125, %rem17
  %rem56.125 = srem i32 %add55.125, 100
  %1002 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.125 = add nsw i32 %1002, %shr.125
  %1003 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.125 = add nsw i32 %add59.125, %1003
  store i32 %add66.125, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %1004 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %1004, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.125, %for.inc100.124
  %mid_vars.sroa.0.1.125 = phi i32 [ %add51.125, %if.then.125 ], [ %mid_vars.sroa.0.1.124, %for.inc100.124 ]
  %mid_vars.sroa.10166.1.125 = phi i32 [ %mul49.125, %if.then.125 ], [ %mid_vars.sroa.10166.1.124, %for.inc100.124 ]
  %local2.1.125 = phi i32 [ %rem56.125, %if.then.125 ], [ %local2.1.124, %for.inc100.124 ]
  %rem70172.125 = urem i16 %rem43.lhs.trunc.125, 1000
  %cmp71.125 = icmp eq i16 %rem70172.125, 0
  br i1 %cmp71.125, label %if.then73.125, label %for.inc100.125

if.then73.125:                                    ; preds = %if.end.125
  %add74.125 = add nsw i32 %var1.1.124, %rem13
  %call79.125 = tail call i32 @rand() #3
  %rem80.125 = srem i32 %call79.125, 5
  br label %for.body87.125

for.body87.125:                                   ; preds = %for.body87.125, %if.then73.125
  %indvars.iv.125 = phi i64 [ 0, %if.then73.125 ], [ %indvars.iv.next.125, %for.body87.125 ]
  %call88.125 = tail call i32 @rand() #3
  %rem89.125 = srem i32 %call88.125, 100
  %1005 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.125 = add nsw i32 %rem89.125, %1005
  %rem93.lhs.trunc.125 = trunc i64 %indvars.iv.125 to i8
  %rem93173.125 = urem i8 %rem93.lhs.trunc.125, 10
  %idxprom94.125 = zext i8 %rem93173.125 to i64
  %arrayidx95.125 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.125, i64 %idxprom94.125
  store i32 %add90.125, i32* %arrayidx95.125, align 4, !tbaa !12
  %indvars.iv.next.125 = add nuw nsw i64 %indvars.iv.125, 1
  %exitcond.125.not = icmp eq i64 %indvars.iv.next.125, 10
  br i1 %exitcond.125.not, label %for.inc100.loopexit.125, label %for.body87.125, !llvm.loop !13

for.inc100.loopexit.125:                          ; preds = %for.body87.125
  %mul75.125 = mul nsw i32 %add74.125, %rem15
  %add81.125 = add nsw i32 %rem80.125, %rem78.sext
  br label %for.inc100.125

for.inc100.125:                                   ; preds = %for.inc100.loopexit.125, %if.end.125
  %var4.1.125 = phi i32 [ %var4.1.124, %if.end.125 ], [ %mul75.125, %for.inc100.loopexit.125 ]
  %var5.1.125 = phi i32 [ %var5.1.124, %if.end.125 ], [ %rem9, %for.inc100.loopexit.125 ]
  %var1.1.125 = phi i32 [ %var1.1.124, %if.end.125 ], [ %add81.125, %for.inc100.loopexit.125 ]
  %1006 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.126 = mul nsw i32 %1006, 3
  %1007 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.126 = sdiv i32 %1007, -2
  %sub.126 = add i32 %div.neg.126, %mul.126
  store i32 %sub.126, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.126 = add nsw i32 %sub.126, %1006
  %rem32.126 = srem i32 %add31.126, 100
  store i32 %rem32.126, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.126 = or i32 %rem32.126, 1
  %add33.126 = add nsw i32 %or.126, %rem17
  store i32 %add33.126, i32* @main.hot_data.1, align 4, !tbaa !10
  %1008 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.126 = add nsw i32 %add33.126, %1008
  store i32 %add42.126, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %1009 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.126 = add i16 %1009, 126
  %rem43171.126 = urem i16 %rem43.lhs.trunc.126, 100
  %cmp44.126 = icmp eq i16 %rem43171.126, 0
  br i1 %cmp44.126, label %if.then.126, label %if.end.126

if.then.126:                                      ; preds = %for.inc100.125
  %add48.126 = add nsw i32 %mid_vars.sroa.0.1.125, %rem9
  %mul49.126 = mul nsw i32 %local2.1.125, %add48.126
  %shr.126 = ashr i32 %mul49.126, 1
  %add51.126 = add nsw i32 %sub.126, %shr.126
  %call53.126 = tail call i32 @rand() #3
  %rem54.126 = srem i32 %call53.126, 5
  %add55.126 = add nsw i32 %rem54.126, %rem17
  %rem56.126 = srem i32 %add55.126, 100
  %1010 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.126 = add nsw i32 %1010, %shr.126
  %1011 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.126 = add nsw i32 %add59.126, %1011
  store i32 %add66.126, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %1012 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %1012, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.126, %for.inc100.125
  %mid_vars.sroa.0.1.126 = phi i32 [ %add51.126, %if.then.126 ], [ %mid_vars.sroa.0.1.125, %for.inc100.125 ]
  %mid_vars.sroa.10166.1.126 = phi i32 [ %mul49.126, %if.then.126 ], [ %mid_vars.sroa.10166.1.125, %for.inc100.125 ]
  %local2.1.126 = phi i32 [ %rem56.126, %if.then.126 ], [ %local2.1.125, %for.inc100.125 ]
  %rem70172.126 = urem i16 %rem43.lhs.trunc.126, 1000
  %cmp71.126 = icmp eq i16 %rem70172.126, 0
  br i1 %cmp71.126, label %if.then73.126, label %for.inc100.126

if.then73.126:                                    ; preds = %if.end.126
  %add74.126 = add nsw i32 %var1.1.125, %rem13
  %call79.126 = tail call i32 @rand() #3
  %rem80.126 = srem i32 %call79.126, 5
  br label %for.body87.126

for.body87.126:                                   ; preds = %for.body87.126, %if.then73.126
  %indvars.iv.126 = phi i64 [ 0, %if.then73.126 ], [ %indvars.iv.next.126, %for.body87.126 ]
  %call88.126 = tail call i32 @rand() #3
  %rem89.126 = srem i32 %call88.126, 100
  %1013 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.126 = add nsw i32 %rem89.126, %1013
  %rem93.lhs.trunc.126 = trunc i64 %indvars.iv.126 to i8
  %rem93173.126 = urem i8 %rem93.lhs.trunc.126, 10
  %idxprom94.126 = zext i8 %rem93173.126 to i64
  %arrayidx95.126 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.126, i64 %idxprom94.126
  store i32 %add90.126, i32* %arrayidx95.126, align 4, !tbaa !12
  %indvars.iv.next.126 = add nuw nsw i64 %indvars.iv.126, 1
  %exitcond.126.not = icmp eq i64 %indvars.iv.next.126, 10
  br i1 %exitcond.126.not, label %for.inc100.loopexit.126, label %for.body87.126, !llvm.loop !13

for.inc100.loopexit.126:                          ; preds = %for.body87.126
  %mul75.126 = mul nsw i32 %add74.126, %rem15
  %add81.126 = add nsw i32 %rem80.126, %rem78.sext
  br label %for.inc100.126

for.inc100.126:                                   ; preds = %for.inc100.loopexit.126, %if.end.126
  %var4.1.126 = phi i32 [ %var4.1.125, %if.end.126 ], [ %mul75.126, %for.inc100.loopexit.126 ]
  %var5.1.126 = phi i32 [ %var5.1.125, %if.end.126 ], [ %rem9, %for.inc100.loopexit.126 ]
  %var1.1.126 = phi i32 [ %var1.1.125, %if.end.126 ], [ %add81.126, %for.inc100.loopexit.126 ]
  %1014 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.127 = mul nsw i32 %1014, 3
  %1015 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.127 = sdiv i32 %1015, -2
  %sub.127 = add i32 %div.neg.127, %mul.127
  store i32 %sub.127, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.127 = add nsw i32 %sub.127, %1014
  %rem32.127 = srem i32 %add31.127, 100
  store i32 %rem32.127, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.127 = or i32 %rem32.127, 1
  %add33.127 = add nsw i32 %or.127, %rem17
  store i32 %add33.127, i32* @main.hot_data.1, align 4, !tbaa !10
  %1016 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.127 = add nsw i32 %add33.127, %1016
  store i32 %add42.127, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %1017 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.127 = add i16 %1017, 127
  %rem43171.127 = urem i16 %rem43.lhs.trunc.127, 100
  %cmp44.127 = icmp eq i16 %rem43171.127, 0
  br i1 %cmp44.127, label %if.then.127, label %if.end.127

if.then.127:                                      ; preds = %for.inc100.126
  %add48.127 = add nsw i32 %mid_vars.sroa.0.1.126, %rem9
  %mul49.127 = mul nsw i32 %local2.1.126, %add48.127
  %shr.127 = ashr i32 %mul49.127, 1
  %add51.127 = add nsw i32 %sub.127, %shr.127
  %call53.127 = tail call i32 @rand() #3
  %rem54.127 = srem i32 %call53.127, 5
  %add55.127 = add nsw i32 %rem54.127, %rem17
  %rem56.127 = srem i32 %add55.127, 100
  %1018 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.127 = add nsw i32 %1018, %shr.127
  %1019 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.127 = add nsw i32 %add59.127, %1019
  store i32 %add66.127, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %1020 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %1020, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.127, %for.inc100.126
  %mid_vars.sroa.0.1.127 = phi i32 [ %add51.127, %if.then.127 ], [ %mid_vars.sroa.0.1.126, %for.inc100.126 ]
  %mid_vars.sroa.10166.1.127 = phi i32 [ %mul49.127, %if.then.127 ], [ %mid_vars.sroa.10166.1.126, %for.inc100.126 ]
  %local2.1.127 = phi i32 [ %rem56.127, %if.then.127 ], [ %local2.1.126, %for.inc100.126 ]
  %rem70172.127 = urem i16 %rem43.lhs.trunc.127, 1000
  %cmp71.127 = icmp eq i16 %rem70172.127, 0
  br i1 %cmp71.127, label %if.then73.127, label %for.inc100.127

if.then73.127:                                    ; preds = %if.end.127
  %add74.127 = add nsw i32 %var1.1.126, %rem13
  %call79.127 = tail call i32 @rand() #3
  %rem80.127 = srem i32 %call79.127, 5
  br label %for.body87.127

for.body87.127:                                   ; preds = %for.body87.127, %if.then73.127
  %indvars.iv.127 = phi i64 [ 0, %if.then73.127 ], [ %indvars.iv.next.127, %for.body87.127 ]
  %call88.127 = tail call i32 @rand() #3
  %rem89.127 = srem i32 %call88.127, 100
  %1021 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.127 = add nsw i32 %rem89.127, %1021
  %rem93.lhs.trunc.127 = trunc i64 %indvars.iv.127 to i8
  %rem93173.127 = urem i8 %rem93.lhs.trunc.127, 10
  %idxprom94.127 = zext i8 %rem93173.127 to i64
  %arrayidx95.127 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.127, i64 %idxprom94.127
  store i32 %add90.127, i32* %arrayidx95.127, align 4, !tbaa !12
  %indvars.iv.next.127 = add nuw nsw i64 %indvars.iv.127, 1
  %exitcond.127.not = icmp eq i64 %indvars.iv.next.127, 10
  br i1 %exitcond.127.not, label %for.inc100.loopexit.127, label %for.body87.127, !llvm.loop !13

for.inc100.loopexit.127:                          ; preds = %for.body87.127
  %mul75.127 = mul nsw i32 %add74.127, %rem15
  %add81.127 = add nsw i32 %rem80.127, %rem78.sext
  br label %for.inc100.127

for.inc100.127:                                   ; preds = %for.inc100.loopexit.127, %if.end.127
  %var4.1.127 = phi i32 [ %var4.1.126, %if.end.127 ], [ %mul75.127, %for.inc100.loopexit.127 ]
  %var5.1.127 = phi i32 [ %var5.1.126, %if.end.127 ], [ %rem9, %for.inc100.loopexit.127 ]
  %var1.1.127 = phi i32 [ %var1.1.126, %if.end.127 ], [ %add81.127, %for.inc100.loopexit.127 ]
  %1022 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.128 = mul nsw i32 %1022, 3
  %1023 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.128 = sdiv i32 %1023, -2
  %sub.128 = add i32 %div.neg.128, %mul.128
  store i32 %sub.128, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.128 = add nsw i32 %sub.128, %1022
  %rem32.128 = srem i32 %add31.128, 100
  store i32 %rem32.128, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.128 = or i32 %rem32.128, 1
  %add33.128 = add nsw i32 %or.128, %rem17
  store i32 %add33.128, i32* @main.hot_data.1, align 4, !tbaa !10
  %1024 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.128 = add nsw i32 %add33.128, %1024
  store i32 %add42.128, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %1025 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.128 = add i16 %1025, 128
  %rem43171.128 = urem i16 %rem43.lhs.trunc.128, 100
  %cmp44.128 = icmp eq i16 %rem43171.128, 0
  br i1 %cmp44.128, label %if.then.128, label %if.end.128

if.then.128:                                      ; preds = %for.inc100.127
  %add48.128 = add nsw i32 %mid_vars.sroa.0.1.127, %rem9
  %mul49.128 = mul nsw i32 %local2.1.127, %add48.128
  %shr.128 = ashr i32 %mul49.128, 1
  %add51.128 = add nsw i32 %sub.128, %shr.128
  %call53.128 = tail call i32 @rand() #3
  %rem54.128 = srem i32 %call53.128, 5
  %add55.128 = add nsw i32 %rem54.128, %rem17
  %rem56.128 = srem i32 %add55.128, 100
  %1026 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.128 = add nsw i32 %1026, %shr.128
  %1027 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.128 = add nsw i32 %add59.128, %1027
  store i32 %add66.128, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %1028 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %1028, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.128, %for.inc100.127
  %mid_vars.sroa.0.1.128 = phi i32 [ %add51.128, %if.then.128 ], [ %mid_vars.sroa.0.1.127, %for.inc100.127 ]
  %mid_vars.sroa.10166.1.128 = phi i32 [ %mul49.128, %if.then.128 ], [ %mid_vars.sroa.10166.1.127, %for.inc100.127 ]
  %local2.1.128 = phi i32 [ %rem56.128, %if.then.128 ], [ %local2.1.127, %for.inc100.127 ]
  %rem70172.128 = urem i16 %rem43.lhs.trunc.128, 1000
  %cmp71.128 = icmp eq i16 %rem70172.128, 0
  br i1 %cmp71.128, label %if.then73.128, label %for.inc100.128

if.then73.128:                                    ; preds = %if.end.128
  %add74.128 = add nsw i32 %var1.1.127, %rem13
  %call79.128 = tail call i32 @rand() #3
  %rem80.128 = srem i32 %call79.128, 5
  br label %for.body87.128

for.body87.128:                                   ; preds = %for.body87.128, %if.then73.128
  %indvars.iv.128 = phi i64 [ 0, %if.then73.128 ], [ %indvars.iv.next.128, %for.body87.128 ]
  %call88.128 = tail call i32 @rand() #3
  %rem89.128 = srem i32 %call88.128, 100
  %1029 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.128 = add nsw i32 %rem89.128, %1029
  %rem93.lhs.trunc.128 = trunc i64 %indvars.iv.128 to i8
  %rem93173.128 = urem i8 %rem93.lhs.trunc.128, 10
  %idxprom94.128 = zext i8 %rem93173.128 to i64
  %arrayidx95.128 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.128, i64 %idxprom94.128
  store i32 %add90.128, i32* %arrayidx95.128, align 4, !tbaa !12
  %indvars.iv.next.128 = add nuw nsw i64 %indvars.iv.128, 1
  %exitcond.128.not = icmp eq i64 %indvars.iv.next.128, 10
  br i1 %exitcond.128.not, label %for.inc100.loopexit.128, label %for.body87.128, !llvm.loop !13

for.inc100.loopexit.128:                          ; preds = %for.body87.128
  %mul75.128 = mul nsw i32 %add74.128, %rem15
  %add81.128 = add nsw i32 %rem80.128, %rem78.sext
  br label %for.inc100.128

for.inc100.128:                                   ; preds = %for.inc100.loopexit.128, %if.end.128
  %var4.1.128 = phi i32 [ %var4.1.127, %if.end.128 ], [ %mul75.128, %for.inc100.loopexit.128 ]
  %var5.1.128 = phi i32 [ %var5.1.127, %if.end.128 ], [ %rem9, %for.inc100.loopexit.128 ]
  %var1.1.128 = phi i32 [ %var1.1.127, %if.end.128 ], [ %add81.128, %for.inc100.loopexit.128 ]
  %1030 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.129 = mul nsw i32 %1030, 3
  %1031 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.129 = sdiv i32 %1031, -2
  %sub.129 = add i32 %div.neg.129, %mul.129
  store i32 %sub.129, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.129 = add nsw i32 %sub.129, %1030
  %rem32.129 = srem i32 %add31.129, 100
  store i32 %rem32.129, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.129 = or i32 %rem32.129, 1
  %add33.129 = add nsw i32 %or.129, %rem17
  store i32 %add33.129, i32* @main.hot_data.1, align 4, !tbaa !10
  %1032 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.129 = add nsw i32 %add33.129, %1032
  store i32 %add42.129, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %1033 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.129 = add i16 %1033, 129
  %rem43171.129 = urem i16 %rem43.lhs.trunc.129, 100
  %cmp44.129 = icmp eq i16 %rem43171.129, 0
  br i1 %cmp44.129, label %if.then.129, label %if.end.129

if.then.129:                                      ; preds = %for.inc100.128
  %add48.129 = add nsw i32 %mid_vars.sroa.0.1.128, %rem9
  %mul49.129 = mul nsw i32 %local2.1.128, %add48.129
  %shr.129 = ashr i32 %mul49.129, 1
  %add51.129 = add nsw i32 %sub.129, %shr.129
  %call53.129 = tail call i32 @rand() #3
  %rem54.129 = srem i32 %call53.129, 5
  %add55.129 = add nsw i32 %rem54.129, %rem17
  %rem56.129 = srem i32 %add55.129, 100
  %1034 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.129 = add nsw i32 %1034, %shr.129
  %1035 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.129 = add nsw i32 %add59.129, %1035
  store i32 %add66.129, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %1036 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %1036, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.129, %for.inc100.128
  %mid_vars.sroa.0.1.129 = phi i32 [ %add51.129, %if.then.129 ], [ %mid_vars.sroa.0.1.128, %for.inc100.128 ]
  %mid_vars.sroa.10166.1.129 = phi i32 [ %mul49.129, %if.then.129 ], [ %mid_vars.sroa.10166.1.128, %for.inc100.128 ]
  %local2.1.129 = phi i32 [ %rem56.129, %if.then.129 ], [ %local2.1.128, %for.inc100.128 ]
  %rem70172.129 = urem i16 %rem43.lhs.trunc.129, 1000
  %cmp71.129 = icmp eq i16 %rem70172.129, 0
  br i1 %cmp71.129, label %if.then73.129, label %for.inc100.129

if.then73.129:                                    ; preds = %if.end.129
  %add74.129 = add nsw i32 %var1.1.128, %rem13
  %call79.129 = tail call i32 @rand() #3
  %rem80.129 = srem i32 %call79.129, 5
  br label %for.body87.129

for.body87.129:                                   ; preds = %for.body87.129, %if.then73.129
  %indvars.iv.129 = phi i64 [ 0, %if.then73.129 ], [ %indvars.iv.next.129, %for.body87.129 ]
  %call88.129 = tail call i32 @rand() #3
  %rem89.129 = srem i32 %call88.129, 100
  %1037 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.129 = add nsw i32 %rem89.129, %1037
  %rem93.lhs.trunc.129 = trunc i64 %indvars.iv.129 to i8
  %rem93173.129 = urem i8 %rem93.lhs.trunc.129, 10
  %idxprom94.129 = zext i8 %rem93173.129 to i64
  %arrayidx95.129 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.129, i64 %idxprom94.129
  store i32 %add90.129, i32* %arrayidx95.129, align 4, !tbaa !12
  %indvars.iv.next.129 = add nuw nsw i64 %indvars.iv.129, 1
  %exitcond.129.not = icmp eq i64 %indvars.iv.next.129, 10
  br i1 %exitcond.129.not, label %for.inc100.loopexit.129, label %for.body87.129, !llvm.loop !13

for.inc100.loopexit.129:                          ; preds = %for.body87.129
  %mul75.129 = mul nsw i32 %add74.129, %rem15
  %add81.129 = add nsw i32 %rem80.129, %rem78.sext
  br label %for.inc100.129

for.inc100.129:                                   ; preds = %for.inc100.loopexit.129, %if.end.129
  %var4.1.129 = phi i32 [ %var4.1.128, %if.end.129 ], [ %mul75.129, %for.inc100.loopexit.129 ]
  %var5.1.129 = phi i32 [ %var5.1.128, %if.end.129 ], [ %rem9, %for.inc100.loopexit.129 ]
  %var1.1.129 = phi i32 [ %var1.1.128, %if.end.129 ], [ %add81.129, %for.inc100.loopexit.129 ]
  %1038 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.130 = mul nsw i32 %1038, 3
  %1039 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.130 = sdiv i32 %1039, -2
  %sub.130 = add i32 %div.neg.130, %mul.130
  store i32 %sub.130, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.130 = add nsw i32 %sub.130, %1038
  %rem32.130 = srem i32 %add31.130, 100
  store i32 %rem32.130, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.130 = or i32 %rem32.130, 1
  %add33.130 = add nsw i32 %or.130, %rem17
  store i32 %add33.130, i32* @main.hot_data.1, align 4, !tbaa !10
  %1040 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.130 = add nsw i32 %add33.130, %1040
  store i32 %add42.130, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %1041 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.130 = add i16 %1041, 130
  %rem43171.130 = urem i16 %rem43.lhs.trunc.130, 100
  %cmp44.130 = icmp eq i16 %rem43171.130, 0
  br i1 %cmp44.130, label %if.then.130, label %if.end.130

if.then.130:                                      ; preds = %for.inc100.129
  %add48.130 = add nsw i32 %mid_vars.sroa.0.1.129, %rem9
  %mul49.130 = mul nsw i32 %local2.1.129, %add48.130
  %shr.130 = ashr i32 %mul49.130, 1
  %add51.130 = add nsw i32 %sub.130, %shr.130
  %call53.130 = tail call i32 @rand() #3
  %rem54.130 = srem i32 %call53.130, 5
  %add55.130 = add nsw i32 %rem54.130, %rem17
  %rem56.130 = srem i32 %add55.130, 100
  %1042 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.130 = add nsw i32 %1042, %shr.130
  %1043 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.130 = add nsw i32 %add59.130, %1043
  store i32 %add66.130, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.130, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.130, %for.inc100.129
  %mid_vars.sroa.0.1.130 = phi i32 [ %add51.130, %if.then.130 ], [ %mid_vars.sroa.0.1.129, %for.inc100.129 ]
  %mid_vars.sroa.10166.1.130 = phi i32 [ %mul49.130, %if.then.130 ], [ %mid_vars.sroa.10166.1.129, %for.inc100.129 ]
  %local2.1.130 = phi i32 [ %rem56.130, %if.then.130 ], [ %local2.1.129, %for.inc100.129 ]
  %rem70172.130 = urem i16 %rem43.lhs.trunc.130, 1000
  %cmp71.130 = icmp eq i16 %rem70172.130, 0
  br i1 %cmp71.130, label %if.then73.130, label %for.inc100.130

if.then73.130:                                    ; preds = %if.end.130
  %add74.130 = add nsw i32 %var1.1.129, %rem13
  %call79.130 = tail call i32 @rand() #3
  %rem80.130 = srem i32 %call79.130, 5
  br label %for.body87.130

for.body87.130:                                   ; preds = %for.body87.130, %if.then73.130
  %indvars.iv.130 = phi i64 [ 0, %if.then73.130 ], [ %indvars.iv.next.130, %for.body87.130 ]
  %call88.130 = tail call i32 @rand() #3
  %rem89.130 = srem i32 %call88.130, 100
  %1044 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.130 = add nsw i32 %rem89.130, %1044
  %rem93.lhs.trunc.130 = trunc i64 %indvars.iv.130 to i8
  %rem93173.130 = urem i8 %rem93.lhs.trunc.130, 10
  %idxprom94.130 = zext i8 %rem93173.130 to i64
  %arrayidx95.130 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.130, i64 %idxprom94.130
  store i32 %add90.130, i32* %arrayidx95.130, align 4, !tbaa !12
  %indvars.iv.next.130 = add nuw nsw i64 %indvars.iv.130, 1
  %exitcond.130.not = icmp eq i64 %indvars.iv.next.130, 10
  br i1 %exitcond.130.not, label %for.inc100.loopexit.130, label %for.body87.130, !llvm.loop !13

for.inc100.loopexit.130:                          ; preds = %for.body87.130
  %mul75.130 = mul nsw i32 %add74.130, %rem15
  %add81.130 = add nsw i32 %rem80.130, %rem78.sext
  br label %for.inc100.130

for.inc100.130:                                   ; preds = %for.inc100.loopexit.130, %if.end.130
  %var4.1.130 = phi i32 [ %var4.1.129, %if.end.130 ], [ %mul75.130, %for.inc100.loopexit.130 ]
  %var5.1.130 = phi i32 [ %var5.1.129, %if.end.130 ], [ %rem9, %for.inc100.loopexit.130 ]
  %var1.1.130 = phi i32 [ %var1.1.129, %if.end.130 ], [ %add81.130, %for.inc100.loopexit.130 ]
  %1045 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.131 = mul nsw i32 %1045, 3
  %1046 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.131 = sdiv i32 %1046, -2
  %sub.131 = add i32 %div.neg.131, %mul.131
  store i32 %sub.131, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.131 = add nsw i32 %sub.131, %1045
  %rem32.131 = srem i32 %add31.131, 100
  store i32 %rem32.131, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.131 = or i32 %rem32.131, 1
  %add33.131 = add nsw i32 %or.131, %rem17
  store i32 %add33.131, i32* @main.hot_data.1, align 4, !tbaa !10
  %1047 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.131 = add nsw i32 %add33.131, %1047
  store i32 %add42.131, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %1048 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.131 = add i16 %1048, 131
  %rem43171.131 = urem i16 %rem43.lhs.trunc.131, 100
  %cmp44.131 = icmp eq i16 %rem43171.131, 0
  br i1 %cmp44.131, label %if.then.131, label %if.end.131

if.then.131:                                      ; preds = %for.inc100.130
  %add48.131 = add nsw i32 %mid_vars.sroa.0.1.130, %rem9
  %mul49.131 = mul nsw i32 %local2.1.130, %add48.131
  %shr.131 = ashr i32 %mul49.131, 1
  %add51.131 = add nsw i32 %sub.131, %shr.131
  %call53.131 = tail call i32 @rand() #3
  %rem54.131 = srem i32 %call53.131, 5
  %add55.131 = add nsw i32 %rem54.131, %rem17
  %rem56.131 = srem i32 %add55.131, 100
  %1049 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.131 = add nsw i32 %1049, %shr.131
  %1050 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.131 = add nsw i32 %add59.131, %1050
  store i32 %add66.131, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %1051 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %1051, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.131, %for.inc100.130
  %mid_vars.sroa.0.1.131 = phi i32 [ %add51.131, %if.then.131 ], [ %mid_vars.sroa.0.1.130, %for.inc100.130 ]
  %mid_vars.sroa.10166.1.131 = phi i32 [ %mul49.131, %if.then.131 ], [ %mid_vars.sroa.10166.1.130, %for.inc100.130 ]
  %local2.1.131 = phi i32 [ %rem56.131, %if.then.131 ], [ %local2.1.130, %for.inc100.130 ]
  %rem70172.131 = urem i16 %rem43.lhs.trunc.131, 1000
  %cmp71.131 = icmp eq i16 %rem70172.131, 0
  br i1 %cmp71.131, label %if.then73.131, label %for.inc100.131

if.then73.131:                                    ; preds = %if.end.131
  %add74.131 = add nsw i32 %var1.1.130, %rem13
  %call79.131 = tail call i32 @rand() #3
  %rem80.131 = srem i32 %call79.131, 5
  br label %for.body87.131

for.body87.131:                                   ; preds = %for.body87.131, %if.then73.131
  %indvars.iv.131 = phi i64 [ 0, %if.then73.131 ], [ %indvars.iv.next.131, %for.body87.131 ]
  %call88.131 = tail call i32 @rand() #3
  %rem89.131 = srem i32 %call88.131, 100
  %1052 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.131 = add nsw i32 %rem89.131, %1052
  %rem93.lhs.trunc.131 = trunc i64 %indvars.iv.131 to i8
  %rem93173.131 = urem i8 %rem93.lhs.trunc.131, 10
  %idxprom94.131 = zext i8 %rem93173.131 to i64
  %arrayidx95.131 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.131, i64 %idxprom94.131
  store i32 %add90.131, i32* %arrayidx95.131, align 4, !tbaa !12
  %indvars.iv.next.131 = add nuw nsw i64 %indvars.iv.131, 1
  %exitcond.131.not = icmp eq i64 %indvars.iv.next.131, 10
  br i1 %exitcond.131.not, label %for.inc100.loopexit.131, label %for.body87.131, !llvm.loop !13

for.inc100.loopexit.131:                          ; preds = %for.body87.131
  %mul75.131 = mul nsw i32 %add74.131, %rem15
  %add81.131 = add nsw i32 %rem80.131, %rem78.sext
  br label %for.inc100.131

for.inc100.131:                                   ; preds = %for.inc100.loopexit.131, %if.end.131
  %var4.1.131 = phi i32 [ %var4.1.130, %if.end.131 ], [ %mul75.131, %for.inc100.loopexit.131 ]
  %var5.1.131 = phi i32 [ %var5.1.130, %if.end.131 ], [ %rem9, %for.inc100.loopexit.131 ]
  %var1.1.131 = phi i32 [ %var1.1.130, %if.end.131 ], [ %add81.131, %for.inc100.loopexit.131 ]
  %1053 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.132 = mul nsw i32 %1053, 3
  %1054 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.132 = sdiv i32 %1054, -2
  %sub.132 = add i32 %div.neg.132, %mul.132
  store i32 %sub.132, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.132 = add nsw i32 %sub.132, %1053
  %rem32.132 = srem i32 %add31.132, 100
  store i32 %rem32.132, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.132 = or i32 %rem32.132, 1
  %add33.132 = add nsw i32 %or.132, %rem17
  store i32 %add33.132, i32* @main.hot_data.1, align 4, !tbaa !10
  %1055 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.132 = add nsw i32 %add33.132, %1055
  store i32 %add42.132, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %1056 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.132 = add i16 %1056, 132
  %rem43171.132 = urem i16 %rem43.lhs.trunc.132, 100
  %cmp44.132 = icmp eq i16 %rem43171.132, 0
  br i1 %cmp44.132, label %if.then.132, label %if.end.132

if.then.132:                                      ; preds = %for.inc100.131
  %add48.132 = add nsw i32 %mid_vars.sroa.0.1.131, %rem9
  %mul49.132 = mul nsw i32 %local2.1.131, %add48.132
  %shr.132 = ashr i32 %mul49.132, 1
  %add51.132 = add nsw i32 %sub.132, %shr.132
  %call53.132 = tail call i32 @rand() #3
  %rem54.132 = srem i32 %call53.132, 5
  %add55.132 = add nsw i32 %rem54.132, %rem17
  %rem56.132 = srem i32 %add55.132, 100
  %1057 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.132 = add nsw i32 %1057, %shr.132
  %1058 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.132 = add nsw i32 %add59.132, %1058
  store i32 %add66.132, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %1059 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %1059, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.132, %for.inc100.131
  %mid_vars.sroa.0.1.132 = phi i32 [ %add51.132, %if.then.132 ], [ %mid_vars.sroa.0.1.131, %for.inc100.131 ]
  %mid_vars.sroa.10166.1.132 = phi i32 [ %mul49.132, %if.then.132 ], [ %mid_vars.sroa.10166.1.131, %for.inc100.131 ]
  %local2.1.132 = phi i32 [ %rem56.132, %if.then.132 ], [ %local2.1.131, %for.inc100.131 ]
  %rem70172.132 = urem i16 %rem43.lhs.trunc.132, 1000
  %cmp71.132 = icmp eq i16 %rem70172.132, 0
  br i1 %cmp71.132, label %if.then73.132, label %for.inc100.132

if.then73.132:                                    ; preds = %if.end.132
  %add74.132 = add nsw i32 %var1.1.131, %rem13
  %call79.132 = tail call i32 @rand() #3
  %rem80.132 = srem i32 %call79.132, 5
  br label %for.body87.132

for.body87.132:                                   ; preds = %for.body87.132, %if.then73.132
  %indvars.iv.132 = phi i64 [ 0, %if.then73.132 ], [ %indvars.iv.next.132, %for.body87.132 ]
  %call88.132 = tail call i32 @rand() #3
  %rem89.132 = srem i32 %call88.132, 100
  %1060 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.132 = add nsw i32 %rem89.132, %1060
  %rem93.lhs.trunc.132 = trunc i64 %indvars.iv.132 to i8
  %rem93173.132 = urem i8 %rem93.lhs.trunc.132, 10
  %idxprom94.132 = zext i8 %rem93173.132 to i64
  %arrayidx95.132 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.132, i64 %idxprom94.132
  store i32 %add90.132, i32* %arrayidx95.132, align 4, !tbaa !12
  %indvars.iv.next.132 = add nuw nsw i64 %indvars.iv.132, 1
  %exitcond.132.not = icmp eq i64 %indvars.iv.next.132, 10
  br i1 %exitcond.132.not, label %for.inc100.loopexit.132, label %for.body87.132, !llvm.loop !13

for.inc100.loopexit.132:                          ; preds = %for.body87.132
  %mul75.132 = mul nsw i32 %add74.132, %rem15
  %add81.132 = add nsw i32 %rem80.132, %rem78.sext
  br label %for.inc100.132

for.inc100.132:                                   ; preds = %for.inc100.loopexit.132, %if.end.132
  %var4.1.132 = phi i32 [ %var4.1.131, %if.end.132 ], [ %mul75.132, %for.inc100.loopexit.132 ]
  %var5.1.132 = phi i32 [ %var5.1.131, %if.end.132 ], [ %rem9, %for.inc100.loopexit.132 ]
  %var1.1.132 = phi i32 [ %var1.1.131, %if.end.132 ], [ %add81.132, %for.inc100.loopexit.132 ]
  %1061 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.133 = mul nsw i32 %1061, 3
  %1062 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.133 = sdiv i32 %1062, -2
  %sub.133 = add i32 %div.neg.133, %mul.133
  store i32 %sub.133, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.133 = add nsw i32 %sub.133, %1061
  %rem32.133 = srem i32 %add31.133, 100
  store i32 %rem32.133, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.133 = or i32 %rem32.133, 1
  %add33.133 = add nsw i32 %or.133, %rem17
  store i32 %add33.133, i32* @main.hot_data.1, align 4, !tbaa !10
  %1063 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.133 = add nsw i32 %add33.133, %1063
  store i32 %add42.133, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %1064 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.133 = add i16 %1064, 133
  %rem43171.133 = urem i16 %rem43.lhs.trunc.133, 100
  %cmp44.133 = icmp eq i16 %rem43171.133, 0
  br i1 %cmp44.133, label %if.then.133, label %if.end.133

if.then.133:                                      ; preds = %for.inc100.132
  %add48.133 = add nsw i32 %mid_vars.sroa.0.1.132, %rem9
  %mul49.133 = mul nsw i32 %local2.1.132, %add48.133
  %shr.133 = ashr i32 %mul49.133, 1
  %add51.133 = add nsw i32 %sub.133, %shr.133
  %call53.133 = tail call i32 @rand() #3
  %rem54.133 = srem i32 %call53.133, 5
  %add55.133 = add nsw i32 %rem54.133, %rem17
  %rem56.133 = srem i32 %add55.133, 100
  %1065 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.133 = add nsw i32 %1065, %shr.133
  %1066 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.133 = add nsw i32 %add59.133, %1066
  store i32 %add66.133, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %1067 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %1067, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.133, %for.inc100.132
  %mid_vars.sroa.0.1.133 = phi i32 [ %add51.133, %if.then.133 ], [ %mid_vars.sroa.0.1.132, %for.inc100.132 ]
  %mid_vars.sroa.10166.1.133 = phi i32 [ %mul49.133, %if.then.133 ], [ %mid_vars.sroa.10166.1.132, %for.inc100.132 ]
  %local2.1.133 = phi i32 [ %rem56.133, %if.then.133 ], [ %local2.1.132, %for.inc100.132 ]
  %rem70172.133 = urem i16 %rem43.lhs.trunc.133, 1000
  %cmp71.133 = icmp eq i16 %rem70172.133, 0
  br i1 %cmp71.133, label %if.then73.133, label %for.inc100.133

if.then73.133:                                    ; preds = %if.end.133
  %add74.133 = add nsw i32 %var1.1.132, %rem13
  %call79.133 = tail call i32 @rand() #3
  %rem80.133 = srem i32 %call79.133, 5
  br label %for.body87.133

for.body87.133:                                   ; preds = %for.body87.133, %if.then73.133
  %indvars.iv.133 = phi i64 [ 0, %if.then73.133 ], [ %indvars.iv.next.133, %for.body87.133 ]
  %call88.133 = tail call i32 @rand() #3
  %rem89.133 = srem i32 %call88.133, 100
  %1068 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.133 = add nsw i32 %rem89.133, %1068
  %rem93.lhs.trunc.133 = trunc i64 %indvars.iv.133 to i8
  %rem93173.133 = urem i8 %rem93.lhs.trunc.133, 10
  %idxprom94.133 = zext i8 %rem93173.133 to i64
  %arrayidx95.133 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.133, i64 %idxprom94.133
  store i32 %add90.133, i32* %arrayidx95.133, align 4, !tbaa !12
  %indvars.iv.next.133 = add nuw nsw i64 %indvars.iv.133, 1
  %exitcond.133.not = icmp eq i64 %indvars.iv.next.133, 10
  br i1 %exitcond.133.not, label %for.inc100.loopexit.133, label %for.body87.133, !llvm.loop !13

for.inc100.loopexit.133:                          ; preds = %for.body87.133
  %mul75.133 = mul nsw i32 %add74.133, %rem15
  %add81.133 = add nsw i32 %rem80.133, %rem78.sext
  br label %for.inc100.133

for.inc100.133:                                   ; preds = %for.inc100.loopexit.133, %if.end.133
  %var4.1.133 = phi i32 [ %var4.1.132, %if.end.133 ], [ %mul75.133, %for.inc100.loopexit.133 ]
  %var5.1.133 = phi i32 [ %var5.1.132, %if.end.133 ], [ %rem9, %for.inc100.loopexit.133 ]
  %var1.1.133 = phi i32 [ %var1.1.132, %if.end.133 ], [ %add81.133, %for.inc100.loopexit.133 ]
  %1069 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.134 = mul nsw i32 %1069, 3
  %1070 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.134 = sdiv i32 %1070, -2
  %sub.134 = add i32 %div.neg.134, %mul.134
  store i32 %sub.134, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.134 = add nsw i32 %sub.134, %1069
  %rem32.134 = srem i32 %add31.134, 100
  store i32 %rem32.134, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.134 = or i32 %rem32.134, 1
  %add33.134 = add nsw i32 %or.134, %rem17
  store i32 %add33.134, i32* @main.hot_data.1, align 4, !tbaa !10
  %1071 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.134 = add nsw i32 %add33.134, %1071
  store i32 %add42.134, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %1072 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.134 = add i16 %1072, 134
  %rem43171.134 = urem i16 %rem43.lhs.trunc.134, 100
  %cmp44.134 = icmp eq i16 %rem43171.134, 0
  br i1 %cmp44.134, label %if.then.134, label %if.end.134

if.then.134:                                      ; preds = %for.inc100.133
  %add48.134 = add nsw i32 %mid_vars.sroa.0.1.133, %rem9
  %mul49.134 = mul nsw i32 %local2.1.133, %add48.134
  %shr.134 = ashr i32 %mul49.134, 1
  %add51.134 = add nsw i32 %sub.134, %shr.134
  %call53.134 = tail call i32 @rand() #3
  %rem54.134 = srem i32 %call53.134, 5
  %add55.134 = add nsw i32 %rem54.134, %rem17
  %rem56.134 = srem i32 %add55.134, 100
  %1073 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.134 = add nsw i32 %1073, %shr.134
  %1074 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.134 = add nsw i32 %add59.134, %1074
  store i32 %add66.134, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %1075 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %1075, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.134, %for.inc100.133
  %mid_vars.sroa.0.1.134 = phi i32 [ %add51.134, %if.then.134 ], [ %mid_vars.sroa.0.1.133, %for.inc100.133 ]
  %mid_vars.sroa.10166.1.134 = phi i32 [ %mul49.134, %if.then.134 ], [ %mid_vars.sroa.10166.1.133, %for.inc100.133 ]
  %local2.1.134 = phi i32 [ %rem56.134, %if.then.134 ], [ %local2.1.133, %for.inc100.133 ]
  %rem70172.134 = urem i16 %rem43.lhs.trunc.134, 1000
  %cmp71.134 = icmp eq i16 %rem70172.134, 0
  br i1 %cmp71.134, label %if.then73.134, label %for.inc100.134

if.then73.134:                                    ; preds = %if.end.134
  %add74.134 = add nsw i32 %var1.1.133, %rem13
  %call79.134 = tail call i32 @rand() #3
  %rem80.134 = srem i32 %call79.134, 5
  br label %for.body87.134

for.body87.134:                                   ; preds = %for.body87.134, %if.then73.134
  %indvars.iv.134 = phi i64 [ 0, %if.then73.134 ], [ %indvars.iv.next.134, %for.body87.134 ]
  %call88.134 = tail call i32 @rand() #3
  %rem89.134 = srem i32 %call88.134, 100
  %1076 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.134 = add nsw i32 %rem89.134, %1076
  %rem93.lhs.trunc.134 = trunc i64 %indvars.iv.134 to i8
  %rem93173.134 = urem i8 %rem93.lhs.trunc.134, 10
  %idxprom94.134 = zext i8 %rem93173.134 to i64
  %arrayidx95.134 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.134, i64 %idxprom94.134
  store i32 %add90.134, i32* %arrayidx95.134, align 4, !tbaa !12
  %indvars.iv.next.134 = add nuw nsw i64 %indvars.iv.134, 1
  %exitcond.134.not = icmp eq i64 %indvars.iv.next.134, 10
  br i1 %exitcond.134.not, label %for.inc100.loopexit.134, label %for.body87.134, !llvm.loop !13

for.inc100.loopexit.134:                          ; preds = %for.body87.134
  %mul75.134 = mul nsw i32 %add74.134, %rem15
  %add81.134 = add nsw i32 %rem80.134, %rem78.sext
  br label %for.inc100.134

for.inc100.134:                                   ; preds = %for.inc100.loopexit.134, %if.end.134
  %var4.1.134 = phi i32 [ %var4.1.133, %if.end.134 ], [ %mul75.134, %for.inc100.loopexit.134 ]
  %var5.1.134 = phi i32 [ %var5.1.133, %if.end.134 ], [ %rem9, %for.inc100.loopexit.134 ]
  %var1.1.134 = phi i32 [ %var1.1.133, %if.end.134 ], [ %add81.134, %for.inc100.loopexit.134 ]
  %1077 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.135 = mul nsw i32 %1077, 3
  %1078 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.135 = sdiv i32 %1078, -2
  %sub.135 = add i32 %div.neg.135, %mul.135
  store i32 %sub.135, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.135 = add nsw i32 %sub.135, %1077
  %rem32.135 = srem i32 %add31.135, 100
  store i32 %rem32.135, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.135 = or i32 %rem32.135, 1
  %add33.135 = add nsw i32 %or.135, %rem17
  store i32 %add33.135, i32* @main.hot_data.1, align 4, !tbaa !10
  %1079 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.135 = add nsw i32 %add33.135, %1079
  store i32 %add42.135, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %1080 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.135 = add i16 %1080, 135
  %rem43171.135 = urem i16 %rem43.lhs.trunc.135, 100
  %cmp44.135 = icmp eq i16 %rem43171.135, 0
  br i1 %cmp44.135, label %if.then.135, label %if.end.135

if.then.135:                                      ; preds = %for.inc100.134
  %add48.135 = add nsw i32 %mid_vars.sroa.0.1.134, %rem9
  %mul49.135 = mul nsw i32 %local2.1.134, %add48.135
  %shr.135 = ashr i32 %mul49.135, 1
  %add51.135 = add nsw i32 %sub.135, %shr.135
  %call53.135 = tail call i32 @rand() #3
  %rem54.135 = srem i32 %call53.135, 5
  %add55.135 = add nsw i32 %rem54.135, %rem17
  %rem56.135 = srem i32 %add55.135, 100
  %1081 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.135 = add nsw i32 %1081, %shr.135
  %1082 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.135 = add nsw i32 %add59.135, %1082
  store i32 %add66.135, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %1083 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %1083, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.135, %for.inc100.134
  %mid_vars.sroa.0.1.135 = phi i32 [ %add51.135, %if.then.135 ], [ %mid_vars.sroa.0.1.134, %for.inc100.134 ]
  %mid_vars.sroa.10166.1.135 = phi i32 [ %mul49.135, %if.then.135 ], [ %mid_vars.sroa.10166.1.134, %for.inc100.134 ]
  %local2.1.135 = phi i32 [ %rem56.135, %if.then.135 ], [ %local2.1.134, %for.inc100.134 ]
  %rem70172.135 = urem i16 %rem43.lhs.trunc.135, 1000
  %cmp71.135 = icmp eq i16 %rem70172.135, 0
  br i1 %cmp71.135, label %if.then73.135, label %for.inc100.135

if.then73.135:                                    ; preds = %if.end.135
  %add74.135 = add nsw i32 %var1.1.134, %rem13
  %call79.135 = tail call i32 @rand() #3
  %rem80.135 = srem i32 %call79.135, 5
  br label %for.body87.135

for.body87.135:                                   ; preds = %for.body87.135, %if.then73.135
  %indvars.iv.135 = phi i64 [ 0, %if.then73.135 ], [ %indvars.iv.next.135, %for.body87.135 ]
  %call88.135 = tail call i32 @rand() #3
  %rem89.135 = srem i32 %call88.135, 100
  %1084 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.135 = add nsw i32 %rem89.135, %1084
  %rem93.lhs.trunc.135 = trunc i64 %indvars.iv.135 to i8
  %rem93173.135 = urem i8 %rem93.lhs.trunc.135, 10
  %idxprom94.135 = zext i8 %rem93173.135 to i64
  %arrayidx95.135 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.135, i64 %idxprom94.135
  store i32 %add90.135, i32* %arrayidx95.135, align 4, !tbaa !12
  %indvars.iv.next.135 = add nuw nsw i64 %indvars.iv.135, 1
  %exitcond.135.not = icmp eq i64 %indvars.iv.next.135, 10
  br i1 %exitcond.135.not, label %for.inc100.loopexit.135, label %for.body87.135, !llvm.loop !13

for.inc100.loopexit.135:                          ; preds = %for.body87.135
  %mul75.135 = mul nsw i32 %add74.135, %rem15
  %add81.135 = add nsw i32 %rem80.135, %rem78.sext
  br label %for.inc100.135

for.inc100.135:                                   ; preds = %for.inc100.loopexit.135, %if.end.135
  %var4.1.135 = phi i32 [ %var4.1.134, %if.end.135 ], [ %mul75.135, %for.inc100.loopexit.135 ]
  %var5.1.135 = phi i32 [ %var5.1.134, %if.end.135 ], [ %rem9, %for.inc100.loopexit.135 ]
  %var1.1.135 = phi i32 [ %var1.1.134, %if.end.135 ], [ %add81.135, %for.inc100.loopexit.135 ]
  %1085 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.136 = mul nsw i32 %1085, 3
  %1086 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.136 = sdiv i32 %1086, -2
  %sub.136 = add i32 %div.neg.136, %mul.136
  store i32 %sub.136, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.136 = add nsw i32 %sub.136, %1085
  %rem32.136 = srem i32 %add31.136, 100
  store i32 %rem32.136, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.136 = or i32 %rem32.136, 1
  %add33.136 = add nsw i32 %or.136, %rem17
  store i32 %add33.136, i32* @main.hot_data.1, align 4, !tbaa !10
  %1087 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.136 = add nsw i32 %add33.136, %1087
  store i32 %add42.136, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %1088 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.136 = add i16 %1088, 136
  %rem43171.136 = urem i16 %rem43.lhs.trunc.136, 100
  %cmp44.136 = icmp eq i16 %rem43171.136, 0
  br i1 %cmp44.136, label %if.then.136, label %if.end.136

if.then.136:                                      ; preds = %for.inc100.135
  %add48.136 = add nsw i32 %mid_vars.sroa.0.1.135, %rem9
  %mul49.136 = mul nsw i32 %local2.1.135, %add48.136
  %shr.136 = ashr i32 %mul49.136, 1
  %add51.136 = add nsw i32 %sub.136, %shr.136
  %call53.136 = tail call i32 @rand() #3
  %rem54.136 = srem i32 %call53.136, 5
  %add55.136 = add nsw i32 %rem54.136, %rem17
  %rem56.136 = srem i32 %add55.136, 100
  %1089 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.136 = add nsw i32 %1089, %shr.136
  %1090 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.136 = add nsw i32 %add59.136, %1090
  store i32 %add66.136, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %1091 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %1091, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.136, %for.inc100.135
  %mid_vars.sroa.0.1.136 = phi i32 [ %add51.136, %if.then.136 ], [ %mid_vars.sroa.0.1.135, %for.inc100.135 ]
  %mid_vars.sroa.10166.1.136 = phi i32 [ %mul49.136, %if.then.136 ], [ %mid_vars.sroa.10166.1.135, %for.inc100.135 ]
  %local2.1.136 = phi i32 [ %rem56.136, %if.then.136 ], [ %local2.1.135, %for.inc100.135 ]
  %rem70172.136 = urem i16 %rem43.lhs.trunc.136, 1000
  %cmp71.136 = icmp eq i16 %rem70172.136, 0
  br i1 %cmp71.136, label %if.then73.136, label %for.inc100.136

if.then73.136:                                    ; preds = %if.end.136
  %add74.136 = add nsw i32 %var1.1.135, %rem13
  %call79.136 = tail call i32 @rand() #3
  %rem80.136 = srem i32 %call79.136, 5
  br label %for.body87.136

for.body87.136:                                   ; preds = %for.body87.136, %if.then73.136
  %indvars.iv.136 = phi i64 [ 0, %if.then73.136 ], [ %indvars.iv.next.136, %for.body87.136 ]
  %call88.136 = tail call i32 @rand() #3
  %rem89.136 = srem i32 %call88.136, 100
  %1092 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.136 = add nsw i32 %rem89.136, %1092
  %rem93.lhs.trunc.136 = trunc i64 %indvars.iv.136 to i8
  %rem93173.136 = urem i8 %rem93.lhs.trunc.136, 10
  %idxprom94.136 = zext i8 %rem93173.136 to i64
  %arrayidx95.136 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.136, i64 %idxprom94.136
  store i32 %add90.136, i32* %arrayidx95.136, align 4, !tbaa !12
  %indvars.iv.next.136 = add nuw nsw i64 %indvars.iv.136, 1
  %exitcond.136.not = icmp eq i64 %indvars.iv.next.136, 10
  br i1 %exitcond.136.not, label %for.inc100.loopexit.136, label %for.body87.136, !llvm.loop !13

for.inc100.loopexit.136:                          ; preds = %for.body87.136
  %mul75.136 = mul nsw i32 %add74.136, %rem15
  %add81.136 = add nsw i32 %rem80.136, %rem78.sext
  br label %for.inc100.136

for.inc100.136:                                   ; preds = %for.inc100.loopexit.136, %if.end.136
  %var4.1.136 = phi i32 [ %var4.1.135, %if.end.136 ], [ %mul75.136, %for.inc100.loopexit.136 ]
  %var5.1.136 = phi i32 [ %var5.1.135, %if.end.136 ], [ %rem9, %for.inc100.loopexit.136 ]
  %var1.1.136 = phi i32 [ %var1.1.135, %if.end.136 ], [ %add81.136, %for.inc100.loopexit.136 ]
  %1093 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.137 = mul nsw i32 %1093, 3
  %1094 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.137 = sdiv i32 %1094, -2
  %sub.137 = add i32 %div.neg.137, %mul.137
  store i32 %sub.137, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.137 = add nsw i32 %sub.137, %1093
  %rem32.137 = srem i32 %add31.137, 100
  store i32 %rem32.137, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.137 = or i32 %rem32.137, 1
  %add33.137 = add nsw i32 %or.137, %rem17
  store i32 %add33.137, i32* @main.hot_data.1, align 4, !tbaa !10
  %1095 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.137 = add nsw i32 %add33.137, %1095
  store i32 %add42.137, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %1096 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.137 = add i16 %1096, 137
  %rem43171.137 = urem i16 %rem43.lhs.trunc.137, 100
  %cmp44.137 = icmp eq i16 %rem43171.137, 0
  br i1 %cmp44.137, label %if.then.137, label %if.end.137

if.then.137:                                      ; preds = %for.inc100.136
  %add48.137 = add nsw i32 %mid_vars.sroa.0.1.136, %rem9
  %mul49.137 = mul nsw i32 %local2.1.136, %add48.137
  %shr.137 = ashr i32 %mul49.137, 1
  %add51.137 = add nsw i32 %sub.137, %shr.137
  %call53.137 = tail call i32 @rand() #3
  %rem54.137 = srem i32 %call53.137, 5
  %add55.137 = add nsw i32 %rem54.137, %rem17
  %rem56.137 = srem i32 %add55.137, 100
  %1097 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.137 = add nsw i32 %1097, %shr.137
  %1098 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.137 = add nsw i32 %add59.137, %1098
  store i32 %add66.137, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %1099 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %1099, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.137, %for.inc100.136
  %mid_vars.sroa.0.1.137 = phi i32 [ %add51.137, %if.then.137 ], [ %mid_vars.sroa.0.1.136, %for.inc100.136 ]
  %mid_vars.sroa.10166.1.137 = phi i32 [ %mul49.137, %if.then.137 ], [ %mid_vars.sroa.10166.1.136, %for.inc100.136 ]
  %local2.1.137 = phi i32 [ %rem56.137, %if.then.137 ], [ %local2.1.136, %for.inc100.136 ]
  %rem70172.137 = urem i16 %rem43.lhs.trunc.137, 1000
  %cmp71.137 = icmp eq i16 %rem70172.137, 0
  br i1 %cmp71.137, label %if.then73.137, label %for.inc100.137

if.then73.137:                                    ; preds = %if.end.137
  %add74.137 = add nsw i32 %var1.1.136, %rem13
  %call79.137 = tail call i32 @rand() #3
  %rem80.137 = srem i32 %call79.137, 5
  br label %for.body87.137

for.body87.137:                                   ; preds = %for.body87.137, %if.then73.137
  %indvars.iv.137 = phi i64 [ 0, %if.then73.137 ], [ %indvars.iv.next.137, %for.body87.137 ]
  %call88.137 = tail call i32 @rand() #3
  %rem89.137 = srem i32 %call88.137, 100
  %1100 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.137 = add nsw i32 %rem89.137, %1100
  %rem93.lhs.trunc.137 = trunc i64 %indvars.iv.137 to i8
  %rem93173.137 = urem i8 %rem93.lhs.trunc.137, 10
  %idxprom94.137 = zext i8 %rem93173.137 to i64
  %arrayidx95.137 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.137, i64 %idxprom94.137
  store i32 %add90.137, i32* %arrayidx95.137, align 4, !tbaa !12
  %indvars.iv.next.137 = add nuw nsw i64 %indvars.iv.137, 1
  %exitcond.137.not = icmp eq i64 %indvars.iv.next.137, 10
  br i1 %exitcond.137.not, label %for.inc100.loopexit.137, label %for.body87.137, !llvm.loop !13

for.inc100.loopexit.137:                          ; preds = %for.body87.137
  %mul75.137 = mul nsw i32 %add74.137, %rem15
  %add81.137 = add nsw i32 %rem80.137, %rem78.sext
  br label %for.inc100.137

for.inc100.137:                                   ; preds = %for.inc100.loopexit.137, %if.end.137
  %var4.1.137 = phi i32 [ %var4.1.136, %if.end.137 ], [ %mul75.137, %for.inc100.loopexit.137 ]
  %var5.1.137 = phi i32 [ %var5.1.136, %if.end.137 ], [ %rem9, %for.inc100.loopexit.137 ]
  %var1.1.137 = phi i32 [ %var1.1.136, %if.end.137 ], [ %add81.137, %for.inc100.loopexit.137 ]
  %1101 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.138 = mul nsw i32 %1101, 3
  %1102 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.138 = sdiv i32 %1102, -2
  %sub.138 = add i32 %div.neg.138, %mul.138
  store i32 %sub.138, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.138 = add nsw i32 %sub.138, %1101
  %rem32.138 = srem i32 %add31.138, 100
  store i32 %rem32.138, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.138 = or i32 %rem32.138, 1
  %add33.138 = add nsw i32 %or.138, %rem17
  store i32 %add33.138, i32* @main.hot_data.1, align 4, !tbaa !10
  %1103 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.138 = add nsw i32 %add33.138, %1103
  store i32 %add42.138, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %1104 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.138 = add i16 %1104, 138
  %rem43171.138 = urem i16 %rem43.lhs.trunc.138, 100
  %cmp44.138 = icmp eq i16 %rem43171.138, 0
  br i1 %cmp44.138, label %if.then.138, label %if.end.138

if.then.138:                                      ; preds = %for.inc100.137
  %add48.138 = add nsw i32 %mid_vars.sroa.0.1.137, %rem9
  %mul49.138 = mul nsw i32 %local2.1.137, %add48.138
  %shr.138 = ashr i32 %mul49.138, 1
  %add51.138 = add nsw i32 %sub.138, %shr.138
  %call53.138 = tail call i32 @rand() #3
  %rem54.138 = srem i32 %call53.138, 5
  %add55.138 = add nsw i32 %rem54.138, %rem17
  %rem56.138 = srem i32 %add55.138, 100
  %1105 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.138 = add nsw i32 %1105, %shr.138
  %1106 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.138 = add nsw i32 %add59.138, %1106
  store i32 %add66.138, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %1107 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %1107, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.138, %for.inc100.137
  %mid_vars.sroa.0.1.138 = phi i32 [ %add51.138, %if.then.138 ], [ %mid_vars.sroa.0.1.137, %for.inc100.137 ]
  %mid_vars.sroa.10166.1.138 = phi i32 [ %mul49.138, %if.then.138 ], [ %mid_vars.sroa.10166.1.137, %for.inc100.137 ]
  %local2.1.138 = phi i32 [ %rem56.138, %if.then.138 ], [ %local2.1.137, %for.inc100.137 ]
  %rem70172.138 = urem i16 %rem43.lhs.trunc.138, 1000
  %cmp71.138 = icmp eq i16 %rem70172.138, 0
  br i1 %cmp71.138, label %if.then73.138, label %for.inc100.138

if.then73.138:                                    ; preds = %if.end.138
  %add74.138 = add nsw i32 %var1.1.137, %rem13
  %call79.138 = tail call i32 @rand() #3
  %rem80.138 = srem i32 %call79.138, 5
  br label %for.body87.138

for.body87.138:                                   ; preds = %for.body87.138, %if.then73.138
  %indvars.iv.138 = phi i64 [ 0, %if.then73.138 ], [ %indvars.iv.next.138, %for.body87.138 ]
  %call88.138 = tail call i32 @rand() #3
  %rem89.138 = srem i32 %call88.138, 100
  %1108 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.138 = add nsw i32 %rem89.138, %1108
  %rem93.lhs.trunc.138 = trunc i64 %indvars.iv.138 to i8
  %rem93173.138 = urem i8 %rem93.lhs.trunc.138, 10
  %idxprom94.138 = zext i8 %rem93173.138 to i64
  %arrayidx95.138 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.138, i64 %idxprom94.138
  store i32 %add90.138, i32* %arrayidx95.138, align 4, !tbaa !12
  %indvars.iv.next.138 = add nuw nsw i64 %indvars.iv.138, 1
  %exitcond.138.not = icmp eq i64 %indvars.iv.next.138, 10
  br i1 %exitcond.138.not, label %for.inc100.loopexit.138, label %for.body87.138, !llvm.loop !13

for.inc100.loopexit.138:                          ; preds = %for.body87.138
  %mul75.138 = mul nsw i32 %add74.138, %rem15
  %add81.138 = add nsw i32 %rem80.138, %rem78.sext
  br label %for.inc100.138

for.inc100.138:                                   ; preds = %for.inc100.loopexit.138, %if.end.138
  %var4.1.138 = phi i32 [ %var4.1.137, %if.end.138 ], [ %mul75.138, %for.inc100.loopexit.138 ]
  %var5.1.138 = phi i32 [ %var5.1.137, %if.end.138 ], [ %rem9, %for.inc100.loopexit.138 ]
  %var1.1.138 = phi i32 [ %var1.1.137, %if.end.138 ], [ %add81.138, %for.inc100.loopexit.138 ]
  %1109 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.139 = mul nsw i32 %1109, 3
  %1110 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.139 = sdiv i32 %1110, -2
  %sub.139 = add i32 %div.neg.139, %mul.139
  store i32 %sub.139, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.139 = add nsw i32 %sub.139, %1109
  %rem32.139 = srem i32 %add31.139, 100
  store i32 %rem32.139, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.139 = or i32 %rem32.139, 1
  %add33.139 = add nsw i32 %or.139, %rem17
  store i32 %add33.139, i32* @main.hot_data.1, align 4, !tbaa !10
  %1111 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.139 = add nsw i32 %add33.139, %1111
  store i32 %add42.139, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %1112 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.139 = add i16 %1112, 139
  %rem43171.139 = urem i16 %rem43.lhs.trunc.139, 100
  %cmp44.139 = icmp eq i16 %rem43171.139, 0
  br i1 %cmp44.139, label %if.then.139, label %if.end.139

if.then.139:                                      ; preds = %for.inc100.138
  %add48.139 = add nsw i32 %mid_vars.sroa.0.1.138, %rem9
  %mul49.139 = mul nsw i32 %local2.1.138, %add48.139
  %shr.139 = ashr i32 %mul49.139, 1
  %add51.139 = add nsw i32 %sub.139, %shr.139
  %call53.139 = tail call i32 @rand() #3
  %rem54.139 = srem i32 %call53.139, 5
  %add55.139 = add nsw i32 %rem54.139, %rem17
  %rem56.139 = srem i32 %add55.139, 100
  %1113 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.139 = add nsw i32 %1113, %shr.139
  %1114 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.139 = add nsw i32 %add59.139, %1114
  store i32 %add66.139, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %1115 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %1115, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.139, %for.inc100.138
  %mid_vars.sroa.0.1.139 = phi i32 [ %add51.139, %if.then.139 ], [ %mid_vars.sroa.0.1.138, %for.inc100.138 ]
  %mid_vars.sroa.10166.1.139 = phi i32 [ %mul49.139, %if.then.139 ], [ %mid_vars.sroa.10166.1.138, %for.inc100.138 ]
  %local2.1.139 = phi i32 [ %rem56.139, %if.then.139 ], [ %local2.1.138, %for.inc100.138 ]
  %rem70172.139 = urem i16 %rem43.lhs.trunc.139, 1000
  %cmp71.139 = icmp eq i16 %rem70172.139, 0
  br i1 %cmp71.139, label %if.then73.139, label %for.inc100.139

if.then73.139:                                    ; preds = %if.end.139
  %add74.139 = add nsw i32 %var1.1.138, %rem13
  %call79.139 = tail call i32 @rand() #3
  %rem80.139 = srem i32 %call79.139, 5
  br label %for.body87.139

for.body87.139:                                   ; preds = %for.body87.139, %if.then73.139
  %indvars.iv.139 = phi i64 [ 0, %if.then73.139 ], [ %indvars.iv.next.139, %for.body87.139 ]
  %call88.139 = tail call i32 @rand() #3
  %rem89.139 = srem i32 %call88.139, 100
  %1116 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.139 = add nsw i32 %rem89.139, %1116
  %rem93.lhs.trunc.139 = trunc i64 %indvars.iv.139 to i8
  %rem93173.139 = urem i8 %rem93.lhs.trunc.139, 10
  %idxprom94.139 = zext i8 %rem93173.139 to i64
  %arrayidx95.139 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.139, i64 %idxprom94.139
  store i32 %add90.139, i32* %arrayidx95.139, align 4, !tbaa !12
  %indvars.iv.next.139 = add nuw nsw i64 %indvars.iv.139, 1
  %exitcond.139.not = icmp eq i64 %indvars.iv.next.139, 10
  br i1 %exitcond.139.not, label %for.inc100.loopexit.139, label %for.body87.139, !llvm.loop !13

for.inc100.loopexit.139:                          ; preds = %for.body87.139
  %mul75.139 = mul nsw i32 %add74.139, %rem15
  %add81.139 = add nsw i32 %rem80.139, %rem78.sext
  br label %for.inc100.139

for.inc100.139:                                   ; preds = %for.inc100.loopexit.139, %if.end.139
  %var4.1.139 = phi i32 [ %var4.1.138, %if.end.139 ], [ %mul75.139, %for.inc100.loopexit.139 ]
  %var5.1.139 = phi i32 [ %var5.1.138, %if.end.139 ], [ %rem9, %for.inc100.loopexit.139 ]
  %var1.1.139 = phi i32 [ %var1.1.138, %if.end.139 ], [ %add81.139, %for.inc100.loopexit.139 ]
  %1117 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.140 = mul nsw i32 %1117, 3
  %1118 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.140 = sdiv i32 %1118, -2
  %sub.140 = add i32 %div.neg.140, %mul.140
  store i32 %sub.140, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.140 = add nsw i32 %sub.140, %1117
  %rem32.140 = srem i32 %add31.140, 100
  store i32 %rem32.140, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.140 = or i32 %rem32.140, 1
  %add33.140 = add nsw i32 %or.140, %rem17
  store i32 %add33.140, i32* @main.hot_data.1, align 4, !tbaa !10
  %1119 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.140 = add nsw i32 %add33.140, %1119
  store i32 %add42.140, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %1120 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.140 = add i16 %1120, 140
  %rem43171.140 = urem i16 %rem43.lhs.trunc.140, 100
  %cmp44.140 = icmp eq i16 %rem43171.140, 0
  br i1 %cmp44.140, label %if.then.140, label %if.end.140

if.then.140:                                      ; preds = %for.inc100.139
  %add48.140 = add nsw i32 %mid_vars.sroa.0.1.139, %rem9
  %mul49.140 = mul nsw i32 %local2.1.139, %add48.140
  %shr.140 = ashr i32 %mul49.140, 1
  %add51.140 = add nsw i32 %sub.140, %shr.140
  %call53.140 = tail call i32 @rand() #3
  %rem54.140 = srem i32 %call53.140, 5
  %add55.140 = add nsw i32 %rem54.140, %rem17
  %rem56.140 = srem i32 %add55.140, 100
  %1121 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.140 = add nsw i32 %1121, %shr.140
  %1122 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.140 = add nsw i32 %add59.140, %1122
  store i32 %add66.140, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.140, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.140, %for.inc100.139
  %mid_vars.sroa.0.1.140 = phi i32 [ %add51.140, %if.then.140 ], [ %mid_vars.sroa.0.1.139, %for.inc100.139 ]
  %mid_vars.sroa.10166.1.140 = phi i32 [ %mul49.140, %if.then.140 ], [ %mid_vars.sroa.10166.1.139, %for.inc100.139 ]
  %local2.1.140 = phi i32 [ %rem56.140, %if.then.140 ], [ %local2.1.139, %for.inc100.139 ]
  %rem70172.140 = urem i16 %rem43.lhs.trunc.140, 1000
  %cmp71.140 = icmp eq i16 %rem70172.140, 0
  br i1 %cmp71.140, label %if.then73.140, label %for.inc100.140

if.then73.140:                                    ; preds = %if.end.140
  %add74.140 = add nsw i32 %var1.1.139, %rem13
  %call79.140 = tail call i32 @rand() #3
  %rem80.140 = srem i32 %call79.140, 5
  br label %for.body87.140

for.body87.140:                                   ; preds = %for.body87.140, %if.then73.140
  %indvars.iv.140 = phi i64 [ 0, %if.then73.140 ], [ %indvars.iv.next.140, %for.body87.140 ]
  %call88.140 = tail call i32 @rand() #3
  %rem89.140 = srem i32 %call88.140, 100
  %1123 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.140 = add nsw i32 %rem89.140, %1123
  %rem93.lhs.trunc.140 = trunc i64 %indvars.iv.140 to i8
  %rem93173.140 = urem i8 %rem93.lhs.trunc.140, 10
  %idxprom94.140 = zext i8 %rem93173.140 to i64
  %arrayidx95.140 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.140, i64 %idxprom94.140
  store i32 %add90.140, i32* %arrayidx95.140, align 4, !tbaa !12
  %indvars.iv.next.140 = add nuw nsw i64 %indvars.iv.140, 1
  %exitcond.140.not = icmp eq i64 %indvars.iv.next.140, 10
  br i1 %exitcond.140.not, label %for.inc100.loopexit.140, label %for.body87.140, !llvm.loop !13

for.inc100.loopexit.140:                          ; preds = %for.body87.140
  %mul75.140 = mul nsw i32 %add74.140, %rem15
  %add81.140 = add nsw i32 %rem80.140, %rem78.sext
  br label %for.inc100.140

for.inc100.140:                                   ; preds = %for.inc100.loopexit.140, %if.end.140
  %var4.1.140 = phi i32 [ %var4.1.139, %if.end.140 ], [ %mul75.140, %for.inc100.loopexit.140 ]
  %var5.1.140 = phi i32 [ %var5.1.139, %if.end.140 ], [ %rem9, %for.inc100.loopexit.140 ]
  %var1.1.140 = phi i32 [ %var1.1.139, %if.end.140 ], [ %add81.140, %for.inc100.loopexit.140 ]
  %1124 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.141 = mul nsw i32 %1124, 3
  %1125 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.141 = sdiv i32 %1125, -2
  %sub.141 = add i32 %div.neg.141, %mul.141
  store i32 %sub.141, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.141 = add nsw i32 %sub.141, %1124
  %rem32.141 = srem i32 %add31.141, 100
  store i32 %rem32.141, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.141 = or i32 %rem32.141, 1
  %add33.141 = add nsw i32 %or.141, %rem17
  store i32 %add33.141, i32* @main.hot_data.1, align 4, !tbaa !10
  %1126 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.141 = add nsw i32 %add33.141, %1126
  store i32 %add42.141, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %1127 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.141 = add i16 %1127, 141
  %rem43171.141 = urem i16 %rem43.lhs.trunc.141, 100
  %cmp44.141 = icmp eq i16 %rem43171.141, 0
  br i1 %cmp44.141, label %if.then.141, label %if.end.141

if.then.141:                                      ; preds = %for.inc100.140
  %add48.141 = add nsw i32 %mid_vars.sroa.0.1.140, %rem9
  %mul49.141 = mul nsw i32 %local2.1.140, %add48.141
  %shr.141 = ashr i32 %mul49.141, 1
  %add51.141 = add nsw i32 %sub.141, %shr.141
  %call53.141 = tail call i32 @rand() #3
  %rem54.141 = srem i32 %call53.141, 5
  %add55.141 = add nsw i32 %rem54.141, %rem17
  %rem56.141 = srem i32 %add55.141, 100
  %1128 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.141 = add nsw i32 %1128, %shr.141
  %1129 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.141 = add nsw i32 %add59.141, %1129
  store i32 %add66.141, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %1130 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %1130, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.141, %for.inc100.140
  %mid_vars.sroa.0.1.141 = phi i32 [ %add51.141, %if.then.141 ], [ %mid_vars.sroa.0.1.140, %for.inc100.140 ]
  %mid_vars.sroa.10166.1.141 = phi i32 [ %mul49.141, %if.then.141 ], [ %mid_vars.sroa.10166.1.140, %for.inc100.140 ]
  %local2.1.141 = phi i32 [ %rem56.141, %if.then.141 ], [ %local2.1.140, %for.inc100.140 ]
  %rem70172.141 = urem i16 %rem43.lhs.trunc.141, 1000
  %cmp71.141 = icmp eq i16 %rem70172.141, 0
  br i1 %cmp71.141, label %if.then73.141, label %for.inc100.141

if.then73.141:                                    ; preds = %if.end.141
  %add74.141 = add nsw i32 %var1.1.140, %rem13
  %call79.141 = tail call i32 @rand() #3
  %rem80.141 = srem i32 %call79.141, 5
  br label %for.body87.141

for.body87.141:                                   ; preds = %for.body87.141, %if.then73.141
  %indvars.iv.141 = phi i64 [ 0, %if.then73.141 ], [ %indvars.iv.next.141, %for.body87.141 ]
  %call88.141 = tail call i32 @rand() #3
  %rem89.141 = srem i32 %call88.141, 100
  %1131 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.141 = add nsw i32 %rem89.141, %1131
  %rem93.lhs.trunc.141 = trunc i64 %indvars.iv.141 to i8
  %rem93173.141 = urem i8 %rem93.lhs.trunc.141, 10
  %idxprom94.141 = zext i8 %rem93173.141 to i64
  %arrayidx95.141 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.141, i64 %idxprom94.141
  store i32 %add90.141, i32* %arrayidx95.141, align 4, !tbaa !12
  %indvars.iv.next.141 = add nuw nsw i64 %indvars.iv.141, 1
  %exitcond.141.not = icmp eq i64 %indvars.iv.next.141, 10
  br i1 %exitcond.141.not, label %for.inc100.loopexit.141, label %for.body87.141, !llvm.loop !13

for.inc100.loopexit.141:                          ; preds = %for.body87.141
  %mul75.141 = mul nsw i32 %add74.141, %rem15
  %add81.141 = add nsw i32 %rem80.141, %rem78.sext
  br label %for.inc100.141

for.inc100.141:                                   ; preds = %for.inc100.loopexit.141, %if.end.141
  %var4.1.141 = phi i32 [ %var4.1.140, %if.end.141 ], [ %mul75.141, %for.inc100.loopexit.141 ]
  %var5.1.141 = phi i32 [ %var5.1.140, %if.end.141 ], [ %rem9, %for.inc100.loopexit.141 ]
  %var1.1.141 = phi i32 [ %var1.1.140, %if.end.141 ], [ %add81.141, %for.inc100.loopexit.141 ]
  %1132 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.142 = mul nsw i32 %1132, 3
  %1133 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.142 = sdiv i32 %1133, -2
  %sub.142 = add i32 %div.neg.142, %mul.142
  store i32 %sub.142, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.142 = add nsw i32 %sub.142, %1132
  %rem32.142 = srem i32 %add31.142, 100
  store i32 %rem32.142, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.142 = or i32 %rem32.142, 1
  %add33.142 = add nsw i32 %or.142, %rem17
  store i32 %add33.142, i32* @main.hot_data.1, align 4, !tbaa !10
  %1134 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.142 = add nsw i32 %add33.142, %1134
  store i32 %add42.142, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %1135 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.142 = add i16 %1135, 142
  %rem43171.142 = urem i16 %rem43.lhs.trunc.142, 100
  %cmp44.142 = icmp eq i16 %rem43171.142, 0
  br i1 %cmp44.142, label %if.then.142, label %if.end.142

if.then.142:                                      ; preds = %for.inc100.141
  %add48.142 = add nsw i32 %mid_vars.sroa.0.1.141, %rem9
  %mul49.142 = mul nsw i32 %local2.1.141, %add48.142
  %shr.142 = ashr i32 %mul49.142, 1
  %add51.142 = add nsw i32 %sub.142, %shr.142
  %call53.142 = tail call i32 @rand() #3
  %rem54.142 = srem i32 %call53.142, 5
  %add55.142 = add nsw i32 %rem54.142, %rem17
  %rem56.142 = srem i32 %add55.142, 100
  %1136 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.142 = add nsw i32 %1136, %shr.142
  %1137 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.142 = add nsw i32 %add59.142, %1137
  store i32 %add66.142, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %1138 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %1138, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.142, %for.inc100.141
  %mid_vars.sroa.0.1.142 = phi i32 [ %add51.142, %if.then.142 ], [ %mid_vars.sroa.0.1.141, %for.inc100.141 ]
  %mid_vars.sroa.10166.1.142 = phi i32 [ %mul49.142, %if.then.142 ], [ %mid_vars.sroa.10166.1.141, %for.inc100.141 ]
  %local2.1.142 = phi i32 [ %rem56.142, %if.then.142 ], [ %local2.1.141, %for.inc100.141 ]
  %rem70172.142 = urem i16 %rem43.lhs.trunc.142, 1000
  %cmp71.142 = icmp eq i16 %rem70172.142, 0
  br i1 %cmp71.142, label %if.then73.142, label %for.inc100.142

if.then73.142:                                    ; preds = %if.end.142
  %add74.142 = add nsw i32 %var1.1.141, %rem13
  %call79.142 = tail call i32 @rand() #3
  %rem80.142 = srem i32 %call79.142, 5
  br label %for.body87.142

for.body87.142:                                   ; preds = %for.body87.142, %if.then73.142
  %indvars.iv.142 = phi i64 [ 0, %if.then73.142 ], [ %indvars.iv.next.142, %for.body87.142 ]
  %call88.142 = tail call i32 @rand() #3
  %rem89.142 = srem i32 %call88.142, 100
  %1139 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.142 = add nsw i32 %rem89.142, %1139
  %rem93.lhs.trunc.142 = trunc i64 %indvars.iv.142 to i8
  %rem93173.142 = urem i8 %rem93.lhs.trunc.142, 10
  %idxprom94.142 = zext i8 %rem93173.142 to i64
  %arrayidx95.142 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.142, i64 %idxprom94.142
  store i32 %add90.142, i32* %arrayidx95.142, align 4, !tbaa !12
  %indvars.iv.next.142 = add nuw nsw i64 %indvars.iv.142, 1
  %exitcond.142.not = icmp eq i64 %indvars.iv.next.142, 10
  br i1 %exitcond.142.not, label %for.inc100.loopexit.142, label %for.body87.142, !llvm.loop !13

for.inc100.loopexit.142:                          ; preds = %for.body87.142
  %mul75.142 = mul nsw i32 %add74.142, %rem15
  %add81.142 = add nsw i32 %rem80.142, %rem78.sext
  br label %for.inc100.142

for.inc100.142:                                   ; preds = %for.inc100.loopexit.142, %if.end.142
  %var4.1.142 = phi i32 [ %var4.1.141, %if.end.142 ], [ %mul75.142, %for.inc100.loopexit.142 ]
  %var5.1.142 = phi i32 [ %var5.1.141, %if.end.142 ], [ %rem9, %for.inc100.loopexit.142 ]
  %var1.1.142 = phi i32 [ %var1.1.141, %if.end.142 ], [ %add81.142, %for.inc100.loopexit.142 ]
  %1140 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.143 = mul nsw i32 %1140, 3
  %1141 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.143 = sdiv i32 %1141, -2
  %sub.143 = add i32 %div.neg.143, %mul.143
  store i32 %sub.143, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.143 = add nsw i32 %sub.143, %1140
  %rem32.143 = srem i32 %add31.143, 100
  store i32 %rem32.143, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.143 = or i32 %rem32.143, 1
  %add33.143 = add nsw i32 %or.143, %rem17
  store i32 %add33.143, i32* @main.hot_data.1, align 4, !tbaa !10
  %1142 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.143 = add nsw i32 %add33.143, %1142
  store i32 %add42.143, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %1143 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.143 = add i16 %1143, 143
  %rem43171.143 = urem i16 %rem43.lhs.trunc.143, 100
  %cmp44.143 = icmp eq i16 %rem43171.143, 0
  br i1 %cmp44.143, label %if.then.143, label %if.end.143

if.then.143:                                      ; preds = %for.inc100.142
  %add48.143 = add nsw i32 %mid_vars.sroa.0.1.142, %rem9
  %mul49.143 = mul nsw i32 %local2.1.142, %add48.143
  %shr.143 = ashr i32 %mul49.143, 1
  %add51.143 = add nsw i32 %sub.143, %shr.143
  %call53.143 = tail call i32 @rand() #3
  %rem54.143 = srem i32 %call53.143, 5
  %add55.143 = add nsw i32 %rem54.143, %rem17
  %rem56.143 = srem i32 %add55.143, 100
  %1144 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.143 = add nsw i32 %1144, %shr.143
  %1145 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.143 = add nsw i32 %add59.143, %1145
  store i32 %add66.143, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %1146 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %1146, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.143, %for.inc100.142
  %mid_vars.sroa.0.1.143 = phi i32 [ %add51.143, %if.then.143 ], [ %mid_vars.sroa.0.1.142, %for.inc100.142 ]
  %mid_vars.sroa.10166.1.143 = phi i32 [ %mul49.143, %if.then.143 ], [ %mid_vars.sroa.10166.1.142, %for.inc100.142 ]
  %local2.1.143 = phi i32 [ %rem56.143, %if.then.143 ], [ %local2.1.142, %for.inc100.142 ]
  %rem70172.143 = urem i16 %rem43.lhs.trunc.143, 1000
  %cmp71.143 = icmp eq i16 %rem70172.143, 0
  br i1 %cmp71.143, label %if.then73.143, label %for.inc100.143

if.then73.143:                                    ; preds = %if.end.143
  %add74.143 = add nsw i32 %var1.1.142, %rem13
  %call79.143 = tail call i32 @rand() #3
  %rem80.143 = srem i32 %call79.143, 5
  br label %for.body87.143

for.body87.143:                                   ; preds = %for.body87.143, %if.then73.143
  %indvars.iv.143 = phi i64 [ 0, %if.then73.143 ], [ %indvars.iv.next.143, %for.body87.143 ]
  %call88.143 = tail call i32 @rand() #3
  %rem89.143 = srem i32 %call88.143, 100
  %1147 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.143 = add nsw i32 %rem89.143, %1147
  %rem93.lhs.trunc.143 = trunc i64 %indvars.iv.143 to i8
  %rem93173.143 = urem i8 %rem93.lhs.trunc.143, 10
  %idxprom94.143 = zext i8 %rem93173.143 to i64
  %arrayidx95.143 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.143, i64 %idxprom94.143
  store i32 %add90.143, i32* %arrayidx95.143, align 4, !tbaa !12
  %indvars.iv.next.143 = add nuw nsw i64 %indvars.iv.143, 1
  %exitcond.143.not = icmp eq i64 %indvars.iv.next.143, 10
  br i1 %exitcond.143.not, label %for.inc100.loopexit.143, label %for.body87.143, !llvm.loop !13

for.inc100.loopexit.143:                          ; preds = %for.body87.143
  %mul75.143 = mul nsw i32 %add74.143, %rem15
  %add81.143 = add nsw i32 %rem80.143, %rem78.sext
  br label %for.inc100.143

for.inc100.143:                                   ; preds = %for.inc100.loopexit.143, %if.end.143
  %var4.1.143 = phi i32 [ %var4.1.142, %if.end.143 ], [ %mul75.143, %for.inc100.loopexit.143 ]
  %var5.1.143 = phi i32 [ %var5.1.142, %if.end.143 ], [ %rem9, %for.inc100.loopexit.143 ]
  %var1.1.143 = phi i32 [ %var1.1.142, %if.end.143 ], [ %add81.143, %for.inc100.loopexit.143 ]
  %1148 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.144 = mul nsw i32 %1148, 3
  %1149 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.144 = sdiv i32 %1149, -2
  %sub.144 = add i32 %div.neg.144, %mul.144
  store i32 %sub.144, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.144 = add nsw i32 %sub.144, %1148
  %rem32.144 = srem i32 %add31.144, 100
  store i32 %rem32.144, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.144 = or i32 %rem32.144, 1
  %add33.144 = add nsw i32 %or.144, %rem17
  store i32 %add33.144, i32* @main.hot_data.1, align 4, !tbaa !10
  %1150 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.144 = add nsw i32 %add33.144, %1150
  store i32 %add42.144, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %1151 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.144 = add i16 %1151, 144
  %rem43171.144 = urem i16 %rem43.lhs.trunc.144, 100
  %cmp44.144 = icmp eq i16 %rem43171.144, 0
  br i1 %cmp44.144, label %if.then.144, label %if.end.144

if.then.144:                                      ; preds = %for.inc100.143
  %add48.144 = add nsw i32 %mid_vars.sroa.0.1.143, %rem9
  %mul49.144 = mul nsw i32 %local2.1.143, %add48.144
  %shr.144 = ashr i32 %mul49.144, 1
  %add51.144 = add nsw i32 %sub.144, %shr.144
  %call53.144 = tail call i32 @rand() #3
  %rem54.144 = srem i32 %call53.144, 5
  %add55.144 = add nsw i32 %rem54.144, %rem17
  %rem56.144 = srem i32 %add55.144, 100
  %1152 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.144 = add nsw i32 %1152, %shr.144
  %1153 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.144 = add nsw i32 %add59.144, %1153
  store i32 %add66.144, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %1154 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %1154, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.144, %for.inc100.143
  %mid_vars.sroa.0.1.144 = phi i32 [ %add51.144, %if.then.144 ], [ %mid_vars.sroa.0.1.143, %for.inc100.143 ]
  %mid_vars.sroa.10166.1.144 = phi i32 [ %mul49.144, %if.then.144 ], [ %mid_vars.sroa.10166.1.143, %for.inc100.143 ]
  %local2.1.144 = phi i32 [ %rem56.144, %if.then.144 ], [ %local2.1.143, %for.inc100.143 ]
  %rem70172.144 = urem i16 %rem43.lhs.trunc.144, 1000
  %cmp71.144 = icmp eq i16 %rem70172.144, 0
  br i1 %cmp71.144, label %if.then73.144, label %for.inc100.144

if.then73.144:                                    ; preds = %if.end.144
  %add74.144 = add nsw i32 %var1.1.143, %rem13
  %call79.144 = tail call i32 @rand() #3
  %rem80.144 = srem i32 %call79.144, 5
  br label %for.body87.144

for.body87.144:                                   ; preds = %for.body87.144, %if.then73.144
  %indvars.iv.144 = phi i64 [ 0, %if.then73.144 ], [ %indvars.iv.next.144, %for.body87.144 ]
  %call88.144 = tail call i32 @rand() #3
  %rem89.144 = srem i32 %call88.144, 100
  %1155 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.144 = add nsw i32 %rem89.144, %1155
  %rem93.lhs.trunc.144 = trunc i64 %indvars.iv.144 to i8
  %rem93173.144 = urem i8 %rem93.lhs.trunc.144, 10
  %idxprom94.144 = zext i8 %rem93173.144 to i64
  %arrayidx95.144 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.144, i64 %idxprom94.144
  store i32 %add90.144, i32* %arrayidx95.144, align 4, !tbaa !12
  %indvars.iv.next.144 = add nuw nsw i64 %indvars.iv.144, 1
  %exitcond.144.not = icmp eq i64 %indvars.iv.next.144, 10
  br i1 %exitcond.144.not, label %for.inc100.loopexit.144, label %for.body87.144, !llvm.loop !13

for.inc100.loopexit.144:                          ; preds = %for.body87.144
  %mul75.144 = mul nsw i32 %add74.144, %rem15
  %add81.144 = add nsw i32 %rem80.144, %rem78.sext
  br label %for.inc100.144

for.inc100.144:                                   ; preds = %for.inc100.loopexit.144, %if.end.144
  %var4.1.144 = phi i32 [ %var4.1.143, %if.end.144 ], [ %mul75.144, %for.inc100.loopexit.144 ]
  %var5.1.144 = phi i32 [ %var5.1.143, %if.end.144 ], [ %rem9, %for.inc100.loopexit.144 ]
  %var1.1.144 = phi i32 [ %var1.1.143, %if.end.144 ], [ %add81.144, %for.inc100.loopexit.144 ]
  %1156 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.145 = mul nsw i32 %1156, 3
  %1157 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.145 = sdiv i32 %1157, -2
  %sub.145 = add i32 %div.neg.145, %mul.145
  store i32 %sub.145, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.145 = add nsw i32 %sub.145, %1156
  %rem32.145 = srem i32 %add31.145, 100
  store i32 %rem32.145, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.145 = or i32 %rem32.145, 1
  %add33.145 = add nsw i32 %or.145, %rem17
  store i32 %add33.145, i32* @main.hot_data.1, align 4, !tbaa !10
  %1158 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.145 = add nsw i32 %add33.145, %1158
  store i32 %add42.145, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %1159 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.145 = add i16 %1159, 145
  %rem43171.145 = urem i16 %rem43.lhs.trunc.145, 100
  %cmp44.145 = icmp eq i16 %rem43171.145, 0
  br i1 %cmp44.145, label %if.then.145, label %if.end.145

if.then.145:                                      ; preds = %for.inc100.144
  %add48.145 = add nsw i32 %mid_vars.sroa.0.1.144, %rem9
  %mul49.145 = mul nsw i32 %local2.1.144, %add48.145
  %shr.145 = ashr i32 %mul49.145, 1
  %add51.145 = add nsw i32 %sub.145, %shr.145
  %call53.145 = tail call i32 @rand() #3
  %rem54.145 = srem i32 %call53.145, 5
  %add55.145 = add nsw i32 %rem54.145, %rem17
  %rem56.145 = srem i32 %add55.145, 100
  %1160 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.145 = add nsw i32 %1160, %shr.145
  %1161 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.145 = add nsw i32 %add59.145, %1161
  store i32 %add66.145, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %1162 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %1162, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.145, %for.inc100.144
  %mid_vars.sroa.0.1.145 = phi i32 [ %add51.145, %if.then.145 ], [ %mid_vars.sroa.0.1.144, %for.inc100.144 ]
  %mid_vars.sroa.10166.1.145 = phi i32 [ %mul49.145, %if.then.145 ], [ %mid_vars.sroa.10166.1.144, %for.inc100.144 ]
  %local2.1.145 = phi i32 [ %rem56.145, %if.then.145 ], [ %local2.1.144, %for.inc100.144 ]
  %rem70172.145 = urem i16 %rem43.lhs.trunc.145, 1000
  %cmp71.145 = icmp eq i16 %rem70172.145, 0
  br i1 %cmp71.145, label %if.then73.145, label %for.inc100.145

if.then73.145:                                    ; preds = %if.end.145
  %add74.145 = add nsw i32 %var1.1.144, %rem13
  %call79.145 = tail call i32 @rand() #3
  %rem80.145 = srem i32 %call79.145, 5
  br label %for.body87.145

for.body87.145:                                   ; preds = %for.body87.145, %if.then73.145
  %indvars.iv.145 = phi i64 [ 0, %if.then73.145 ], [ %indvars.iv.next.145, %for.body87.145 ]
  %call88.145 = tail call i32 @rand() #3
  %rem89.145 = srem i32 %call88.145, 100
  %1163 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.145 = add nsw i32 %rem89.145, %1163
  %rem93.lhs.trunc.145 = trunc i64 %indvars.iv.145 to i8
  %rem93173.145 = urem i8 %rem93.lhs.trunc.145, 10
  %idxprom94.145 = zext i8 %rem93173.145 to i64
  %arrayidx95.145 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.145, i64 %idxprom94.145
  store i32 %add90.145, i32* %arrayidx95.145, align 4, !tbaa !12
  %indvars.iv.next.145 = add nuw nsw i64 %indvars.iv.145, 1
  %exitcond.145.not = icmp eq i64 %indvars.iv.next.145, 10
  br i1 %exitcond.145.not, label %for.inc100.loopexit.145, label %for.body87.145, !llvm.loop !13

for.inc100.loopexit.145:                          ; preds = %for.body87.145
  %mul75.145 = mul nsw i32 %add74.145, %rem15
  %add81.145 = add nsw i32 %rem80.145, %rem78.sext
  br label %for.inc100.145

for.inc100.145:                                   ; preds = %for.inc100.loopexit.145, %if.end.145
  %var4.1.145 = phi i32 [ %var4.1.144, %if.end.145 ], [ %mul75.145, %for.inc100.loopexit.145 ]
  %var5.1.145 = phi i32 [ %var5.1.144, %if.end.145 ], [ %rem9, %for.inc100.loopexit.145 ]
  %var1.1.145 = phi i32 [ %var1.1.144, %if.end.145 ], [ %add81.145, %for.inc100.loopexit.145 ]
  %1164 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.146 = mul nsw i32 %1164, 3
  %1165 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.146 = sdiv i32 %1165, -2
  %sub.146 = add i32 %div.neg.146, %mul.146
  store i32 %sub.146, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.146 = add nsw i32 %sub.146, %1164
  %rem32.146 = srem i32 %add31.146, 100
  store i32 %rem32.146, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.146 = or i32 %rem32.146, 1
  %add33.146 = add nsw i32 %or.146, %rem17
  store i32 %add33.146, i32* @main.hot_data.1, align 4, !tbaa !10
  %1166 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.146 = add nsw i32 %add33.146, %1166
  store i32 %add42.146, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %1167 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.146 = add i16 %1167, 146
  %rem43171.146 = urem i16 %rem43.lhs.trunc.146, 100
  %cmp44.146 = icmp eq i16 %rem43171.146, 0
  br i1 %cmp44.146, label %if.then.146, label %if.end.146

if.then.146:                                      ; preds = %for.inc100.145
  %add48.146 = add nsw i32 %mid_vars.sroa.0.1.145, %rem9
  %mul49.146 = mul nsw i32 %local2.1.145, %add48.146
  %shr.146 = ashr i32 %mul49.146, 1
  %add51.146 = add nsw i32 %sub.146, %shr.146
  %call53.146 = tail call i32 @rand() #3
  %rem54.146 = srem i32 %call53.146, 5
  %add55.146 = add nsw i32 %rem54.146, %rem17
  %rem56.146 = srem i32 %add55.146, 100
  %1168 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.146 = add nsw i32 %1168, %shr.146
  %1169 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.146 = add nsw i32 %add59.146, %1169
  store i32 %add66.146, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %1170 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %1170, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.146, %for.inc100.145
  %mid_vars.sroa.0.1.146 = phi i32 [ %add51.146, %if.then.146 ], [ %mid_vars.sroa.0.1.145, %for.inc100.145 ]
  %mid_vars.sroa.10166.1.146 = phi i32 [ %mul49.146, %if.then.146 ], [ %mid_vars.sroa.10166.1.145, %for.inc100.145 ]
  %local2.1.146 = phi i32 [ %rem56.146, %if.then.146 ], [ %local2.1.145, %for.inc100.145 ]
  %rem70172.146 = urem i16 %rem43.lhs.trunc.146, 1000
  %cmp71.146 = icmp eq i16 %rem70172.146, 0
  br i1 %cmp71.146, label %if.then73.146, label %for.inc100.146

if.then73.146:                                    ; preds = %if.end.146
  %add74.146 = add nsw i32 %var1.1.145, %rem13
  %call79.146 = tail call i32 @rand() #3
  %rem80.146 = srem i32 %call79.146, 5
  br label %for.body87.146

for.body87.146:                                   ; preds = %for.body87.146, %if.then73.146
  %indvars.iv.146 = phi i64 [ 0, %if.then73.146 ], [ %indvars.iv.next.146, %for.body87.146 ]
  %call88.146 = tail call i32 @rand() #3
  %rem89.146 = srem i32 %call88.146, 100
  %1171 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.146 = add nsw i32 %rem89.146, %1171
  %rem93.lhs.trunc.146 = trunc i64 %indvars.iv.146 to i8
  %rem93173.146 = urem i8 %rem93.lhs.trunc.146, 10
  %idxprom94.146 = zext i8 %rem93173.146 to i64
  %arrayidx95.146 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.146, i64 %idxprom94.146
  store i32 %add90.146, i32* %arrayidx95.146, align 4, !tbaa !12
  %indvars.iv.next.146 = add nuw nsw i64 %indvars.iv.146, 1
  %exitcond.146.not = icmp eq i64 %indvars.iv.next.146, 10
  br i1 %exitcond.146.not, label %for.inc100.loopexit.146, label %for.body87.146, !llvm.loop !13

for.inc100.loopexit.146:                          ; preds = %for.body87.146
  %mul75.146 = mul nsw i32 %add74.146, %rem15
  %add81.146 = add nsw i32 %rem80.146, %rem78.sext
  br label %for.inc100.146

for.inc100.146:                                   ; preds = %for.inc100.loopexit.146, %if.end.146
  %var4.1.146 = phi i32 [ %var4.1.145, %if.end.146 ], [ %mul75.146, %for.inc100.loopexit.146 ]
  %var5.1.146 = phi i32 [ %var5.1.145, %if.end.146 ], [ %rem9, %for.inc100.loopexit.146 ]
  %var1.1.146 = phi i32 [ %var1.1.145, %if.end.146 ], [ %add81.146, %for.inc100.loopexit.146 ]
  %1172 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.147 = mul nsw i32 %1172, 3
  %1173 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.147 = sdiv i32 %1173, -2
  %sub.147 = add i32 %div.neg.147, %mul.147
  store i32 %sub.147, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.147 = add nsw i32 %sub.147, %1172
  %rem32.147 = srem i32 %add31.147, 100
  store i32 %rem32.147, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.147 = or i32 %rem32.147, 1
  %add33.147 = add nsw i32 %or.147, %rem17
  store i32 %add33.147, i32* @main.hot_data.1, align 4, !tbaa !10
  %1174 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.147 = add nsw i32 %add33.147, %1174
  store i32 %add42.147, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %1175 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.147 = add i16 %1175, 147
  %rem43171.147 = urem i16 %rem43.lhs.trunc.147, 100
  %cmp44.147 = icmp eq i16 %rem43171.147, 0
  br i1 %cmp44.147, label %if.then.147, label %if.end.147

if.then.147:                                      ; preds = %for.inc100.146
  %add48.147 = add nsw i32 %mid_vars.sroa.0.1.146, %rem9
  %mul49.147 = mul nsw i32 %local2.1.146, %add48.147
  %shr.147 = ashr i32 %mul49.147, 1
  %add51.147 = add nsw i32 %sub.147, %shr.147
  %call53.147 = tail call i32 @rand() #3
  %rem54.147 = srem i32 %call53.147, 5
  %add55.147 = add nsw i32 %rem54.147, %rem17
  %rem56.147 = srem i32 %add55.147, 100
  %1176 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.147 = add nsw i32 %1176, %shr.147
  %1177 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.147 = add nsw i32 %add59.147, %1177
  store i32 %add66.147, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %1178 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %1178, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.147, %for.inc100.146
  %mid_vars.sroa.0.1.147 = phi i32 [ %add51.147, %if.then.147 ], [ %mid_vars.sroa.0.1.146, %for.inc100.146 ]
  %mid_vars.sroa.10166.1.147 = phi i32 [ %mul49.147, %if.then.147 ], [ %mid_vars.sroa.10166.1.146, %for.inc100.146 ]
  %local2.1.147 = phi i32 [ %rem56.147, %if.then.147 ], [ %local2.1.146, %for.inc100.146 ]
  %rem70172.147 = urem i16 %rem43.lhs.trunc.147, 1000
  %cmp71.147 = icmp eq i16 %rem70172.147, 0
  br i1 %cmp71.147, label %if.then73.147, label %for.inc100.147

if.then73.147:                                    ; preds = %if.end.147
  %add74.147 = add nsw i32 %var1.1.146, %rem13
  %call79.147 = tail call i32 @rand() #3
  %rem80.147 = srem i32 %call79.147, 5
  br label %for.body87.147

for.body87.147:                                   ; preds = %for.body87.147, %if.then73.147
  %indvars.iv.147 = phi i64 [ 0, %if.then73.147 ], [ %indvars.iv.next.147, %for.body87.147 ]
  %call88.147 = tail call i32 @rand() #3
  %rem89.147 = srem i32 %call88.147, 100
  %1179 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.147 = add nsw i32 %rem89.147, %1179
  %rem93.lhs.trunc.147 = trunc i64 %indvars.iv.147 to i8
  %rem93173.147 = urem i8 %rem93.lhs.trunc.147, 10
  %idxprom94.147 = zext i8 %rem93173.147 to i64
  %arrayidx95.147 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.147, i64 %idxprom94.147
  store i32 %add90.147, i32* %arrayidx95.147, align 4, !tbaa !12
  %indvars.iv.next.147 = add nuw nsw i64 %indvars.iv.147, 1
  %exitcond.147.not = icmp eq i64 %indvars.iv.next.147, 10
  br i1 %exitcond.147.not, label %for.inc100.loopexit.147, label %for.body87.147, !llvm.loop !13

for.inc100.loopexit.147:                          ; preds = %for.body87.147
  %mul75.147 = mul nsw i32 %add74.147, %rem15
  %add81.147 = add nsw i32 %rem80.147, %rem78.sext
  br label %for.inc100.147

for.inc100.147:                                   ; preds = %for.inc100.loopexit.147, %if.end.147
  %var4.1.147 = phi i32 [ %var4.1.146, %if.end.147 ], [ %mul75.147, %for.inc100.loopexit.147 ]
  %var5.1.147 = phi i32 [ %var5.1.146, %if.end.147 ], [ %rem9, %for.inc100.loopexit.147 ]
  %var1.1.147 = phi i32 [ %var1.1.146, %if.end.147 ], [ %add81.147, %for.inc100.loopexit.147 ]
  %1180 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.148 = mul nsw i32 %1180, 3
  %1181 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.148 = sdiv i32 %1181, -2
  %sub.148 = add i32 %div.neg.148, %mul.148
  store i32 %sub.148, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.148 = add nsw i32 %sub.148, %1180
  %rem32.148 = srem i32 %add31.148, 100
  store i32 %rem32.148, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.148 = or i32 %rem32.148, 1
  %add33.148 = add nsw i32 %or.148, %rem17
  store i32 %add33.148, i32* @main.hot_data.1, align 4, !tbaa !10
  %1182 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.148 = add nsw i32 %add33.148, %1182
  store i32 %add42.148, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %1183 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.148 = add i16 %1183, 148
  %rem43171.148 = urem i16 %rem43.lhs.trunc.148, 100
  %cmp44.148 = icmp eq i16 %rem43171.148, 0
  br i1 %cmp44.148, label %if.then.148, label %if.end.148

if.then.148:                                      ; preds = %for.inc100.147
  %add48.148 = add nsw i32 %mid_vars.sroa.0.1.147, %rem9
  %mul49.148 = mul nsw i32 %local2.1.147, %add48.148
  %shr.148 = ashr i32 %mul49.148, 1
  %add51.148 = add nsw i32 %sub.148, %shr.148
  %call53.148 = tail call i32 @rand() #3
  %rem54.148 = srem i32 %call53.148, 5
  %add55.148 = add nsw i32 %rem54.148, %rem17
  %rem56.148 = srem i32 %add55.148, 100
  %1184 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.148 = add nsw i32 %1184, %shr.148
  %1185 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.148 = add nsw i32 %add59.148, %1185
  store i32 %add66.148, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %1186 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %1186, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.148, %for.inc100.147
  %mid_vars.sroa.0.1.148 = phi i32 [ %add51.148, %if.then.148 ], [ %mid_vars.sroa.0.1.147, %for.inc100.147 ]
  %mid_vars.sroa.10166.1.148 = phi i32 [ %mul49.148, %if.then.148 ], [ %mid_vars.sroa.10166.1.147, %for.inc100.147 ]
  %local2.1.148 = phi i32 [ %rem56.148, %if.then.148 ], [ %local2.1.147, %for.inc100.147 ]
  %rem70172.148 = urem i16 %rem43.lhs.trunc.148, 1000
  %cmp71.148 = icmp eq i16 %rem70172.148, 0
  br i1 %cmp71.148, label %if.then73.148, label %for.inc100.148

if.then73.148:                                    ; preds = %if.end.148
  %add74.148 = add nsw i32 %var1.1.147, %rem13
  %call79.148 = tail call i32 @rand() #3
  %rem80.148 = srem i32 %call79.148, 5
  br label %for.body87.148

for.body87.148:                                   ; preds = %for.body87.148, %if.then73.148
  %indvars.iv.148 = phi i64 [ 0, %if.then73.148 ], [ %indvars.iv.next.148, %for.body87.148 ]
  %call88.148 = tail call i32 @rand() #3
  %rem89.148 = srem i32 %call88.148, 100
  %1187 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.148 = add nsw i32 %rem89.148, %1187
  %rem93.lhs.trunc.148 = trunc i64 %indvars.iv.148 to i8
  %rem93173.148 = urem i8 %rem93.lhs.trunc.148, 10
  %idxprom94.148 = zext i8 %rem93173.148 to i64
  %arrayidx95.148 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.148, i64 %idxprom94.148
  store i32 %add90.148, i32* %arrayidx95.148, align 4, !tbaa !12
  %indvars.iv.next.148 = add nuw nsw i64 %indvars.iv.148, 1
  %exitcond.148.not = icmp eq i64 %indvars.iv.next.148, 10
  br i1 %exitcond.148.not, label %for.inc100.loopexit.148, label %for.body87.148, !llvm.loop !13

for.inc100.loopexit.148:                          ; preds = %for.body87.148
  %mul75.148 = mul nsw i32 %add74.148, %rem15
  %add81.148 = add nsw i32 %rem80.148, %rem78.sext
  br label %for.inc100.148

for.inc100.148:                                   ; preds = %for.inc100.loopexit.148, %if.end.148
  %var4.1.148 = phi i32 [ %var4.1.147, %if.end.148 ], [ %mul75.148, %for.inc100.loopexit.148 ]
  %var5.1.148 = phi i32 [ %var5.1.147, %if.end.148 ], [ %rem9, %for.inc100.loopexit.148 ]
  %var1.1.148 = phi i32 [ %var1.1.147, %if.end.148 ], [ %add81.148, %for.inc100.loopexit.148 ]
  %1188 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.149 = mul nsw i32 %1188, 3
  %1189 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.149 = sdiv i32 %1189, -2
  %sub.149 = add i32 %div.neg.149, %mul.149
  store i32 %sub.149, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.149 = add nsw i32 %sub.149, %1188
  %rem32.149 = srem i32 %add31.149, 100
  store i32 %rem32.149, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.149 = or i32 %rem32.149, 1
  %add33.149 = add nsw i32 %or.149, %rem17
  store i32 %add33.149, i32* @main.hot_data.1, align 4, !tbaa !10
  %1190 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.149 = add nsw i32 %add33.149, %1190
  store i32 %add42.149, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %1191 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.149 = add i16 %1191, 149
  %rem43171.149 = urem i16 %rem43.lhs.trunc.149, 100
  %cmp44.149 = icmp eq i16 %rem43171.149, 0
  br i1 %cmp44.149, label %if.then.149, label %if.end.149

if.then.149:                                      ; preds = %for.inc100.148
  %add48.149 = add nsw i32 %mid_vars.sroa.0.1.148, %rem9
  %mul49.149 = mul nsw i32 %local2.1.148, %add48.149
  %shr.149 = ashr i32 %mul49.149, 1
  %add51.149 = add nsw i32 %sub.149, %shr.149
  %call53.149 = tail call i32 @rand() #3
  %rem54.149 = srem i32 %call53.149, 5
  %add55.149 = add nsw i32 %rem54.149, %rem17
  %rem56.149 = srem i32 %add55.149, 100
  %1192 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.149 = add nsw i32 %1192, %shr.149
  %1193 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.149 = add nsw i32 %add59.149, %1193
  store i32 %add66.149, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %1194 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %1194, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.149, %for.inc100.148
  %mid_vars.sroa.0.1.149 = phi i32 [ %add51.149, %if.then.149 ], [ %mid_vars.sroa.0.1.148, %for.inc100.148 ]
  %mid_vars.sroa.10166.1.149 = phi i32 [ %mul49.149, %if.then.149 ], [ %mid_vars.sroa.10166.1.148, %for.inc100.148 ]
  %local2.1.149 = phi i32 [ %rem56.149, %if.then.149 ], [ %local2.1.148, %for.inc100.148 ]
  %rem70172.149 = urem i16 %rem43.lhs.trunc.149, 1000
  %cmp71.149 = icmp eq i16 %rem70172.149, 0
  br i1 %cmp71.149, label %if.then73.149, label %for.inc100.149

if.then73.149:                                    ; preds = %if.end.149
  %add74.149 = add nsw i32 %var1.1.148, %rem13
  %call79.149 = tail call i32 @rand() #3
  %rem80.149 = srem i32 %call79.149, 5
  br label %for.body87.149

for.body87.149:                                   ; preds = %for.body87.149, %if.then73.149
  %indvars.iv.149 = phi i64 [ 0, %if.then73.149 ], [ %indvars.iv.next.149, %for.body87.149 ]
  %call88.149 = tail call i32 @rand() #3
  %rem89.149 = srem i32 %call88.149, 100
  %1195 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.149 = add nsw i32 %rem89.149, %1195
  %rem93.lhs.trunc.149 = trunc i64 %indvars.iv.149 to i8
  %rem93173.149 = urem i8 %rem93.lhs.trunc.149, 10
  %idxprom94.149 = zext i8 %rem93173.149 to i64
  %arrayidx95.149 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.149, i64 %idxprom94.149
  store i32 %add90.149, i32* %arrayidx95.149, align 4, !tbaa !12
  %indvars.iv.next.149 = add nuw nsw i64 %indvars.iv.149, 1
  %exitcond.149.not = icmp eq i64 %indvars.iv.next.149, 10
  br i1 %exitcond.149.not, label %for.inc100.loopexit.149, label %for.body87.149, !llvm.loop !13

for.inc100.loopexit.149:                          ; preds = %for.body87.149
  %mul75.149 = mul nsw i32 %add74.149, %rem15
  %add81.149 = add nsw i32 %rem80.149, %rem78.sext
  br label %for.inc100.149

for.inc100.149:                                   ; preds = %for.inc100.loopexit.149, %if.end.149
  %var4.1.149 = phi i32 [ %var4.1.148, %if.end.149 ], [ %mul75.149, %for.inc100.loopexit.149 ]
  %var5.1.149 = phi i32 [ %var5.1.148, %if.end.149 ], [ %rem9, %for.inc100.loopexit.149 ]
  %var1.1.149 = phi i32 [ %var1.1.148, %if.end.149 ], [ %add81.149, %for.inc100.loopexit.149 ]
  %1196 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.150 = mul nsw i32 %1196, 3
  %1197 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.150 = sdiv i32 %1197, -2
  %sub.150 = add i32 %div.neg.150, %mul.150
  store i32 %sub.150, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.150 = add nsw i32 %sub.150, %1196
  %rem32.150 = srem i32 %add31.150, 100
  store i32 %rem32.150, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.150 = or i32 %rem32.150, 1
  %add33.150 = add nsw i32 %or.150, %rem17
  store i32 %add33.150, i32* @main.hot_data.1, align 4, !tbaa !10
  %1198 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add42.150 = add nsw i32 %add33.150, %1198
  store i32 %add42.150, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %1199 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.150 = add i16 %1199, 150
  %rem43171.150 = urem i16 %rem43.lhs.trunc.150, 100
  %cmp44.150 = icmp eq i16 %rem43171.150, 0
  br i1 %cmp44.150, label %if.then.150, label %if.end.150

if.then.150:                                      ; preds = %for.inc100.149
  %add48.150 = add nsw i32 %mid_vars.sroa.0.1.149, %rem9
  %mul49.150 = mul nsw i32 %local2.1.149, %add48.150
  %shr.150 = ashr i32 %mul49.150, 1
  %add51.150 = add nsw i32 %sub.150, %shr.150
  %call53.150 = tail call i32 @rand() #3
  %rem54.150 = srem i32 %call53.150, 5
  %add55.150 = add nsw i32 %rem54.150, %rem17
  %rem56.150 = srem i32 %add55.150, 100
  %1200 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.150 = add nsw i32 %1200, %shr.150
  %1201 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  %add66.150 = add nsw i32 %add59.150, %1201
  store i32 %add66.150, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 0), align 16, !tbaa !12
  store i32 %add66.150, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.150, %for.inc100.149
  %mid_vars.sroa.0.1.150 = phi i32 [ %add51.150, %if.then.150 ], [ %mid_vars.sroa.0.1.149, %for.inc100.149 ]
  %mid_vars.sroa.10166.1.150 = phi i32 [ %mul49.150, %if.then.150 ], [ %mid_vars.sroa.10166.1.149, %for.inc100.149 ]
  %local2.1.150 = phi i32 [ %rem56.150, %if.then.150 ], [ %local2.1.149, %for.inc100.149 ]
  %rem70172.150 = urem i16 %rem43.lhs.trunc.150, 1000
  %cmp71.150 = icmp eq i16 %rem70172.150, 0
  br i1 %cmp71.150, label %if.then73.150, label %for.inc100.150

if.then73.150:                                    ; preds = %if.end.150
  %add74.150 = add nsw i32 %var1.1.149, %rem13
  %call79.150 = tail call i32 @rand() #3
  %rem80.150 = srem i32 %call79.150, 5
  br label %for.body87.150

for.body87.150:                                   ; preds = %for.body87.150, %if.then73.150
  %indvars.iv.150 = phi i64 [ 0, %if.then73.150 ], [ %indvars.iv.next.150, %for.body87.150 ]
  %call88.150 = tail call i32 @rand() #3
  %rem89.150 = srem i32 %call88.150, 100
  %1202 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.150 = add nsw i32 %rem89.150, %1202
  %rem93.lhs.trunc.150 = trunc i64 %indvars.iv.150 to i8
  %rem93173.150 = urem i8 %rem93.lhs.trunc.150, 10
  %idxprom94.150 = zext i8 %rem93173.150 to i64
  %arrayidx95.150 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.150, i64 %idxprom94.150
  store i32 %add90.150, i32* %arrayidx95.150, align 4, !tbaa !12
  %indvars.iv.next.150 = add nuw nsw i64 %indvars.iv.150, 1
  %exitcond.150.not = icmp eq i64 %indvars.iv.next.150, 10
  br i1 %exitcond.150.not, label %for.inc100.loopexit.150, label %for.body87.150, !llvm.loop !13

for.inc100.loopexit.150:                          ; preds = %for.body87.150
  %mul75.150 = mul nsw i32 %add74.150, %rem15
  %add81.150 = add nsw i32 %rem80.150, %rem78.sext
  br label %for.inc100.150

for.inc100.150:                                   ; preds = %for.inc100.loopexit.150, %if.end.150
  %var4.1.150 = phi i32 [ %var4.1.149, %if.end.150 ], [ %mul75.150, %for.inc100.loopexit.150 ]
  %var5.1.150 = phi i32 [ %var5.1.149, %if.end.150 ], [ %rem9, %for.inc100.loopexit.150 ]
  %var1.1.150 = phi i32 [ %var1.1.149, %if.end.150 ], [ %add81.150, %for.inc100.loopexit.150 ]
  %1203 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.151 = mul nsw i32 %1203, 3
  %1204 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.151 = sdiv i32 %1204, -2
  %sub.151 = add i32 %div.neg.151, %mul.151
  store i32 %sub.151, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.151 = add nsw i32 %sub.151, %1203
  %rem32.151 = srem i32 %add31.151, 100
  store i32 %rem32.151, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.151 = or i32 %rem32.151, 1
  %add33.151 = add nsw i32 %or.151, %rem17
  store i32 %add33.151, i32* @main.hot_data.1, align 4, !tbaa !10
  %1205 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add42.151 = add nsw i32 %add33.151, %1205
  store i32 %add42.151, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %1206 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.151 = add i16 %1206, 151
  %rem43171.151 = urem i16 %rem43.lhs.trunc.151, 100
  %cmp44.151 = icmp eq i16 %rem43171.151, 0
  br i1 %cmp44.151, label %if.then.151, label %if.end.151

if.then.151:                                      ; preds = %for.inc100.150
  %add48.151 = add nsw i32 %mid_vars.sroa.0.1.150, %rem9
  %mul49.151 = mul nsw i32 %local2.1.150, %add48.151
  %shr.151 = ashr i32 %mul49.151, 1
  %add51.151 = add nsw i32 %sub.151, %shr.151
  %call53.151 = tail call i32 @rand() #3
  %rem54.151 = srem i32 %call53.151, 5
  %add55.151 = add nsw i32 %rem54.151, %rem17
  %rem56.151 = srem i32 %add55.151, 100
  %1207 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.151 = add nsw i32 %1207, %shr.151
  %1208 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %add66.151 = add nsw i32 %add59.151, %1208
  store i32 %add66.151, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 1, i64 1), align 4, !tbaa !12
  %1209 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 1), align 4, !tbaa !12
  store i32 %1209, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.151, %for.inc100.150
  %mid_vars.sroa.0.1.151 = phi i32 [ %add51.151, %if.then.151 ], [ %mid_vars.sroa.0.1.150, %for.inc100.150 ]
  %mid_vars.sroa.10166.1.151 = phi i32 [ %mul49.151, %if.then.151 ], [ %mid_vars.sroa.10166.1.150, %for.inc100.150 ]
  %local2.1.151 = phi i32 [ %rem56.151, %if.then.151 ], [ %local2.1.150, %for.inc100.150 ]
  %rem70172.151 = urem i16 %rem43.lhs.trunc.151, 1000
  %cmp71.151 = icmp eq i16 %rem70172.151, 0
  br i1 %cmp71.151, label %if.then73.151, label %for.inc100.151

if.then73.151:                                    ; preds = %if.end.151
  %add74.151 = add nsw i32 %var1.1.150, %rem13
  %call79.151 = tail call i32 @rand() #3
  %rem80.151 = srem i32 %call79.151, 5
  br label %for.body87.151

for.body87.151:                                   ; preds = %for.body87.151, %if.then73.151
  %indvars.iv.151 = phi i64 [ 0, %if.then73.151 ], [ %indvars.iv.next.151, %for.body87.151 ]
  %call88.151 = tail call i32 @rand() #3
  %rem89.151 = srem i32 %call88.151, 100
  %1210 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.151 = add nsw i32 %rem89.151, %1210
  %rem93.lhs.trunc.151 = trunc i64 %indvars.iv.151 to i8
  %rem93173.151 = urem i8 %rem93.lhs.trunc.151, 10
  %idxprom94.151 = zext i8 %rem93173.151 to i64
  %arrayidx95.151 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.151, i64 %idxprom94.151
  store i32 %add90.151, i32* %arrayidx95.151, align 4, !tbaa !12
  %indvars.iv.next.151 = add nuw nsw i64 %indvars.iv.151, 1
  %exitcond.151.not = icmp eq i64 %indvars.iv.next.151, 10
  br i1 %exitcond.151.not, label %for.inc100.loopexit.151, label %for.body87.151, !llvm.loop !13

for.inc100.loopexit.151:                          ; preds = %for.body87.151
  %mul75.151 = mul nsw i32 %add74.151, %rem15
  %add81.151 = add nsw i32 %rem80.151, %rem78.sext
  br label %for.inc100.151

for.inc100.151:                                   ; preds = %for.inc100.loopexit.151, %if.end.151
  %var4.1.151 = phi i32 [ %var4.1.150, %if.end.151 ], [ %mul75.151, %for.inc100.loopexit.151 ]
  %var5.1.151 = phi i32 [ %var5.1.150, %if.end.151 ], [ %rem9, %for.inc100.loopexit.151 ]
  %var1.1.151 = phi i32 [ %var1.1.150, %if.end.151 ], [ %add81.151, %for.inc100.loopexit.151 ]
  %1211 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.152 = mul nsw i32 %1211, 3
  %1212 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.152 = sdiv i32 %1212, -2
  %sub.152 = add i32 %div.neg.152, %mul.152
  store i32 %sub.152, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.152 = add nsw i32 %sub.152, %1211
  %rem32.152 = srem i32 %add31.152, 100
  store i32 %rem32.152, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.152 = or i32 %rem32.152, 1
  %add33.152 = add nsw i32 %or.152, %rem17
  store i32 %add33.152, i32* @main.hot_data.1, align 4, !tbaa !10
  %1213 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add42.152 = add nsw i32 %add33.152, %1213
  store i32 %add42.152, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %1214 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.152 = add i16 %1214, 152
  %rem43171.152 = urem i16 %rem43.lhs.trunc.152, 100
  %cmp44.152 = icmp eq i16 %rem43171.152, 0
  br i1 %cmp44.152, label %if.then.152, label %if.end.152

if.then.152:                                      ; preds = %for.inc100.151
  %add48.152 = add nsw i32 %mid_vars.sroa.0.1.151, %rem9
  %mul49.152 = mul nsw i32 %local2.1.151, %add48.152
  %shr.152 = ashr i32 %mul49.152, 1
  %add51.152 = add nsw i32 %sub.152, %shr.152
  %call53.152 = tail call i32 @rand() #3
  %rem54.152 = srem i32 %call53.152, 5
  %add55.152 = add nsw i32 %rem54.152, %rem17
  %rem56.152 = srem i32 %add55.152, 100
  %1215 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.152 = add nsw i32 %1215, %shr.152
  %1216 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %add66.152 = add nsw i32 %add59.152, %1216
  store i32 %add66.152, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 2, i64 2), align 8, !tbaa !12
  %1217 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 2), align 8, !tbaa !12
  store i32 %1217, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.152, %for.inc100.151
  %mid_vars.sroa.0.1.152 = phi i32 [ %add51.152, %if.then.152 ], [ %mid_vars.sroa.0.1.151, %for.inc100.151 ]
  %mid_vars.sroa.10166.1.152 = phi i32 [ %mul49.152, %if.then.152 ], [ %mid_vars.sroa.10166.1.151, %for.inc100.151 ]
  %local2.1.152 = phi i32 [ %rem56.152, %if.then.152 ], [ %local2.1.151, %for.inc100.151 ]
  %rem70172.152 = urem i16 %rem43.lhs.trunc.152, 1000
  %cmp71.152 = icmp eq i16 %rem70172.152, 0
  br i1 %cmp71.152, label %if.then73.152, label %for.inc100.152

if.then73.152:                                    ; preds = %if.end.152
  %add74.152 = add nsw i32 %var1.1.151, %rem13
  %call79.152 = tail call i32 @rand() #3
  %rem80.152 = srem i32 %call79.152, 5
  br label %for.body87.152

for.body87.152:                                   ; preds = %for.body87.152, %if.then73.152
  %indvars.iv.152 = phi i64 [ 0, %if.then73.152 ], [ %indvars.iv.next.152, %for.body87.152 ]
  %call88.152 = tail call i32 @rand() #3
  %rem89.152 = srem i32 %call88.152, 100
  %1218 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.152 = add nsw i32 %rem89.152, %1218
  %rem93.lhs.trunc.152 = trunc i64 %indvars.iv.152 to i8
  %rem93173.152 = urem i8 %rem93.lhs.trunc.152, 10
  %idxprom94.152 = zext i8 %rem93173.152 to i64
  %arrayidx95.152 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.152, i64 %idxprom94.152
  store i32 %add90.152, i32* %arrayidx95.152, align 4, !tbaa !12
  %indvars.iv.next.152 = add nuw nsw i64 %indvars.iv.152, 1
  %exitcond.152.not = icmp eq i64 %indvars.iv.next.152, 10
  br i1 %exitcond.152.not, label %for.inc100.loopexit.152, label %for.body87.152, !llvm.loop !13

for.inc100.loopexit.152:                          ; preds = %for.body87.152
  %mul75.152 = mul nsw i32 %add74.152, %rem15
  %add81.152 = add nsw i32 %rem80.152, %rem78.sext
  br label %for.inc100.152

for.inc100.152:                                   ; preds = %for.inc100.loopexit.152, %if.end.152
  %var4.1.152 = phi i32 [ %var4.1.151, %if.end.152 ], [ %mul75.152, %for.inc100.loopexit.152 ]
  %var5.1.152 = phi i32 [ %var5.1.151, %if.end.152 ], [ %rem9, %for.inc100.loopexit.152 ]
  %var1.1.152 = phi i32 [ %var1.1.151, %if.end.152 ], [ %add81.152, %for.inc100.loopexit.152 ]
  %1219 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.153 = mul nsw i32 %1219, 3
  %1220 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.153 = sdiv i32 %1220, -2
  %sub.153 = add i32 %div.neg.153, %mul.153
  store i32 %sub.153, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.153 = add nsw i32 %sub.153, %1219
  %rem32.153 = srem i32 %add31.153, 100
  store i32 %rem32.153, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.153 = or i32 %rem32.153, 1
  %add33.153 = add nsw i32 %or.153, %rem17
  store i32 %add33.153, i32* @main.hot_data.1, align 4, !tbaa !10
  %1221 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add42.153 = add nsw i32 %add33.153, %1221
  store i32 %add42.153, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %1222 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.153 = add i16 %1222, 153
  %rem43171.153 = urem i16 %rem43.lhs.trunc.153, 100
  %cmp44.153 = icmp eq i16 %rem43171.153, 0
  br i1 %cmp44.153, label %if.then.153, label %if.end.153

if.then.153:                                      ; preds = %for.inc100.152
  %add48.153 = add nsw i32 %mid_vars.sroa.0.1.152, %rem9
  %mul49.153 = mul nsw i32 %local2.1.152, %add48.153
  %shr.153 = ashr i32 %mul49.153, 1
  %add51.153 = add nsw i32 %sub.153, %shr.153
  %call53.153 = tail call i32 @rand() #3
  %rem54.153 = srem i32 %call53.153, 5
  %add55.153 = add nsw i32 %rem54.153, %rem17
  %rem56.153 = srem i32 %add55.153, 100
  %1223 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.153 = add nsw i32 %1223, %shr.153
  %1224 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %add66.153 = add nsw i32 %add59.153, %1224
  store i32 %add66.153, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 3, i64 3), align 4, !tbaa !12
  %1225 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 3), align 4, !tbaa !12
  store i32 %1225, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.153, %for.inc100.152
  %mid_vars.sroa.0.1.153 = phi i32 [ %add51.153, %if.then.153 ], [ %mid_vars.sroa.0.1.152, %for.inc100.152 ]
  %mid_vars.sroa.10166.1.153 = phi i32 [ %mul49.153, %if.then.153 ], [ %mid_vars.sroa.10166.1.152, %for.inc100.152 ]
  %local2.1.153 = phi i32 [ %rem56.153, %if.then.153 ], [ %local2.1.152, %for.inc100.152 ]
  %rem70172.153 = urem i16 %rem43.lhs.trunc.153, 1000
  %cmp71.153 = icmp eq i16 %rem70172.153, 0
  br i1 %cmp71.153, label %if.then73.153, label %for.inc100.153

if.then73.153:                                    ; preds = %if.end.153
  %add74.153 = add nsw i32 %var1.1.152, %rem13
  %call79.153 = tail call i32 @rand() #3
  %rem80.153 = srem i32 %call79.153, 5
  br label %for.body87.153

for.body87.153:                                   ; preds = %for.body87.153, %if.then73.153
  %indvars.iv.153 = phi i64 [ 0, %if.then73.153 ], [ %indvars.iv.next.153, %for.body87.153 ]
  %call88.153 = tail call i32 @rand() #3
  %rem89.153 = srem i32 %call88.153, 100
  %1226 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.153 = add nsw i32 %rem89.153, %1226
  %rem93.lhs.trunc.153 = trunc i64 %indvars.iv.153 to i8
  %rem93173.153 = urem i8 %rem93.lhs.trunc.153, 10
  %idxprom94.153 = zext i8 %rem93173.153 to i64
  %arrayidx95.153 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.153, i64 %idxprom94.153
  store i32 %add90.153, i32* %arrayidx95.153, align 4, !tbaa !12
  %indvars.iv.next.153 = add nuw nsw i64 %indvars.iv.153, 1
  %exitcond.153.not = icmp eq i64 %indvars.iv.next.153, 10
  br i1 %exitcond.153.not, label %for.inc100.loopexit.153, label %for.body87.153, !llvm.loop !13

for.inc100.loopexit.153:                          ; preds = %for.body87.153
  %mul75.153 = mul nsw i32 %add74.153, %rem15
  %add81.153 = add nsw i32 %rem80.153, %rem78.sext
  br label %for.inc100.153

for.inc100.153:                                   ; preds = %for.inc100.loopexit.153, %if.end.153
  %var4.1.153 = phi i32 [ %var4.1.152, %if.end.153 ], [ %mul75.153, %for.inc100.loopexit.153 ]
  %var5.1.153 = phi i32 [ %var5.1.152, %if.end.153 ], [ %rem9, %for.inc100.loopexit.153 ]
  %var1.1.153 = phi i32 [ %var1.1.152, %if.end.153 ], [ %add81.153, %for.inc100.loopexit.153 ]
  %1227 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.154 = mul nsw i32 %1227, 3
  %1228 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.154 = sdiv i32 %1228, -2
  %sub.154 = add i32 %div.neg.154, %mul.154
  store i32 %sub.154, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.154 = add nsw i32 %sub.154, %1227
  %rem32.154 = srem i32 %add31.154, 100
  store i32 %rem32.154, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.154 = or i32 %rem32.154, 1
  %add33.154 = add nsw i32 %or.154, %rem17
  store i32 %add33.154, i32* @main.hot_data.1, align 4, !tbaa !10
  %1229 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add42.154 = add nsw i32 %add33.154, %1229
  store i32 %add42.154, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %1230 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.154 = add i16 %1230, 154
  %rem43171.154 = urem i16 %rem43.lhs.trunc.154, 100
  %cmp44.154 = icmp eq i16 %rem43171.154, 0
  br i1 %cmp44.154, label %if.then.154, label %if.end.154

if.then.154:                                      ; preds = %for.inc100.153
  %add48.154 = add nsw i32 %mid_vars.sroa.0.1.153, %rem9
  %mul49.154 = mul nsw i32 %local2.1.153, %add48.154
  %shr.154 = ashr i32 %mul49.154, 1
  %add51.154 = add nsw i32 %sub.154, %shr.154
  %call53.154 = tail call i32 @rand() #3
  %rem54.154 = srem i32 %call53.154, 5
  %add55.154 = add nsw i32 %rem54.154, %rem17
  %rem56.154 = srem i32 %add55.154, 100
  %1231 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.154 = add nsw i32 %1231, %shr.154
  %1232 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %add66.154 = add nsw i32 %add59.154, %1232
  store i32 %add66.154, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 4, i64 4), align 16, !tbaa !12
  %1233 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 4), align 16, !tbaa !12
  store i32 %1233, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.154, %for.inc100.153
  %mid_vars.sroa.0.1.154 = phi i32 [ %add51.154, %if.then.154 ], [ %mid_vars.sroa.0.1.153, %for.inc100.153 ]
  %mid_vars.sroa.10166.1.154 = phi i32 [ %mul49.154, %if.then.154 ], [ %mid_vars.sroa.10166.1.153, %for.inc100.153 ]
  %local2.1.154 = phi i32 [ %rem56.154, %if.then.154 ], [ %local2.1.153, %for.inc100.153 ]
  %rem70172.154 = urem i16 %rem43.lhs.trunc.154, 1000
  %cmp71.154 = icmp eq i16 %rem70172.154, 0
  br i1 %cmp71.154, label %if.then73.154, label %for.inc100.154

if.then73.154:                                    ; preds = %if.end.154
  %add74.154 = add nsw i32 %var1.1.153, %rem13
  %call79.154 = tail call i32 @rand() #3
  %rem80.154 = srem i32 %call79.154, 5
  br label %for.body87.154

for.body87.154:                                   ; preds = %for.body87.154, %if.then73.154
  %indvars.iv.154 = phi i64 [ 0, %if.then73.154 ], [ %indvars.iv.next.154, %for.body87.154 ]
  %call88.154 = tail call i32 @rand() #3
  %rem89.154 = srem i32 %call88.154, 100
  %1234 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.154 = add nsw i32 %rem89.154, %1234
  %rem93.lhs.trunc.154 = trunc i64 %indvars.iv.154 to i8
  %rem93173.154 = urem i8 %rem93.lhs.trunc.154, 10
  %idxprom94.154 = zext i8 %rem93173.154 to i64
  %arrayidx95.154 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.154, i64 %idxprom94.154
  store i32 %add90.154, i32* %arrayidx95.154, align 4, !tbaa !12
  %indvars.iv.next.154 = add nuw nsw i64 %indvars.iv.154, 1
  %exitcond.154.not = icmp eq i64 %indvars.iv.next.154, 10
  br i1 %exitcond.154.not, label %for.inc100.loopexit.154, label %for.body87.154, !llvm.loop !13

for.inc100.loopexit.154:                          ; preds = %for.body87.154
  %mul75.154 = mul nsw i32 %add74.154, %rem15
  %add81.154 = add nsw i32 %rem80.154, %rem78.sext
  br label %for.inc100.154

for.inc100.154:                                   ; preds = %for.inc100.loopexit.154, %if.end.154
  %var4.1.154 = phi i32 [ %var4.1.153, %if.end.154 ], [ %mul75.154, %for.inc100.loopexit.154 ]
  %var5.1.154 = phi i32 [ %var5.1.153, %if.end.154 ], [ %rem9, %for.inc100.loopexit.154 ]
  %var1.1.154 = phi i32 [ %var1.1.153, %if.end.154 ], [ %add81.154, %for.inc100.loopexit.154 ]
  %1235 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.155 = mul nsw i32 %1235, 3
  %1236 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.155 = sdiv i32 %1236, -2
  %sub.155 = add i32 %div.neg.155, %mul.155
  store i32 %sub.155, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.155 = add nsw i32 %sub.155, %1235
  %rem32.155 = srem i32 %add31.155, 100
  store i32 %rem32.155, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.155 = or i32 %rem32.155, 1
  %add33.155 = add nsw i32 %or.155, %rem17
  store i32 %add33.155, i32* @main.hot_data.1, align 4, !tbaa !10
  %1237 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add42.155 = add nsw i32 %add33.155, %1237
  store i32 %add42.155, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %1238 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.155 = add i16 %1238, 155
  %rem43171.155 = urem i16 %rem43.lhs.trunc.155, 100
  %cmp44.155 = icmp eq i16 %rem43171.155, 0
  br i1 %cmp44.155, label %if.then.155, label %if.end.155

if.then.155:                                      ; preds = %for.inc100.154
  %add48.155 = add nsw i32 %mid_vars.sroa.0.1.154, %rem9
  %mul49.155 = mul nsw i32 %local2.1.154, %add48.155
  %shr.155 = ashr i32 %mul49.155, 1
  %add51.155 = add nsw i32 %sub.155, %shr.155
  %call53.155 = tail call i32 @rand() #3
  %rem54.155 = srem i32 %call53.155, 5
  %add55.155 = add nsw i32 %rem54.155, %rem17
  %rem56.155 = srem i32 %add55.155, 100
  %1239 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.155 = add nsw i32 %1239, %shr.155
  %1240 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %add66.155 = add nsw i32 %add59.155, %1240
  store i32 %add66.155, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 5, i64 5), align 4, !tbaa !12
  %1241 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 5), align 4, !tbaa !12
  store i32 %1241, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.155, %for.inc100.154
  %mid_vars.sroa.0.1.155 = phi i32 [ %add51.155, %if.then.155 ], [ %mid_vars.sroa.0.1.154, %for.inc100.154 ]
  %mid_vars.sroa.10166.1.155 = phi i32 [ %mul49.155, %if.then.155 ], [ %mid_vars.sroa.10166.1.154, %for.inc100.154 ]
  %local2.1.155 = phi i32 [ %rem56.155, %if.then.155 ], [ %local2.1.154, %for.inc100.154 ]
  %rem70172.155 = urem i16 %rem43.lhs.trunc.155, 1000
  %cmp71.155 = icmp eq i16 %rem70172.155, 0
  br i1 %cmp71.155, label %if.then73.155, label %for.inc100.155

if.then73.155:                                    ; preds = %if.end.155
  %add74.155 = add nsw i32 %var1.1.154, %rem13
  %call79.155 = tail call i32 @rand() #3
  %rem80.155 = srem i32 %call79.155, 5
  br label %for.body87.155

for.body87.155:                                   ; preds = %for.body87.155, %if.then73.155
  %indvars.iv.155 = phi i64 [ 0, %if.then73.155 ], [ %indvars.iv.next.155, %for.body87.155 ]
  %call88.155 = tail call i32 @rand() #3
  %rem89.155 = srem i32 %call88.155, 100
  %1242 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.155 = add nsw i32 %rem89.155, %1242
  %rem93.lhs.trunc.155 = trunc i64 %indvars.iv.155 to i8
  %rem93173.155 = urem i8 %rem93.lhs.trunc.155, 10
  %idxprom94.155 = zext i8 %rem93173.155 to i64
  %arrayidx95.155 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.155, i64 %idxprom94.155
  store i32 %add90.155, i32* %arrayidx95.155, align 4, !tbaa !12
  %indvars.iv.next.155 = add nuw nsw i64 %indvars.iv.155, 1
  %exitcond.155.not = icmp eq i64 %indvars.iv.next.155, 10
  br i1 %exitcond.155.not, label %for.inc100.loopexit.155, label %for.body87.155, !llvm.loop !13

for.inc100.loopexit.155:                          ; preds = %for.body87.155
  %mul75.155 = mul nsw i32 %add74.155, %rem15
  %add81.155 = add nsw i32 %rem80.155, %rem78.sext
  br label %for.inc100.155

for.inc100.155:                                   ; preds = %for.inc100.loopexit.155, %if.end.155
  %var4.1.155 = phi i32 [ %var4.1.154, %if.end.155 ], [ %mul75.155, %for.inc100.loopexit.155 ]
  %var5.1.155 = phi i32 [ %var5.1.154, %if.end.155 ], [ %rem9, %for.inc100.loopexit.155 ]
  %var1.1.155 = phi i32 [ %var1.1.154, %if.end.155 ], [ %add81.155, %for.inc100.loopexit.155 ]
  %1243 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.156 = mul nsw i32 %1243, 3
  %1244 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.156 = sdiv i32 %1244, -2
  %sub.156 = add i32 %div.neg.156, %mul.156
  store i32 %sub.156, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.156 = add nsw i32 %sub.156, %1243
  %rem32.156 = srem i32 %add31.156, 100
  store i32 %rem32.156, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.156 = or i32 %rem32.156, 1
  %add33.156 = add nsw i32 %or.156, %rem17
  store i32 %add33.156, i32* @main.hot_data.1, align 4, !tbaa !10
  %1245 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add42.156 = add nsw i32 %add33.156, %1245
  store i32 %add42.156, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %1246 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.156 = add i16 %1246, 156
  %rem43171.156 = urem i16 %rem43.lhs.trunc.156, 100
  %cmp44.156 = icmp eq i16 %rem43171.156, 0
  br i1 %cmp44.156, label %if.then.156, label %if.end.156

if.then.156:                                      ; preds = %for.inc100.155
  %add48.156 = add nsw i32 %mid_vars.sroa.0.1.155, %rem9
  %mul49.156 = mul nsw i32 %local2.1.155, %add48.156
  %shr.156 = ashr i32 %mul49.156, 1
  %add51.156 = add nsw i32 %sub.156, %shr.156
  %call53.156 = tail call i32 @rand() #3
  %rem54.156 = srem i32 %call53.156, 5
  %add55.156 = add nsw i32 %rem54.156, %rem17
  %rem56.156 = srem i32 %add55.156, 100
  %1247 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.156 = add nsw i32 %1247, %shr.156
  %1248 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %add66.156 = add nsw i32 %add59.156, %1248
  store i32 %add66.156, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 6, i64 6), align 8, !tbaa !12
  %1249 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 6), align 8, !tbaa !12
  store i32 %1249, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.156, %for.inc100.155
  %mid_vars.sroa.0.1.156 = phi i32 [ %add51.156, %if.then.156 ], [ %mid_vars.sroa.0.1.155, %for.inc100.155 ]
  %mid_vars.sroa.10166.1.156 = phi i32 [ %mul49.156, %if.then.156 ], [ %mid_vars.sroa.10166.1.155, %for.inc100.155 ]
  %local2.1.156 = phi i32 [ %rem56.156, %if.then.156 ], [ %local2.1.155, %for.inc100.155 ]
  %rem70172.156 = urem i16 %rem43.lhs.trunc.156, 1000
  %cmp71.156 = icmp eq i16 %rem70172.156, 0
  br i1 %cmp71.156, label %if.then73.156, label %for.inc100.156

if.then73.156:                                    ; preds = %if.end.156
  %add74.156 = add nsw i32 %var1.1.155, %rem13
  %call79.156 = tail call i32 @rand() #3
  %rem80.156 = srem i32 %call79.156, 5
  br label %for.body87.156

for.body87.156:                                   ; preds = %for.body87.156, %if.then73.156
  %indvars.iv.156 = phi i64 [ 0, %if.then73.156 ], [ %indvars.iv.next.156, %for.body87.156 ]
  %call88.156 = tail call i32 @rand() #3
  %rem89.156 = srem i32 %call88.156, 100
  %1250 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.156 = add nsw i32 %rem89.156, %1250
  %rem93.lhs.trunc.156 = trunc i64 %indvars.iv.156 to i8
  %rem93173.156 = urem i8 %rem93.lhs.trunc.156, 10
  %idxprom94.156 = zext i8 %rem93173.156 to i64
  %arrayidx95.156 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.156, i64 %idxprom94.156
  store i32 %add90.156, i32* %arrayidx95.156, align 4, !tbaa !12
  %indvars.iv.next.156 = add nuw nsw i64 %indvars.iv.156, 1
  %exitcond.156.not = icmp eq i64 %indvars.iv.next.156, 10
  br i1 %exitcond.156.not, label %for.inc100.loopexit.156, label %for.body87.156, !llvm.loop !13

for.inc100.loopexit.156:                          ; preds = %for.body87.156
  %mul75.156 = mul nsw i32 %add74.156, %rem15
  %add81.156 = add nsw i32 %rem80.156, %rem78.sext
  br label %for.inc100.156

for.inc100.156:                                   ; preds = %for.inc100.loopexit.156, %if.end.156
  %var4.1.156 = phi i32 [ %var4.1.155, %if.end.156 ], [ %mul75.156, %for.inc100.loopexit.156 ]
  %var5.1.156 = phi i32 [ %var5.1.155, %if.end.156 ], [ %rem9, %for.inc100.loopexit.156 ]
  %var1.1.156 = phi i32 [ %var1.1.155, %if.end.156 ], [ %add81.156, %for.inc100.loopexit.156 ]
  %1251 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.157 = mul nsw i32 %1251, 3
  %1252 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.157 = sdiv i32 %1252, -2
  %sub.157 = add i32 %div.neg.157, %mul.157
  store i32 %sub.157, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.157 = add nsw i32 %sub.157, %1251
  %rem32.157 = srem i32 %add31.157, 100
  store i32 %rem32.157, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.157 = or i32 %rem32.157, 1
  %add33.157 = add nsw i32 %or.157, %rem17
  store i32 %add33.157, i32* @main.hot_data.1, align 4, !tbaa !10
  %1253 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add42.157 = add nsw i32 %add33.157, %1253
  store i32 %add42.157, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %1254 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.157 = add i16 %1254, 157
  %rem43171.157 = urem i16 %rem43.lhs.trunc.157, 100
  %cmp44.157 = icmp eq i16 %rem43171.157, 0
  br i1 %cmp44.157, label %if.then.157, label %if.end.157

if.then.157:                                      ; preds = %for.inc100.156
  %add48.157 = add nsw i32 %mid_vars.sroa.0.1.156, %rem9
  %mul49.157 = mul nsw i32 %local2.1.156, %add48.157
  %shr.157 = ashr i32 %mul49.157, 1
  %add51.157 = add nsw i32 %sub.157, %shr.157
  %call53.157 = tail call i32 @rand() #3
  %rem54.157 = srem i32 %call53.157, 5
  %add55.157 = add nsw i32 %rem54.157, %rem17
  %rem56.157 = srem i32 %add55.157, 100
  %1255 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.157 = add nsw i32 %1255, %shr.157
  %1256 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %add66.157 = add nsw i32 %add59.157, %1256
  store i32 %add66.157, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 7, i64 7), align 4, !tbaa !12
  %1257 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 7), align 4, !tbaa !12
  store i32 %1257, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.157, %for.inc100.156
  %mid_vars.sroa.0.1.157 = phi i32 [ %add51.157, %if.then.157 ], [ %mid_vars.sroa.0.1.156, %for.inc100.156 ]
  %mid_vars.sroa.10166.1.157 = phi i32 [ %mul49.157, %if.then.157 ], [ %mid_vars.sroa.10166.1.156, %for.inc100.156 ]
  %local2.1.157 = phi i32 [ %rem56.157, %if.then.157 ], [ %local2.1.156, %for.inc100.156 ]
  %rem70172.157 = urem i16 %rem43.lhs.trunc.157, 1000
  %cmp71.157 = icmp eq i16 %rem70172.157, 0
  br i1 %cmp71.157, label %if.then73.157, label %for.inc100.157

if.then73.157:                                    ; preds = %if.end.157
  %add74.157 = add nsw i32 %var1.1.156, %rem13
  %call79.157 = tail call i32 @rand() #3
  %rem80.157 = srem i32 %call79.157, 5
  br label %for.body87.157

for.body87.157:                                   ; preds = %for.body87.157, %if.then73.157
  %indvars.iv.157 = phi i64 [ 0, %if.then73.157 ], [ %indvars.iv.next.157, %for.body87.157 ]
  %call88.157 = tail call i32 @rand() #3
  %rem89.157 = srem i32 %call88.157, 100
  %1258 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.157 = add nsw i32 %rem89.157, %1258
  %rem93.lhs.trunc.157 = trunc i64 %indvars.iv.157 to i8
  %rem93173.157 = urem i8 %rem93.lhs.trunc.157, 10
  %idxprom94.157 = zext i8 %rem93173.157 to i64
  %arrayidx95.157 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.157, i64 %idxprom94.157
  store i32 %add90.157, i32* %arrayidx95.157, align 4, !tbaa !12
  %indvars.iv.next.157 = add nuw nsw i64 %indvars.iv.157, 1
  %exitcond.157.not = icmp eq i64 %indvars.iv.next.157, 10
  br i1 %exitcond.157.not, label %for.inc100.loopexit.157, label %for.body87.157, !llvm.loop !13

for.inc100.loopexit.157:                          ; preds = %for.body87.157
  %mul75.157 = mul nsw i32 %add74.157, %rem15
  %add81.157 = add nsw i32 %rem80.157, %rem78.sext
  br label %for.inc100.157

for.inc100.157:                                   ; preds = %for.inc100.loopexit.157, %if.end.157
  %var4.1.157 = phi i32 [ %var4.1.156, %if.end.157 ], [ %mul75.157, %for.inc100.loopexit.157 ]
  %var5.1.157 = phi i32 [ %var5.1.156, %if.end.157 ], [ %rem9, %for.inc100.loopexit.157 ]
  %var1.1.157 = phi i32 [ %var1.1.156, %if.end.157 ], [ %add81.157, %for.inc100.loopexit.157 ]
  %1259 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.158 = mul nsw i32 %1259, 3
  %1260 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.158 = sdiv i32 %1260, -2
  %sub.158 = add i32 %div.neg.158, %mul.158
  store i32 %sub.158, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.158 = add nsw i32 %sub.158, %1259
  %rem32.158 = srem i32 %add31.158, 100
  store i32 %rem32.158, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.158 = or i32 %rem32.158, 1
  %add33.158 = add nsw i32 %or.158, %rem17
  store i32 %add33.158, i32* @main.hot_data.1, align 4, !tbaa !10
  %1261 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add42.158 = add nsw i32 %add33.158, %1261
  store i32 %add42.158, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %1262 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.158 = add i16 %1262, 158
  %rem43171.158 = urem i16 %rem43.lhs.trunc.158, 100
  %cmp44.158 = icmp eq i16 %rem43171.158, 0
  br i1 %cmp44.158, label %if.then.158, label %if.end.158

if.then.158:                                      ; preds = %for.inc100.157
  %add48.158 = add nsw i32 %mid_vars.sroa.0.1.157, %rem9
  %mul49.158 = mul nsw i32 %local2.1.157, %add48.158
  %shr.158 = ashr i32 %mul49.158, 1
  %add51.158 = add nsw i32 %sub.158, %shr.158
  %call53.158 = tail call i32 @rand() #3
  %rem54.158 = srem i32 %call53.158, 5
  %add55.158 = add nsw i32 %rem54.158, %rem17
  %rem56.158 = srem i32 %add55.158, 100
  %1263 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.158 = add nsw i32 %1263, %shr.158
  %1264 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %add66.158 = add nsw i32 %add59.158, %1264
  store i32 %add66.158, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 8, i64 8), align 16, !tbaa !12
  %1265 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 8), align 16, !tbaa !12
  store i32 %1265, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.158, %for.inc100.157
  %mid_vars.sroa.0.1.158 = phi i32 [ %add51.158, %if.then.158 ], [ %mid_vars.sroa.0.1.157, %for.inc100.157 ]
  %mid_vars.sroa.10166.1.158 = phi i32 [ %mul49.158, %if.then.158 ], [ %mid_vars.sroa.10166.1.157, %for.inc100.157 ]
  %local2.1.158 = phi i32 [ %rem56.158, %if.then.158 ], [ %local2.1.157, %for.inc100.157 ]
  %rem70172.158 = urem i16 %rem43.lhs.trunc.158, 1000
  %cmp71.158 = icmp eq i16 %rem70172.158, 0
  br i1 %cmp71.158, label %if.then73.158, label %for.inc100.158

if.then73.158:                                    ; preds = %if.end.158
  %add74.158 = add nsw i32 %var1.1.157, %rem13
  %call79.158 = tail call i32 @rand() #3
  %rem80.158 = srem i32 %call79.158, 5
  br label %for.body87.158

for.body87.158:                                   ; preds = %for.body87.158, %if.then73.158
  %indvars.iv.158 = phi i64 [ 0, %if.then73.158 ], [ %indvars.iv.next.158, %for.body87.158 ]
  %call88.158 = tail call i32 @rand() #3
  %rem89.158 = srem i32 %call88.158, 100
  %1266 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.158 = add nsw i32 %rem89.158, %1266
  %rem93.lhs.trunc.158 = trunc i64 %indvars.iv.158 to i8
  %rem93173.158 = urem i8 %rem93.lhs.trunc.158, 10
  %idxprom94.158 = zext i8 %rem93173.158 to i64
  %arrayidx95.158 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.158, i64 %idxprom94.158
  store i32 %add90.158, i32* %arrayidx95.158, align 4, !tbaa !12
  %indvars.iv.next.158 = add nuw nsw i64 %indvars.iv.158, 1
  %exitcond.158.not = icmp eq i64 %indvars.iv.next.158, 10
  br i1 %exitcond.158.not, label %for.inc100.loopexit.158, label %for.body87.158, !llvm.loop !13

for.inc100.loopexit.158:                          ; preds = %for.body87.158
  %mul75.158 = mul nsw i32 %add74.158, %rem15
  %add81.158 = add nsw i32 %rem80.158, %rem78.sext
  br label %for.inc100.158

for.inc100.158:                                   ; preds = %for.inc100.loopexit.158, %if.end.158
  %var4.1.158 = phi i32 [ %var4.1.157, %if.end.158 ], [ %mul75.158, %for.inc100.loopexit.158 ]
  %var5.1.158 = phi i32 [ %var5.1.157, %if.end.158 ], [ %rem9, %for.inc100.loopexit.158 ]
  %var1.1.158 = phi i32 [ %var1.1.157, %if.end.158 ], [ %add81.158, %for.inc100.loopexit.158 ]
  %1267 = load i32, i32* @main.hot_data.1, align 4, !tbaa !10
  %mul.159 = mul nsw i32 %1267, 3
  %1268 = load i32, i32* @main.hot_data.2, align 4, !tbaa !11
  %div.neg.159 = sdiv i32 %1268, -2
  %sub.159 = add i32 %div.neg.159, %mul.159
  store i32 %sub.159, i32* @main.hot_data.0, align 4, !tbaa !5
  %add31.159 = add nsw i32 %sub.159, %1267
  %rem32.159 = srem i32 %add31.159, 100
  store i32 %rem32.159, i32* @main.hot_data.2, align 4, !tbaa !11
  %or.159 = or i32 %rem32.159, 1
  %add33.159 = add nsw i32 %or.159, %rem17
  store i32 %add33.159, i32* @main.hot_data.1, align 4, !tbaa !10
  %1269 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add42.159 = add nsw i32 %add33.159, %1269
  store i32 %add42.159, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %1270 = trunc i32 %i25.0182 to i16
  %rem43.lhs.trunc.159 = add i16 %1270, 159
  %rem43171.159 = urem i16 %rem43.lhs.trunc.159, 100
  %cmp44.159 = icmp eq i16 %rem43171.159, 0
  br i1 %cmp44.159, label %if.then.159, label %if.end.159

if.then.159:                                      ; preds = %for.inc100.158
  %add48.159 = add nsw i32 %mid_vars.sroa.0.1.158, %rem9
  %mul49.159 = mul nsw i32 %local2.1.158, %add48.159
  %shr.159 = ashr i32 %mul49.159, 1
  %add51.159 = add nsw i32 %sub.159, %shr.159
  %call53.159 = tail call i32 @rand() #3
  %rem54.159 = srem i32 %call53.159, 5
  %add55.159 = add nsw i32 %rem54.159, %rem17
  %rem56.159 = srem i32 %add55.159, 100
  %1271 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add59.159 = add nsw i32 %1271, %shr.159
  %1272 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %add66.159 = add nsw i32 %add59.159, %1272
  store i32 %add66.159, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 9, i64 9), align 4, !tbaa !12
  %1273 = load i32, i32* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0, i64 9), align 4, !tbaa !12
  store i32 %1273, i32* @main.hot_data.0, align 4, !tbaa !5
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.159, %for.inc100.158
  %1274 = phi i32 [ %1273, %if.then.159 ], [ %sub.159, %for.inc100.158 ]
  %mid_vars.sroa.0.1.159 = phi i32 [ %add51.159, %if.then.159 ], [ %mid_vars.sroa.0.1.158, %for.inc100.158 ]
  %mid_vars.sroa.10166.1.159 = phi i32 [ %mul49.159, %if.then.159 ], [ %mid_vars.sroa.10166.1.158, %for.inc100.158 ]
  %local2.1.159 = phi i32 [ %rem56.159, %if.then.159 ], [ %local2.1.158, %for.inc100.158 ]
  %rem70172.159 = urem i16 %rem43.lhs.trunc.159, 1000
  %cmp71.159 = icmp eq i16 %rem70172.159, 0
  br i1 %cmp71.159, label %if.then73.159, label %for.inc100.159

if.then73.159:                                    ; preds = %if.end.159
  %add74.159 = add nsw i32 %var1.1.158, %rem13
  %call79.159 = tail call i32 @rand() #3
  %rem80.159 = srem i32 %call79.159, 5
  br label %for.body87.159

for.body87.159:                                   ; preds = %for.body87.159, %if.then73.159
  %indvars.iv.159 = phi i64 [ 0, %if.then73.159 ], [ %indvars.iv.next.159, %for.body87.159 ]
  %call88.159 = tail call i32 @rand() #3
  %rem89.159 = srem i32 %call88.159, 100
  %1275 = load i32, i32* @main.hot_data.0, align 4, !tbaa !5
  %add90.159 = add nsw i32 %rem89.159, %1275
  %rem93.lhs.trunc.159 = trunc i64 %indvars.iv.159 to i8
  %rem93173.159 = urem i8 %rem93.lhs.trunc.159, 10
  %idxprom94.159 = zext i8 %rem93173.159 to i64
  %arrayidx95.159 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %indvars.iv.159, i64 %idxprom94.159
  store i32 %add90.159, i32* %arrayidx95.159, align 4, !tbaa !12
  %indvars.iv.next.159 = add nuw nsw i64 %indvars.iv.159, 1
  %exitcond.159.not = icmp eq i64 %indvars.iv.next.159, 10
  br i1 %exitcond.159.not, label %for.inc100.loopexit.159, label %for.body87.159, !llvm.loop !13

for.inc100.loopexit.159:                          ; preds = %for.body87.159
  %mul75.159 = mul nsw i32 %add74.159, %rem15
  %add81.159 = add nsw i32 %rem80.159, %rem78.sext
  br label %for.inc100.159

for.inc100.159:                                   ; preds = %for.inc100.loopexit.159, %if.end.159
  %1276 = phi i32 [ %1274, %if.end.159 ], [ %1275, %for.inc100.loopexit.159 ]
  %var4.1.159 = phi i32 [ %var4.1.158, %if.end.159 ], [ %mul75.159, %for.inc100.loopexit.159 ]
  %var5.1.159 = phi i32 [ %var5.1.158, %if.end.159 ], [ %rem9, %for.inc100.loopexit.159 ]
  %var1.1.159 = phi i32 [ %var1.1.158, %if.end.159 ], [ %add81.159, %for.inc100.loopexit.159 ]
  %inc101.159 = add nuw nsw i32 %i25.0182, 160
  %exitcond186.159.not = icmp eq i32 %inc101.159, 40000
  br i1 %exitcond186.159.not, label %for.cond.cleanup29, label %for.body30, !llvm.loop !15
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @time(i64* noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @rand() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !8, i64 4, !7, i64 68, !8, i64 72, !7, i64 136}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 68}
!11 = !{!6, !7, i64 136}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14, !16}
!16 = !{!"llvm.loop.unroll.disable"}
