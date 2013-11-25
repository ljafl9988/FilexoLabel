//
//  CIFlexoLabel.m
//  yueyoupimobile
//
//  Created by user on 13-11-22.
//  Copyright (c) 2013年 yesudoo. All rights reserved.
//

#import "CIFlexoLabel.h"

@implementation CIFlexoLabel
@synthesize attString;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    NSLog(@"drawRect!");
    CATextLayer *textLayer = [CATextLayer layer];
    textLayer.string = attString;
    textLayer.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    [self.layer addSublayer:textLayer];
    
}

-(void)setText:(NSString *)text
{
    [super setText:text];
    if (text == nil) {
        self.attString = nil;
    } else {
        self.attString = [[NSMutableAttributedString alloc] initWithString:text];
    }
}

// 设置某段字的颜色
-(void)setColor:(UIColor *)color fromIndex:(NSInteger)location length:(NSInteger)length
{
    if (location < 0||location>self.text.length-1||length+location>self.text.length) {
        return;
    }
    [attString addAttribute:(NSString *)kCTForegroundColorAttributeName
                      value:(id)color.CGColor
                      range:NSMakeRange(location, length)];
}
//设置字体
-(void)setFont:(UIFont *)font fromIndex:(NSInteger)location length:(NSInteger)length
{
    if (location < 0||location>self.text.length-1||length+location>self.text.length) {
        return;
    }
    [attString addAttribute:(NSString *)kCTFontAttributeName value:(id)CFBridgingRelease(CTFontCreateWithName((CFStringRef)font.fontName, font.pointSize, NULL)) range:NSMakeRange(location, length)];
}
//字体颜色一起
-(void)setFont:(UIFont *)font andColor:(UIColor *)color fromIndex:(NSInteger)location length:(NSInteger)length
{
    [self setFont:font fromIndex:location length:length];
    [self setColor:color fromIndex:location length:length];
}
//点击事件
-(void)click
{
    if (self.InteractionEnabled == YES) {
        self.userInteractionEnabled = YES;
        NSLog(@"˜˜˜");
    }
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    
}
-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesMoved:touches withEvent:event];
}
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesEnded:touches withEvent:event];
    
    
}
@end



