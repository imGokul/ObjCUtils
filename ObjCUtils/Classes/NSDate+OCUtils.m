//
//  NSDate+OCUtils.m
//  Pods
//
//  Created by Gokul Krishnan on 27/09/16.
//
//

#import "NSDate+OCUtils.h"

@implementation NSDate (OCUtils)

- (NSString *)stringWithFormat:(NSString *)dateFormat
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:dateFormat];
    NSTimeZone *timezone = [NSTimeZone timeZoneWithName:@"UTC"];
    [formatter setTimeZone:timezone];
    NSString *stringFromDate = [formatter stringFromDate:self];
    return stringFromDate;
}

- (NSString*)dayString{
    NSString *day = [self stringWithFormat:@"d"];
    return day;
}

- (NSString*)monthString{
    NSString *month = [self stringWithFormat:@"MM"];
    return month;
}

- (NSString*)yearString{
    NSString *year = [self stringWithFormat:@"yyyy"];
    return year;
}

- (NSDate*)midnightDateTime{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    NSTimeZone *timezone = [NSTimeZone timeZoneWithName:@"UTC"];
    [dateFormatter setTimeZone:timezone];
    dateFormatter.dateFormat = @"dd-MMMM-yyyy";
    NSString *dateString = [dateFormatter stringFromDate:self];
    dateString = [dateString stringByAppendingString:@" 00:00:00"];
    dateFormatter.dateFormat = @"dd-MMMM-yyyy hh:mm:ss";
    NSDate* midnight = [dateFormatter dateFromString:dateString];
    return midnight;
}

#pragma mark -Validations
- (BOOL)isSameDayAs:(NSDate*)date{
    BOOL isSame = NO;
    NSCalendar *calendar = [NSCalendar autoupdatingCurrentCalendar];
    NSTimeZone *timezone = [NSTimeZone timeZoneWithName:@"UTC"];
    [calendar setTimeZone:timezone];
    NSDateComponents *date1Comp = [calendar components:( NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay ) fromDate:self];
    NSDateComponents *date2Comp = [calendar components:( NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay ) fromDate:date];
    if (date1Comp.day == date2Comp.day && date1Comp.month == date2Comp.month && date1Comp.year == date2Comp.year) {
        isSame = YES;
    }
    return isSame;
}

@end
