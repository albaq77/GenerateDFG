#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define ITERATIONS 40000
#define RAND_MOD 100
#define ARRAY_SIZE 10


typedef struct {
	int a;          
	char _pad1[64]; 
	int b;          
	char _pad2[64];
	int c;          
} HotData;

HotData hot_array[ARRAY_SIZE];

HotData hot_data;

int localArray[ARRAY_SIZE][ARRAY_SIZE];

static struct {
	int x;
	char _pad1[32];
	int y;
	char _pad2[32];
	int z;
} mid_vars;

int var1, var2, var3, var4, var5, var6, var7;

void f() {
    for (int i = 0; i < ARRAY_SIZE; i++) {
        localArray[i][i] = rand() % RAND_MOD + 1;
        hot_array[i].a = rand() % RAND_MOD + 1;
    }
}

int main() {

	//0
    srand(time(NULL));
    hot_data.a = rand() % RAND_MOD;
    hot_data.b = rand() % RAND_MOD;
    hot_data.c = rand() % RAND_MOD;
    hot_data._pad1[0] = 'b';
    hot_array[1]._pad1[0] = 'a';
    mid_vars.x = rand() % RAND_MOD;
    mid_vars.y = rand() % RAND_MOD;
    var1 = rand() % RAND_MOD;
    var2 = rand() % RAND_MOD;
    var3 = rand() % RAND_MOD;

    // 混合使用栈变量和全局变量
    int local1 = rand() % RAND_MOD;
    int local2 = rand() % RAND_MOD;
    int local3 = 0;
    //1
    f();
    //2
    for (int i = 0; i < ITERATIONS; i++) {
        //3
        for (int j = 0; j < ARRAY_SIZE; j++) {
            //4
            localArray[j][j] = rand() % RAND_MOD + 1;
            hot_array[j].a= rand() % RAND_MOD + 1;
            hot_array[j]._pad1[0] = 'a';
        }
        //5
        /* 高频核心运算 */
        hot_data.a = (hot_data.b * 3) - (hot_data.c / 2);
        hot_data.c = (hot_data.a + hot_data.b) % RAND_MOD;
        hot_data.b = (hot_data.c | 0x1) + local1;
        localArray[i % ARRAY_SIZE][rand() % ARRAY_SIZE] =localArray[i % ARRAY_SIZE][i % ARRAY_SIZE] + (hot_data.c | 0x1) + local1;
        hot_array[1]._pad1[0] = 'a';
        /* 中等频率运算 */
        if (i % 100 == 0) { //7
            //6
            mid_vars.z = (mid_vars.x + mid_vars.y) * local2;
            mid_vars.x = (mid_vars.z >> 1) + hot_data.a;
            local2 = (local1 + rand() % 5) % RAND_MOD;
            localArray[i % ARRAY_SIZE][i % ARRAY_SIZE] = localArray[i % ARRAY_SIZE][i % ARRAY_SIZE] + (mid_vars.z >> 1) + hot_data.a;
            hot_data.a = localArray[0][i % ARRAY_SIZE];
        }

        /* 低频访问 */
        if (i % 1000 == 0) { //9
            //8
            var4 = (var1 + var2) * var3;
            var5 = (var6 ^ var7) + mid_vars.y;
            var1 = (var5 % 10) + rand() % 5;
            for (int i = 0; i < ARRAY_SIZE; i++) {
                localArray[i][(i + 1) % ARRAY_SIZE] += rand() % RAND_MOD +  hot_data.a; 
            }
        }
    }

    //10
    printf("核心变量：\na=%d\nb=%d\nc=%d\n", 
           hot_data.a, hot_data.b, hot_data.c);
    printf("中间变量：x=%d y=%d z=%d\n", 
           mid_vars.x, mid_vars.y, mid_vars.z);
    printf("其他变量：var4=%d var5=%d\n", var4, var5);
    for (int i = 0; i < ARRAY_SIZE; i++) {
        printf("array: localArray[%d]=%d\n", i, localArray[i][i]);
        printf("hot_array = %c\n", hot_array[i]._pad1[0]);
        printf("hot_data = %c\n", hot_data._pad1[0]);
    }
    return 0;
}
