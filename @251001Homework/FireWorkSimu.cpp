/*
20251008 15:30
还没来得及写，或者说还不太写得出来
讲讲构思
先通过随机数生成不同烟花类型、释放高度
用二维数组记录烟花的位置
间隔一定时间对每一个烟花对象进行操作，降落、到合适位置爆炸
想到了之前C++写的一些程序，可以通过控制台system("clear")的方式刷新用来实现动画
每轮过完对控制台窗口进行刷新，实现动画效果

20251008 18：59
大致功能可以了
效果一般但是是想象中的那样，控制台好像不能放🧨🐦‍🔥🎆🎇这些emoji，SwiftUI遥遥领先😏
待实现功能：
1:输入烟花数量
2:爆炸，动画，周边一圈字符变化
3:可以监测键盘，比如按下空格键自动爆炸最下方的、按下a添加烟花数量等
*/

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int N = 5;
int map[10][20];
char sym[]="@#$*%";

void FireDown(){
    for (int j=0;j<20;j++){
        for (int i=9;i>0;i--){
            map[i][j]=map[i-1][j];
        }
        map[0][j]=0;
    }
}

void outp(){
    for (int i=0;i<10;i++){
        for (int j=0;j<20;j++){
            printf("%c",sym[map[i][j]]);
        }
        printf("\n");
    }
    printf("FireWorks Remaining:%d\n",N);
}

void gene(){
    int tp = rand()%4+1;
    int loc_y = rand()%20;
    map[0][loc_y] = tp;
}

void flash(){
    outp();
    system("sleep 1");
    system("clear");
    FireDown();
}

int main(){
    srand(time(NULL));
    system("clear");

    for (int i=0;i<10;i++){
        for (int j=0;j<20;j++){
            map[i][j]=0;
        }
    }
    while (1){
        if (N>0 && rand()%4==0){
            gene();
            N-=1;
        }
        flash();
    }
    return 0;
}