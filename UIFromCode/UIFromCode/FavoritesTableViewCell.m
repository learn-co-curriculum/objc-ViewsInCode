//
//  FavoritesTableViewCell.m
//  UIFromCode
//
//  Created by Al Tyus on 5/7/14.
//  Copyright (c) 2014 al-tyus.com. All rights reserved.
//

#import "FavoritesTableViewCell.h"

@implementation FavoritesTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        _pictureImageView = [UIImageView new];
        _nameLabel = [UILabel new];
        _nameLabel.font = [UIFont systemFontOfSize:18];
        
        [_pictureImageView setTranslatesAutoresizingMaskIntoConstraints:NO];
        [_nameLabel setTranslatesAutoresizingMaskIntoConstraints:NO];
        //[self.contentView setTranslatesAutoresizingMaskIntoConstraints:NO];
        //[self setTranslatesAutoresizingMaskIntoConstraints:NO];
        
        [self.contentView addSubview:_pictureImageView];
        [self.contentView addSubview:_nameLabel];
        
        NSDictionary *views = @{@"imageView" : _pictureImageView,
                                @"nameLabel" : _nameLabel};
        
        NSString *imageVerticalConstraints = @"V:|-(10)-[imageView]-(10)-|";
        NSString *nameLabelVerticalConstraints = @"V:|[nameLabel]|";
        
        NSString *horizontalConstraints = @"H:|-(10)-[imageView(30)]-(10)-[nameLabel]";
        
        
        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:horizontalConstraints options:0 metrics:nil views:views]];
        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:imageVerticalConstraints options:0 metrics:nil views:views]];
        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:nameLabelVerticalConstraints options:0 metrics:nil views:views]];
        
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
    
    

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
