//
//  NSObject+OCUtils.h
//  Pods
//
//  Created by Gokul Krishnan on 27/09/16.
//
//

#import <Foundation/Foundation.h>

@interface NSObject (OCUtils)

- (BOOL)isString;
- (BOOL)isArray;
- (BOOL)isDictionary;

- (BOOL)isValidResponse;
- (BOOL)isValidString;
- (BOOL)isValidArray;
- (BOOL)isValidDictionary;

@end
