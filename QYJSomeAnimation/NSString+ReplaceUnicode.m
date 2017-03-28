//
//  NSString+ReplaceUnicode.m
//  QYJSomeAnimation
//
//  Created by Avalanching on 2017/3/28.
//  Copyright © 2017年 Avalanching. All rights reserved.
//

#import "NSString+ReplaceUnicode.h"

@implementation NSString (ReplaceUnicode)

+ (NSString *)replaceUnicode:(NSString *)unicodeStr {
    
    
    NSInteger unicode = [unicodeStr integerValue];
    
    
    
    
    
    
    NSString *tempStr1 = [unicodeStr stringByReplacingOccurrencesOfString:@"\\u"withString:@"\\U"];
    NSString *tempStr2 = [tempStr1 stringByReplacingOccurrencesOfString:@"\""withString:@"\\\""];
    NSString *tempStr3 = [[@"\""stringByAppendingString:tempStr2] stringByAppendingString:@"\""];
    NSData *tempData = [tempStr3 dataUsingEncoding:NSUTF8StringEncoding];
    NSString* returnStr = [NSPropertyListSerialization propertyListFromData:tempData
                                                           mutabilityOption:NSPropertyListImmutable
                                                                     format:NULL
                                                           errorDescription:NULL];
    return [returnStr stringByReplacingOccurrencesOfString:@"\\r\\n"withString:@"\n"];
}

@end
