//
//  SmartPhoneStandard.h
//  AbstractFactoryDemo
//
//  Created by 何晓文 on 2017/5/15.
//  Copyright © 2017年 何晓文. All rights reserved.
//

#import <Foundation/Foundation.h>
//产品规范
@protocol SmartPhoneStandard <NSObject>

- (void)cpu;

- (void)mainboard;

- (void)memory;

- (void)gpu;


@end
