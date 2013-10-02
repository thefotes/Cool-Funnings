//
//  EmuUserUtilities.m
//  Cool Funnings
//
//  Created by Peter Foti on 10/2/13.
//  Copyright (c) 2013 Peter Foti. All rights reserved.
//

#import <Parse/Parse.h>
#import "EmuUserUtilities.h"

#import "EmuUserParse.h"

@implementation EmuUserUtilities

#pragma mark - Singleton

+ (instancetype)sharedUtilities
{
    static EmuUserUtilities *sharedUtilities;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedUtilities = [[EmuUserUtilities alloc] init];
    });
    
    return sharedUtilities;
}

+ (id<EmuUser>)currentUser
{
    PFUser *currentUser = [PFUser currentUser];
    
    EmuUserParse *user = [[EmuUserParse alloc] init];
    user.parseUser = currentUser;
    
    return user;
}

- (void)signUpNewUserWithParameters:(NSDictionary *)parameters
                         completion:(UserRequestCompletionBlock)completion
{
    PFUser *user = [PFUser user];
    user.username = @"Sheldon Cooper";
    user.password = @"bazinga";
    user.email = @"sheldon@startrek.com";
    user.username = @"Sheldon Cooper";
    
    EmuUserParse *newUser = [EmuUserParse userWithPFUser:user];
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            NSLog(@"signed up");
            
            if (completion) {
                completion(YES, nil, newUser);
            }
        } else {
            NSLog(@"%@", error.localizedDescription);
            
            if (completion) {
                completion(NO, nil, newUser);
            }
        }
    }];
}

- (void)loginUserWithUsername:(NSString *)username
                     password:(NSString *)password
                   completion:(UserRequestCompletionBlock)completion
{
    [PFUser logInWithUsernameInBackground:username
                                 password:password
                                    block:^(PFUser *user, NSError *error) {
                                        if (user) {
                                            if (completion) {
                                                EmuUserParse *newUser = [EmuUserParse userWithPFUser:user];
                                                completion(YES, &error, newUser);
                                            }
                                        }
                                        if (error) {
                                            NSLog(@"Error %@", error.localizedDescription);
                                            if (completion) {
                                                completion(NO, &error, nil);
                                            }
                                        }
                                    }];
}

@end
