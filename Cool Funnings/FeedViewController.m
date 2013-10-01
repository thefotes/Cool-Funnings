//
//  FeedViewController.m
//  Cool Funnings
//
//  Created by Peter Foti on 10/1/13.
//  Copyright (c) 2013 Peter Foti. All rights reserved.
//

#import "FeedViewController.h"
#import "FeedCell.h"
 
@interface FeedViewController ()
@property (strong, nonatomic) NSMutableArray *eventItems;
@end

@implementation FeedViewController

#pragma Init and Load

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
    self.title = @"All the feed items";
}

#pragma Instance Variables

- (NSMutableArray *)eventItems
{
    if (!_eventItems) {
        _eventItems = [[NSMutableArray alloc] init];
    }
    return _eventItems;
}

#pragma Table View Delegate and Data Source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.eventItems.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FeedCell *feedCell = [tableView dequeueReusableCellWithIdentifier:@"feedCell"];
    
    
    return feedCell;
}
@end
