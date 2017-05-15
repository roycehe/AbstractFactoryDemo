//
//  HUAWEIPhone.m
//  AbstractFactoryDemo
//
//  Created by 何晓文 on 2017/5/15.
//  Copyright © 2017年 何晓文. All rights reserved.
//

#import "HUAWEIPhone.h"

@implementation HUAWEIPhone
- (void)cpu{
    NSLog(@"cpu:Kirin");
    
}

- (void)gpu{
    
    NSLog(@"gpu:adreno");
}

-(void)mainboard{
    
    NSLog(@"mainboard:HUAWEI");
}

- (void)memory{
    
    NSLog(@"memory:HUAWEI");
}
@end
