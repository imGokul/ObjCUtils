//
//  NSString+OCUtils.m
//  Pods
//
//  Created by Gokul Krishnan on 27/09/16.
//
//

#import "NSString+OCUtils.h"
#import "NSObject+OCUtils.h"

@implementation NSString (OCUtils)

- (NSDate *)dateWithFormat:(NSString *)dateFormat;
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateFormat];
    NSDate *date = [dateFormatter dateFromString:self];
    return date;
}

- (NSAttributedString *)attributedStringFromHTML{
    NSMutableAttributedString * attrStr = [[NSMutableAttributedString alloc] initWithData:[self dataUsingEncoding:NSUnicodeStringEncoding] options:@{ NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType } documentAttributes:nil error:nil];
    return attrStr;
}

- (NSString *)stringByTrimmingWhitespaceAndNewLine {
    if([self isValidString] == NO)
        return @"";
    else {
        NSCharacterSet *whitespace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
        NSString *trimmedString = [self stringByTrimmingCharactersInSet:whitespace];
        if (trimmedString.length == 0) {
            return @"";
        }
        return trimmedString;
    }
}

#pragma mark - validations
- (BOOL)isValidEmail
{
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    
    return [emailTest evaluateWithObject:self];
}

@end
