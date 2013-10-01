//
//  EventModel.m
//  Cool Funnings
//
//  Created by Peter Foti on 10/1/13.
//  Copyright (c) 2013 Peter Foti. All rights reserved.
//

#import "EventModel.h"

@implementation EventModel

- (NSString *)dateFormattedFromDate:(NSDate *)date
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.timeStyle = NSDateFormatterShortStyle;
    formatter.dateStyle = NSDateFormatterShortStyle;
    formatter.doesRelativeDateFormatting = YES;
    return [formatter stringFromDate:date];
}
@end
