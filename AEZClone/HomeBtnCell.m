//
//  HomeBtnCell.m
//  AEZClone
//
//  Created by Zhu Xingyin on 13-1-21.
//  Copyright (c) 2013年 Xingyin Zhu. All rights reserved.
//

#import "HomeBtnCell.h"

@implementation HomeBtnCell

@synthesize firstLabel = _firstLabel;
@synthesize secondLabel = _secondLabel;
@synthesize firstImageView = _firstImageView;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
