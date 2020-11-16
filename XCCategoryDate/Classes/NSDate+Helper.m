

//
//  NSDate+Helper.m
//
//
//  Created by 王会洲 on 16/2/19.
//  Copyright © 2016年 王会洲. All rights reserved.
//
#import "NSDate+Helper.h"

@implementation NSDate (Helper)

+ (NSDate *)dateFromString:(NSString *)string withFormat:(NSString *)formatString
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatString];
    NSDate *date = [dateFormatter dateFromString:string];
    return date;
}

+ (NSString *)stringFromDate:(NSDate *)date withFormat:(NSString *)formatString
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:formatString];
    NSString *dateStr = [dateFormatter stringFromDate:date];
    return dateStr;
}

//add by cuizl  计算某一天到达现在的天数
+(NSInteger) daysFromDate:(NSDate*)fromDate toDate:(NSDate*)toDate
{
    NSCalendar* chineseClendar = [ [ NSCalendar alloc ] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSUInteger unitFlags =NSCalendarUnitDay;
    NSDateComponents *cps = [chineseClendar components:unitFlags fromDate:fromDate toDate:toDate  options:0];
    
    return [cps day];
}


-(NSString *)stringFromDate:(NSString *)format{
    NSDateFormatter *Formatter = [[NSDateFormatter alloc] init];
    [Formatter setDateFormat:format];
    return  [Formatter stringFromDate:self];
}

+ (BOOL)isTHYesterdayWithTimeStr:(NSString *)timeStr {
    NSDate * date = [NSDate dateFromString:timeStr withFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [[NSCalendar currentCalendar] isDateInToday:date];
}

+ (BOOL)isTHToDayWithTimeStr:(NSString *)timeStr {
    NSDate * date = [NSDate dateFromString:timeStr withFormat:@"yyyy-MM-dd HH:mm:ss"];
    return [[NSCalendar currentCalendar] isDateInYesterday:date];
}
+ (NSString *)month_dayWithTimeStr:(NSString *)timeStr {
    NSDate * date = [NSDate dateFromString:timeStr withFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *result = [NSDate stringFromDate:date withFormat:@"MM-dd"];
    return result;
}
+ (NSString *)time_minutesWithTimeStr:(NSString *)timeStr {
    NSDate * date = [NSDate dateFromString:timeStr withFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *result = [NSDate stringFromDate:date withFormat:@"HH:mm"];
    return result;
}
+ (NSString *)year_month_dayWithStr:(NSString *)timeStr {
    
    NSString * time = [NSDate timeStringWithTimeInterval:([timeStr integerValue]/1000) dateFormatter:@"yyyy-MM-dd HH:mm:ss"];
    NSDate * date = [NSDate dateFromString:time withFormat:@"yyyy-MM-dd HH:mm:ss"];
     NSString *result = [NSDate stringFromDate:date withFormat:@"yyyy-MM-dd"];
     return result;
}
+ (NSString *)month_day_hours_minutesWithTimeStr:(NSString *)str {
    NSDate * myDate=[NSDate dateWithTimeIntervalSince1970:[str doubleValue]];
    //将时间转换为字符串
//    NSString *timeStr=[NSDate stringFromDate:myDate withFormat:@"YYYY-MM-dd HH:mm:ss"];
    
    NSString *result = [NSDate stringFromDate:myDate withFormat:@"MM-dd HH:mm"];
    return result;
}

@end
