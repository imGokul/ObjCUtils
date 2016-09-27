//
//  NSDate+OCUtils.h
//  Pods
//
//  Created by Gokul Krishnan on 27/09/16.
//
//

#import <Foundation/Foundation.h>

@interface NSDate (OCUtils)

- (NSString *)stringWithFormat:(NSString *)dateFormat;
- (NSString*)dayString;
- (NSString*)monthString;
- (NSString*)yearString;
- (NSDate*)midnightDateTime;

#pragma mark -Validations
- (BOOL)isSameDayAs:(NSDate*)date;

@end
