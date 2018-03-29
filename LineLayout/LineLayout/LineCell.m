//
//  LineCell.m
//  LineLayout
//
//  Created by 天浩 on 18/1/3.
//  Copyright © 2018年 天浩. All rights reserved.
//

#import "LineCell.h"

@interface LineCell ()

@property(nonatomic,strong)UILabel *cellLabel;

@end

@implementation LineCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.cellLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        self.cellLabel.textColor = [UIColor blackColor];
        self.cellLabel.textAlignment = NSTextAlignmentCenter;
        self.cellLabel.font = [UIFont systemFontOfSize:50.0];
        self.cellLabel.backgroundColor = [UIColor grayColor];
        [self.contentView addSubview:self.cellLabel];
        
    }
    return self;
}

- (void)updateCellIndex:(NSIndexPath *)indexPath{
    self.cellLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
}

@end
