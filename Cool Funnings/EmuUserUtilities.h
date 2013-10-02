//
//  EmuUserUtilities.h
//  Cool Funnings
//
//  Created by Peter Foti on 10/2/13.
//  Copyright (c) 2013 Peter Foti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EmuUser.h"

typedef void (^UserRequestCompletionBlock)(BOOL success, NSError **error, id<EmuUser> user);

@interface EmuUserUtilities : NSObject

#pragma mark - Singleton

+ (instancetype)sharedUtilities;
+ (id<EmuUser>)currentUser;

/**
 *  Signs up a new user
 *
 *  @param parameters User fields
 *  @param completion Returns success and error.
 */
- (void)signUpNewUserWithParameters:(NSDictionary *)parameters
                         completion:(UserRequestCompletionBlock)completion;

/**
 *  Logs in user.
 *
 *  @param username   username
 *  @param password   password
 *  @param completion Returns success and error.
 */
- (void)loginUserWithUsername:(NSString *)username
                     password:(NSString *)password
                   completion:(UserRequestCompletionBlock)completion;

@end
