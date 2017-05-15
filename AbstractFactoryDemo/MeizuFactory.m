//
//  MeizuFactory.m
//  AbstractFactoryDemo
//
//  Created by 何晓文 on 2017/5/15.
//  Copyright © 2017年 何晓文. All rights reserved.
//

#import "MeizuFactory.h"
#import "MeizuPhone.h"
@implementation MeizuFactory

-(id<SmartPhoneStandard>)createPhone{

    id<SmartPhoneStandard> meizu = [[MeizuPhone alloc]init];
    
    return meizu;
}
@end
