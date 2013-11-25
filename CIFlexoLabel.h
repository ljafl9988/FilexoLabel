//
//  CIFlexoLabel.h
//  yueyoupimobile
//
//  Created by user on 13-11-22.
//  Copyright (c) 2013年 yesudoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CIFlexoLabel : UILabel
{
    NSMutableAttributedString *attributedString;
}
@property (nonatomic,retain)NSMutableAttributedString *attString;
//是否响应点击事件
@property (nonatomic,assign)BOOL InteractionEnabled;

//设置某段字体的颜色
-(void)setColor:(UIColor *)color fromIndex:(NSInteger)location length:(NSInteger)length;
//设置某段字体的字体
-(void)setFont:(UIFont *)font fromIndex:(NSInteger)location length:(NSInteger)length;

//字体颜色混合使用
-(void)setFont:(UIFont *)font andColor:(UIColor *)color fromIndex:(NSInteger)location length:(NSInteger)length;

//-点击事件

@end
