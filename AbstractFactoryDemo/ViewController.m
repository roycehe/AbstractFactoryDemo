//
//  ViewController.m
//  AbstractFactoryDemo
//
//  Created by 何晓文 on 2017/5/15.
//  Copyright © 2017年 何晓文. All rights reserved.
//

#import "ViewController.h"
#import "AbstractFactory.h"
#import "HUAWEIFactory.h"
#import "MeizuFactory.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /**方案一(一个工厂多条生产线)
     *客户端不需要关心具体的产品,指定产品
      产品和工厂遵循相应的规范
      根据需求动态创建
     */
    
//    id<PhoneFactoryStandard> factory = [[AbstractFactory alloc]init];
//    
//    id<SmartPhoneStandard>  HUAWEI = [factory createPhoneWithID:@2];
//    [HUAWEI cpu];
//    [HUAWEI gpu];
//    [HUAWEI mainboard];
//    [HUAWEI memory];
    
    /**方案二(多个工厂单一生产线)
     *客户端不需要关心具体的产品,指定工厂
     产品和工厂遵循相应的规范
     */
    id<PhoneFactoryStandard> mzFactory = [[MeizuFactory alloc]init];
    id<SmartPhoneStandard> meizu = [mzFactory createPhone];
    [meizu cpu];
    [meizu gpu];
    [meizu mainboard];
    [meizu memory];
    
}


@end
