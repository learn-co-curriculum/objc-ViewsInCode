//
//  VoicemailTableViewCell.m
//  UIFromCode
//
//  Created by Al Tyus on 5/8/14.
//  Copyright (c) 2014 al-tyus.com. All rights reserved.
//

#import "VoicemailTableViewCell.h"

@implementation VoicemailTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code

        _nameLabel = [UILabel new];
        _phoneTypeLabel = [UILabel new];
        _dateLabel = [UILabel new];
        _durationLabel = [UILabel new];

        [_nameLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_phoneTypeLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_dateLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_durationLabel setTranslatesAutoresizingMaskIntoConstraints:NO];

        [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_phoneTypeLabel];
        [self.contentView addSubview:_dateLabel];
        [self.contentView addSubview:_durationLabel];


        NSDictionary *views = @{@"nameLabel" : _nameLabel,
                @"phoneTypeLabel" : _phoneTypeLabel,
                @"dateLabel" : _dateLabel,
                @"durationLabel": _durationLabel};

        NSString *verticalConstraints = @"V:|-(>=5)-[nameNumberLabel]-(>=1)-[phoneTypeLabel]-(>=5)-|";
        //NSString *nameLabelVerticalConstraints = @"V:|[nameLabel]|";
        NSString *dateLabelVerticalConstraints = @"V:|[callDateLabel]|";

        NSString *horizontalConstraints = @"H:|-(25)-[nameNumberLabel]-(>=10)-[callDateLabel]|";
        NSString *horizontalCallPhoneTypeLabelConstraints = @"H:|-(25)-[phoneTypeLabel]";



        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:horizontalConstraints options:0 metrics:nil views:views]];
        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:verticalConstraints options:0 metrics:nil views:views]];
        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:horizontalCallPhoneTypeLabelConstraints options:0 metrics:nil views:views]];
        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:dateLabelVerticalConstraints options:0 metrics:nil views:views]];
        //[self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:nameLabelVerticalConstraints options:0 metrics:nil views:views]];
        self.accessoryType = UITableViewCellAccessoryDetailButton;
    }
    return self;
}


@end
