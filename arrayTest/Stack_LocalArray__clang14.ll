; ModuleID = 'Stack_LocalArray__clang14.bc'
source_filename = "Stack_LocalArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, [64 x i8], i32, [64 x i8], i32 }
%struct.anon.0 = type { i32, [32 x i8], i32, [32 x i8], i32 }

@main.hot_data = internal global %struct.anon zeroinitializer, align 4
@localArray = dso_local global [10 x [10 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [32 x i8] c"\E6\A0\B8\E5\BF\83\E5\8F\98\E9\87\8F\EF\BC\9A\0Aa=%d\0Ab=%d\0Ac=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\E4\B8\AD\E9\97\B4\E5\8F\98\E9\87\8F\EF\BC\9Ax=%d y=%d z=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\E5\85\B6\E4\BB\96\E5\8F\98\E9\87\8F\EF\BC\9Avar4=%d var5=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"array: localArray[%d]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.anon.0, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %17 = call i64 @time(i64* noundef null) #3
  %18 = trunc i64 %17 to i32
  call void @srand(i32 noundef %18) #3
  %19 = call i32 @rand() #3
  %20 = srem i32 %19, 100
  store i32 %20, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %21 = call i32 @rand() #3
  %22 = srem i32 %21, 100
  store i32 %22, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 2), align 4
  %23 = call i32 @rand() #3
  %24 = srem i32 %23, 100
  store i32 %24, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %25 = call i32 @rand() #3
  %26 = srem i32 %25, 100
  %27 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = call i32 @rand() #3
  %29 = srem i32 %28, 100
  %30 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = call i32 @rand() #3
  %32 = srem i32 %31, 100
  store i32 %32, i32* %3, align 4
  %33 = call i32 @rand() #3
  %34 = srem i32 %33, 100
  store i32 %34, i32* %4, align 4
  %35 = call i32 @rand() #3
  %36 = srem i32 %35, 100
  store i32 %36, i32* %5, align 4
  %37 = call i32 @rand() #3
  %38 = srem i32 %37, 100
  store i32 %38, i32* %10, align 4
  %39 = call i32 @rand() #3
  %40 = srem i32 %39, 100
  store i32 %40, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %54, %0
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 10
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = call i32 @rand() #3
  %46 = srem i32 %45, 100
  %47 = add nsw i32 %46, 1
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %49
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [10 x i32], [10 x i32]* %50, i64 0, i64 %52
  store i32 %47, i32* %53, align 4
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %41, !llvm.loop !6

57:                                               ; preds = %41
  store i32 0, i32* %14, align 4
  br label %58

58:                                               ; preds = %173, %57
  %59 = load i32, i32* %14, align 4
  %60 = icmp slt i32 %59, 40000
  br i1 %60, label %61, label %176

61:                                               ; preds = %58
  %62 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 2), align 4
  %63 = mul nsw i32 %62, 3
  %64 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %65 = sdiv i32 %64, 2
  %66 = sub nsw i32 %63, %65
  store i32 %66, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 2), align 4
  %69 = add nsw i32 %67, %68
  %70 = srem i32 %69, 100
  store i32 %70, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %72 = or i32 %71, 1
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 2), align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %76 = or i32 %75, 1
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %14, align 4
  %80 = srem i32 %79, 10
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %81
  %83 = load i32, i32* %14, align 4
  %84 = srem i32 %83, 10
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [10 x i32], [10 x i32]* %82, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %78
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* %14, align 4
  %90 = srem i32 %89, 100
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %132

92:                                               ; preds = %61
  %93 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %94, %96
  %98 = load i32, i32* %11, align 4
  %99 = mul nsw i32 %97, %98
  %100 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2, i32 0, i32 4
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = ashr i32 %102, 1
  %104 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %105 = add nsw i32 %103, %104
  %106 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2, i32 0, i32 0
  store i32 %105, i32* %106, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @rand() #3
  %109 = srem i32 %108, 5
  %110 = add nsw i32 %107, %109
  %111 = srem i32 %110, 100
  store i32 %111, i32* %11, align 4
  %112 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 1
  %115 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* %14, align 4
  %118 = srem i32 %117, 10
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %119
  %121 = load i32, i32* %14, align 4
  %122 = srem i32 %121, 10
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [10 x i32], [10 x i32]* %120, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %116
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %14, align 4
  %128 = srem i32 %127, 10
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [10 x i32], [10 x i32]* getelementptr inbounds ([10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 0), i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  br label %132

132:                                              ; preds = %92, %61
  %133 = load i32, i32* %14, align 4
  %134 = srem i32 %133, 1000
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %172

136:                                              ; preds = %132
  %137 = load i32, i32* %3, align 4
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %137, %138
  %140 = load i32, i32* %5, align 4
  %141 = mul nsw i32 %139, %140
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = xor i32 %142, %143
  %145 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %144, %146
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = srem i32 %148, 10
  %150 = call i32 @rand() #3
  %151 = srem i32 %150, 5
  %152 = add nsw i32 %149, %151
  store i32 %152, i32* %3, align 4
  store i32 0, i32* %15, align 4
  br label %153

153:                                              ; preds = %168, %136
  %154 = load i32, i32* %15, align 4
  %155 = icmp slt i32 %154, 10
  br i1 %155, label %156, label %171

156:                                              ; preds = %153
  %157 = call i32 @rand() #3
  %158 = srem i32 %157, 100
  %159 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %162
  %164 = load i32, i32* %15, align 4
  %165 = srem i32 %164, 10
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [10 x i32], [10 x i32]* %163, i64 0, i64 %166
  store i32 %160, i32* %167, align 4
  br label %168

168:                                              ; preds = %156
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %15, align 4
  br label %153, !llvm.loop !8

171:                                              ; preds = %153
  br label %172

172:                                              ; preds = %171, %132
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %14, align 4
  br label %58, !llvm.loop !9

176:                                              ; preds = %58
  %177 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 0), align 4
  %178 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 2), align 4
  %179 = load i32, i32* getelementptr inbounds (%struct.anon, %struct.anon* @main.hot_data, i32 0, i32 4), align 4
  %180 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 noundef %177, i32 noundef %178, i32 noundef %179)
  %181 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef %182, i32 noundef %184, i32 noundef %186)
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %7, align 4
  %190 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 noundef %188, i32 noundef %189)
  store i32 0, i32* %16, align 4
  br label %191

191:                                              ; preds = %204, %176
  %192 = load i32, i32* %16, align 4
  %193 = icmp slt i32 %192, 10
  br i1 %193, label %194, label %207

194:                                              ; preds = %191
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [10 x [10 x i32]], [10 x [10 x i32]]* @localArray, i64 0, i64 %197
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [10 x i32], [10 x i32]* %198, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 noundef %195, i32 noundef %202)
  br label %204

204:                                              ; preds = %194
  %205 = load i32, i32* %16, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %16, align 4
  br label %191, !llvm.loop !11

207:                                              ; preds = %191
  ret i32 0
}

; Function Attrs: nounwind
declare void @srand(i32 noundef) #1

; Function Attrs: nounwind
declare i64 @time(i64* noundef) #1

; Function Attrs: nounwind
declare i32 @rand() #1

declare i32 @printf(i8* noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7, !10}
!10 = !{!"llvm.loop.unroll.enable"}
!11 = distinct !{!11, !7}
