//
//  EmuUtilities.m
//  Emu
//
//  Created by Christopher Constable on 10/1/13.
//  Copyright (c) 2013 Mobiquity. All rights reserved.
//

#import <Parse/Parse.h>
#import "EmuUtilities.h"
#import "EmuUserParse.h"

#import "EmuEventParse.h"
#import "EmuVenueParse.h"
#import "EmuVoteParse.h"

@implementation EmuUtilities

+ (void)initializeEmuApp
{
    // Register Parse subclasses. This is so the Parse SDK knows
    // to create these objects for me when I do fetches.
    [EmuEventParse registerSubclass];
    [EmuVenueParse registerSubclass];
    [EmuVoteParse registerSubclass];
    
    [Parse setApplicationId:@"QnLxjipzVyeBlue4p5XnZF9ynBGXlK10C6k7XlSb"
                  clientKey:@"4Rsf8iQ6URagA1QHAYXsBTMQBFDr8oA5iacy1SSp"];
}

#pragma mark - Singleton

+ (instancetype)sharedUtilities
{
    static EmuUtilities *sharedUtilities;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedUtilities = [[EmuUtilities alloc] init];
    });
    
    return sharedUtilities;
}

#pragma mark - Emu API

- (void)requestUnscheduledEventsWithOptions:(NSDictionary *)options
                                 completion:(EventRequestCompletionBlock)completionBlock
{
    
}

- (void)createUnscheduledEvent:(id<EmuEvent>)event
                   withOptions:(NSDictionary *)options
                    completion:(RequestCompletionBlock)completionBlock
{
    
}

@end
