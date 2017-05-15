//
//  XMLParser.m
//  SimpleFactoryDemo
//
//  Created by 何晓文 on 2017/5/15.
//  Copyright © 2017年 何晓文. All rights reserved.
//

#import "XMLParser.h"
@interface XMLParser()<NSXMLParserDelegate>

@property (nonatomic, strong) NSMutableDictionary *dict;

@property (nonatomic, copy) NSString *currentElement;

@end
@implementation XMLParser
- (instancetype)init
{
    self = [super init];
    if (self) {
        _dict = [[NSMutableDictionary alloc]init];
    }
    return self;
}
- (NSMutableDictionary *)parser{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Config" ofType:@"xml"];
    NSURL *url = [NSURL fileURLWithPath:path];
    
    NSXMLParser *parser = [[NSXMLParser alloc]initWithContentsOfURL:url];
    
    parser.delegate = self;
    [parser parse];
    
    return _dict;
}
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict{
    
    _currentElement = elementName;
    if ([elementName isEqualToString:@"phone"]) {
        NSString *key = [attributeDict objectForKey:@"id"];
        NSString *className = [attributeDict objectForKey:@"className"];
        [_dict setObject:className forKey:key];
    }

}
@end
