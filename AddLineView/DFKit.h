//
//  DFKit.h
//  AddLineView
//
//  Created by DYF on 16/3/28.
//  Copyright © 2016年 Dyf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    DirectionTop = 0,
    DirectionLeft,
    DirectionBottom,
    DirectionRight
} Direction;

@interface DFKit : NSObject

/**
 *  增加一条线
 *
 *  @param ui 要加到的控件
 *  @param direct 方向
 *  @param color  颜色
 *  @param coarse 线粗
 */
+ (void)addLineWithUI:(UIView *)UIv andDirection:(Direction)direct andColor:(UIColor *)color andCoarse:(NSInteger)coarse;
/**
 *  计算字符串的高度
 *  记得要给UILabel的 numberofLine 设置成 0
 *  @param string   要计算的字符串
 *  @param fontsize 字体大小
 *  @param width    宽
 *
 *  @return 计算后的高度
 */
+(CGFloat)heightForRow:(NSString *)string font:(CGFloat)fontsize width:(CGFloat)width;
/**
 *  添加警告提示框 参数btn 请以 nil 结束 否则会崩溃
 *
 *  @param controller 接受代理的Controller
 *  @param title      title
 *  @param message    message
 *  @param btn        按钮
 */
+ (void)addAlerViewWithDelegateController:(UIViewController *)controller andTitle:(NSString *)title andMessage:(NSString *)message andBtn:(NSString *)btn,...;

+ (void)addAlertControllerWithController:(UIViewController *)controller andTitle:(NSString *)title andMessage:(NSString *)message  andAlertStyle:(UIAlertControllerStyle)style andAction:(NSString *)action,...;
@end
