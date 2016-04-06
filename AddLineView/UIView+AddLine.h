//
//  UIView+AddLine.h
//  AddLineView
//
//  Created by DYF on 16/3/25.
//  Copyright © 2016年 Dyf. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    DirectionTop = 0,
    DirectionLeft,
    DirectionBottom,
    DirectionRight
} Direction;


@interface UIView (AddLine)

/**
 *  增加一条线
 *
 *  @param direct 方向
 *  @param color  颜色
 *  @param coarse 线粗
 */
- (void)addLineWithDirection:(Direction)direct andColor:(UIColor *)color andCoarse:(NSInteger)coarse;
/**
 *  计算字符串的高度
 *  记得要给UILabel的 numberofLine 设置成 0
 *  @param string   要计算的字符串
 *  @param fontsize 字体大小
 *  @param width    宽
 *
 *  @return 计算后的高度
 */
-(CGFloat)heightForRow:(NSString *)string font:(CGFloat)fontsize width:(CGFloat)width;
/**
 *  设置阴影
 *
 *  @param color  阴影颜色
 *  @param offset 偏移量
 *  @param radius 角度
 */
- (void)setLayerShadow:(nullable UIColor*)color offset:(CGSize)offset radius:(CGFloat)radius;

- (void)removeAllSubviews;

@property (nullable, nonatomic, readonly) UIViewController *viewController;
@property (nonatomic, readonly) CGFloat visibleAlpha;

@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat right;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;
@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;
@property (nonatomic) CGPoint origin;
@property (nonatomic) CGSize  size;
@end
