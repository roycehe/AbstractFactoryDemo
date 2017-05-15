//
//  HUAWEIFactory.m
//  AbstractFactoryDemo
//
//  Created by 何晓文 on 2017/5/15.
//  Copyright © 2017年 何晓文. All rights reserved.
//

#import "HUAWEIFactory.h"
#import "HUAWEIPhone.h"
@implementation HUAWEIFactory
-(id<SmartPhoneStandard>)createPhone{
    
    id<SmartPhoneStandard> hw = [[HUAWEIPhone alloc]init];
    
    return hw;
}
@end
