//
//  HUAWEIFactory.h
//  AbstractFactoryDemo
//
//  Created by 何晓文 on 2017/5/15.
//  Copyright © 2017年 何晓文. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneFactoryStandard.h"
#import "SmartPhoneStandard.h"
@interface HUAWEIFactory : NSObject<PhoneFactoryStandard>
-(id<SmartPhoneStandard>)createHUAWEI;
@end
