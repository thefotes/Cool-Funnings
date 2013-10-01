//
//  SignInUpViewController.m
//  Cool Funnings
//
//  Created by Peter Foti on 10/1/13.
//  Copyright (c) 2013 Peter Foti. All rights reserved.
//

#import "SignInUpViewController.h"

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
    self.homeImageView.image = [UIImage imageNamed:@"funnings.jpg"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
