//
//  AbstractFactory.m
//  AbstractFactoryDemo
//
//  Created by 何晓文 on 2017/5/15.
//  Copyright © 2017年 何晓文. All rights reserved.
//

#import "AbstractFactory.h"
#import "XMLParser.h"
@implementation AbstractFactory
- (id<SmartPhoneStandard >)createPhoneWithID:(NSNumber *)ID{

    XMLParser *parser = [[XMLParser alloc]init];
    NSDictionary * dict = [parser parser];
    NSString *className = [dict objectForKey:ID.description];
    
    Class objName = NSClassFromString(className);
    
    return [[objName alloc]init];

}
@end
