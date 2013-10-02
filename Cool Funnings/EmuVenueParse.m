//
//  EmuVenueParse.m
//  Emu
//
//  Created by Christopher Constable on 10/2/13.
//  Copyright (c) 2013 Mobiquity. All rights reserved.
//

#import "EmuVenueParse.h"

@implementation EmuVenueParse

@dynamic name;
@dynamic foursquareId;
@dynamic phoneNumber;
@dynamic email;
@dynamic websiteUrl;
@dynamic location;
@dynamic totalTimesVisited;

+ (NSString *)parseClassName
{
    return @"Venue";
}

@end
