//
//  PhoneFactoryStandard.h
//  AbstractFactoryDemo
//
//  Created by 何晓文 on 2017/5/15.
//  Copyright © 2017年 何晓文. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SmartPhoneStandard.h"
//定义工厂规范
@protocol PhoneFactoryStandard <NSObject>

//- (id<SmartPhoneStandard>)createPhoneWithID:(NSNumber *)ID;

- (id<SmartPhoneStandard>)createPhone;
@end
