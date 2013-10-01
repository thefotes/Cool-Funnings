//
//  EventModel.h
//  Cool Funnings
//
//  Created by Peter Foti on 10/1/13.
//  Copyright (c) 2013 Peter Foti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EventModel : NSObject

@property (strong, nonatomic) NSString *eventName;
@property (strong, nonatomic) NSDate *eventDate;
@property (strong, nonatomic) NSString *eventLocation;
@property (strong, nonatomic) NSArray *tags;

- (NSString *)dateFormattedFromDate:(NSDate *)date;
@end
