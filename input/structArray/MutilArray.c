#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define ITERATIONS 4000
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
int localArray[ITERATIONS][ITERATIONS];

void f() {
    for (int i = 0; i < ARRAY_SIZE; i++) {
        for (int j = 0; j < ARRAY_SIZE; j++)
        {
        localArray[i][j] = rand() % RAND_MOD + 1;
        localArray[j][i] = rand() % RAND_MOD + 1;
        hot_array[i].a = rand() % RAND_MOD + 1;
        }
    
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
    // 混合使用栈变量和全局变量
    //1
    f();
    //2
    for (int i = 0; i < ITERATIONS; i++) {
        //3
        for (int j = 0; j < ARRAY_SIZE; j++) {
            //4
            localArray[i][j] = rand() % RAND_MOD + 1;
            hot_array[j].a= rand() % RAND_MOD + 1;
        }
        //5
        /* 高频核心运算 */
        hot_data.a = (hot_data.b * 3) - (hot_data.c / 2);
        hot_data.c = (hot_data.a + hot_data.b);
        hot_data.b = (hot_data.c | 0x1);
        localArray[i][i] =localArray[i % ARRAY_SIZE][i] + (hot_data.c | 0x1);
        hot_array[1]._pad1[0] = 'a';
    }

    for (int i = 0; i < ARRAY_SIZE; i++) {
        for (int j = 0; j < ITERATIONS; j++) {
        printf("array: localArray[%d]=%d\n", i, localArray[i][j]);
        printf("hot_array = %c\n", hot_array[i]._pad1[0]);
        }

    }
    return 0;
}
