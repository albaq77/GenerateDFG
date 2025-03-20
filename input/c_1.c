#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define ITERATIONS 40000
#define RAND_MOD 100

/* 高频访问的核心变量（通过内存填充分散） */
struct {
    int a;          // 核心变量1
    char _pad1[64]; // 缓存行填充
    int b;          // 核心变量2
    char _pad2[64];
    int c;          // 核心变量3
} hot_data;

/* 中等频率的辅助变量 */
struct {
    int x, y, z;
} mid_vars;

/* 多个低频随机变量 */
int var1, var2, var3, var4, var5, var6, var7;



int main() {
    srand(time(NULL));
    hot_data.a = rand() % RAND_MOD;
    hot_data.b = rand() % RAND_MOD;
    hot_data.c = rand() % RAND_MOD;
    mid_vars.x = rand() % RAND_MOD;
    mid_vars.y = rand() % RAND_MOD;
    var1 = rand() % RAND_MOD;
    var2 = rand() % RAND_MOD;
    var3 = rand() % RAND_MOD;

    // 混合使用栈变量和全局变量
    int local1 = rand() % RAND_MOD;
    int local2 = rand() % RAND_MOD;
    
    for (int i = 0; i < ITERATIONS; i++) {
        /* 高频核心运算 */
        hot_data.a = (hot_data.b * 3) - (hot_data.c / 2);
        hot_data.c = (hot_data.a + hot_data.b) % RAND_MOD;
        hot_data.b = (hot_data.c | 0x1) + local1;

        /* 中等频率运算 */
        if (i % 100 == 0) {
            mid_vars.z = (mid_vars.x + mid_vars.y) * local2;
            mid_vars.x = (mid_vars.z >> 1) + hot_data.a;
            local2 = (local1 + rand() % 5) % RAND_MOD;
        }

        /* 低频访问 */
        if (i % 1000 == 0) {
            var4 = (var1 + var2) * var3;
            var5 = (var6 ^ var7) + mid_vars.y;
            var1 = (var5 % 10) + rand() % 5;
        }
    }

    printf("核心变量：\na=%d\nb=%d\nc=%d\n", 
           hot_data.a, hot_data.b, hot_data.c);
    printf("中间变量：x=%d y=%d z=%d\n", 
           mid_vars.x, mid_vars.y, mid_vars.z);
    printf("其他变量：var4=%d var5=%d\n", var4, var5);
    return 0;
}
