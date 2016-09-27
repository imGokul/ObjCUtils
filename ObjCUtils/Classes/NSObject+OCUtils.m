//
//  NSObject+OCUtils.m
//  Pods
//
//  Created by Gokul Krishnan on 27/09/16.
//
//

#import "NSObject+OCUtils.h"

@implementation NSObject (OCUtils)

- (BOOL)isValidResponse
{
    return (self != nil && self!= NULL && ![self isKindOfClass:[NSNull class]] && ![self isEqual:@"<null>"]) ? YES : NO;
}

- (BOOL)isString
{
    return [self isKindOfClass:[NSString class]];
}

- (BOOL)isArray
{
    return [self isKindOfClass:[NSArray class]];
}

- (BOOL)isDictionary
{
    return [self isKindOfClass:[NSDictionary class]];
}

- (BOOL)isValidString
{
    return ([self isString] && [self isValidResponse]);
}

- (BOOL)isValidArray;
{
    return ([self isArray] && [self isValidResponse]);
}

- (BOOL)isValidDictionary;
{
    return ([self isDictionary] && [self isValidResponse]);
}

@end
