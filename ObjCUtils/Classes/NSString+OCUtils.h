//
//  NSString+OCUtils.h
//  Pods
//
//  Created by Gokul Krishnan on 27/09/16.
//
//

#import <Foundation/Foundation.h>

@interface NSString (OCUtils)

- (NSDate *)dateWithFormat:(NSString *)dateFormat;
- (NSAttributedString *)attributedStringFromHTML;
- (NSString *)stringByTrimmingWhitespaceAndNewLine;

#pragma mark -Validations
- (BOOL)isValidEmail;

@end
