//
//  FeedCell.h
//  Cool Funnings
//
//  Created by Peter Foti on 10/1/13.
//  Copyright (c) 2013 Peter Foti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *eventName;
@property (weak, nonatomic) IBOutlet UILabel *eventDateTime;
@property (weak, nonatomic) IBOutlet UILabel *eventLocation;
@property (weak, nonatomic) IBOutlet UILabel *eventUpVotes;
@property (weak, nonatomic) IBOutlet UILabel *eventTags;

@end
