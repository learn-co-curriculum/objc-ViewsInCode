//
// Created by Al Tyus on 5/8/14.
// Copyright (c) 2014 al-tyus.com. All rights reserved.
//

#import "RecentsTableViewCell.h"


@implementation RecentsTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        _nameNumberLabel = [UILabel new];
        _phoneTypeLabel = [UILabel new];
        _callDateLabel = [UILabel new];

        _nameNumberLabel.font = [UIFont systemFontOfSize:18];
        _phoneTypeLabel.font = [UIFont systemFontOfSize:12];
        _callDateLabel.textColor = [UIColor lightGrayColor];

        [_nameNumberLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_phoneTypeLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_callDateLabel setTranslatesAutoresizingMaskIntoConstraints:NO];

        //[self.contentView setTranslatesAutoresizingMaskIntoConstraints:NO];
        //[self setTranslatesAutoresizingMaskIntoConstraints:NO];

        [self.contentView addSubview:_nameNumberLabel];
        [self.contentView addSubview:_phoneTypeLabel];
        [self.contentView addSubview:_callDateLabel];

        NSDictionary *views = @{@"nameNumberLabel" : _nameNumberLabel,
                @"phoneTypeLabel" : _phoneTypeLabel,
                @"callDateLabel" : _callDateLabel};

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
