//
//  MeizuPhone.m
//  AbstractFactoryDemo
//
//  Created by 何晓文 on 2017/5/15.
//  Copyright © 2017年 何晓文. All rights reserved.
//

#import "MeizuPhone.h"

@implementation MeizuPhone
- (void)cpu{
    NSLog(@"cpu:MTK");

}

- (void)gpu{

    NSLog(@"gpu:helixo");
}

-(void)mainboard{

    NSLog(@"mainboard:Meizu");
}

- (void)memory{

    NSLog(@"memory:Meizu");
}

@end
