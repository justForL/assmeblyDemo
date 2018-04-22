//
//  main.m
//  汇编(二)
//
//  Created by 冷健 on 2018/4/21.
//  Copyright © 2018年 冷健. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

void A();
void JumpFunc();
int Sum(int a, int b);
int ManyPropertySumFunction(int a, int b, int c, int d, int e, int f, int g, int h, int i);

#pragma mark - 俩寄存器值交换
void test1() {
        A();
}
#pragma mark - 函数的循环调用
void test2() {
    printf("A");
    JumpFunc();
    printf("B");
}
#pragma mark - 两参数求和
void test3() {
    printf("%d",Sum(30,20));
}

#pragma mark - 多个参数求和
void test4() {
    int sum = ManyPropertySumFunction(1, 2, 3, 4, 5, 6, 7, 8, 9);
    printf("%d",sum);
}
int main(int argc, char * argv[]) {
//    test1();
//    test2();
//    test3();
    test4();
    
    

    return 0;
}
