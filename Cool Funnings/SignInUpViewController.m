//
//  SignInUpViewController.m
//  Cool Funnings
//
//  Created by Peter Foti on 10/1/13.
//  Copyright (c) 2013 Peter Foti. All rights reserved.
//

#import "SignInUpViewController.h"
#import "SignUpViewController.h"
#import <Parse/Parse.h>


@interface SignInUpViewController ()


@end

@implementation SignInUpViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.navigationController.navigationBarHidden = YES;
    self.homeImageView.image = [UIImage imageNamed:@"funnings.jpg"];
    self.homeImageView.layer.cornerRadius = self.homeImageView.frame.size.width / 1.2;
    self.homeImageView.clipsToBounds = YES;
    self.homeImageView.layer.borderColor = [[UIColor blackColor] CGColor];
    self.homeImageView.layer.borderWidth = 0.4;

    [self registerForNotifications];

}


- (void)registerForNotifications
{
    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardWillShowNotification
                                                      object:nil
                                                       queue:[NSOperationQueue mainQueue]
                                                  usingBlock:^(NSNotification *note) {
                                                      id keyboardData = [[note userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey];
                                                      CGSize keyboardSize = [keyboardData CGRectValue].size;
                                                      [UIView animateWithDuration:0.5
                                                                       animations:^{
                                                                           CGRect newFrame = self.view.frame;
                                                                           newFrame.origin.y -= keyboardSize.height;
                                                                           self.view.frame = newFrame;
                                                                       }];
                                                  }];
    
    [[NSNotificationCenter defaultCenter] addObserverForName:UIKeyboardWillHideNotification
                                                      object:nil
                                                       queue:[NSOperationQueue mainQueue]
                                                  usingBlock:^(NSNotification *note) {
                                                      id keyboardData = [[note userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey];
                                                      CGSize keyboardSize = [keyboardData CGRectValue].size;
                                                      [UIView animateWithDuration:0.5
                                                                       animations:^{
                                                                           CGRect newFrame = self.view.frame;
                                                                           newFrame.origin.y += keyboardSize.height;
                                                                           self.view.frame = newFrame;
                                                                       }];
                                                  }];
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)makeItHappenCaptain:(id)sender {

    PFUser *user = [PFUser user];
    user.username = @"Peter";
    user.password = @"bazinga";
    user.email = @"peter@coolfunnings.com";
    
    [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
        if (!error) {
            // Hooray! Let them use the app now.
        } else {
            NSLog(@"%@", error.localizedDescription);
            // Show the errorString somewhere and let the user try again.
        }
    }];
//    [PFUser logInWithUsernameInBackground:self.userName.text
//                                 password:self.password.text
//                                    block:^(PFUser *user, NSError *error) {
//                                        if (error) {
//                                            NSLog(@"%@", error.localizedDescription);
//                                        }
//                                    }];
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"famous" ofType:@"mp3"];
    self.audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:filePath] error:nil];
    [self.audioPlayer play];
    
    //[self performSegueWithIdentifier:@"SignUp" sender:self];
}
@end
