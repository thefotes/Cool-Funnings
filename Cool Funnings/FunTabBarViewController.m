//
//  FunTabBarViewController.m
//  Cool Funnings
//
//  Created by Peter Foti on 10/1/13.
//  Copyright (c) 2013 Peter Foti. All rights reserved.
//

#import "FunTabBarViewController.h"
#import "SignInUpViewController.h"

@interface FunTabBarViewController ()

@end

@implementation FunTabBarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    UINavigationController *signUpInNav = [[UIStoryboard storyboardWithName:@"SignInUp" bundle:[NSBundle mainBundle]] instantiateInitialViewController];
    
    [self presentViewController:signUpInNav
                       animated:YES
                     completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
