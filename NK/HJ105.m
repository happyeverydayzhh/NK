//
//  HJ105.m
//  NK
//
//  Created by 张欢 on 2021/6/2.
//

#import "HJ105.h"

@implementation HJ105

- (void)pingjunshuOC {
    int num;
    int cnt1 = 0; //非负数个数
    int cnt2 = 0; //负数个数
    double sum = 0; //非负数和
    double jun = 0; //非负数平均数
    
    while (scanf("%d", &num) != EOF) {
        if (num < 0) {
            cnt2 ++;
        } else {
            cnt1 ++;
            sum += num;
            jun = sum/cnt1;
        }
    }
    printf("%d\n", cnt2);
    printf("%.1f\n", jun);
}

@end
