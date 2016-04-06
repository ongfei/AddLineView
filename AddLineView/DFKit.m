//
//  DFKit.m
//  AddLineView
//
//  Created by DYF on 16/3/28.
//  Copyright © 2016年 Dyf. All rights reserved.
//

#import "DFKit.h"

@implementation DFKit

/**
 *  增加一条线
 */
+ (void)addLineWithUI:(UIView *)UIv andDirection:(Direction)direct andColor:(UIColor *)color andCoarse:(NSInteger)coarse {
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = color;
    switch (direct) {
        case DirectionTop:
            view.frame = CGRectMake(0, 0, UIv.frame.size.width, coarse);
            break;
        case DirectionLeft:
            view.frame = CGRectMake(0, 0, coarse , UIv.frame.size.height);
            break;
        case DirectionBottom:
            view.frame = CGRectMake(0, UIv.frame.size.height - coarse, UIv.frame.size.width, coarse);
            break;
        case DirectionRight:
            view.frame = CGRectMake(UIv.frame.size.width - coarse, 0, coarse, UIv.frame.size.height);
            break;
            
        default:
            break;
    }
    [UIv addSubview:view];
}
//  计算字符串的高度
+(CGFloat)heightForRow:(NSString *)string font:(CGFloat)fontsize width:(CGFloat)width {
    CGSize size = CGSizeMake(width, 1000);
    CGRect rect = [string boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontsize] } context:nil];
    return rect.size.height;
}
//  增加一个AlertView
+ (void)addAlerViewWithDelegateController:(UIViewController *)controller andTitle:(NSString *)title andMessage:(NSString *)message andBtn:(NSString *)btn,...{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:message delegate:controller cancelButtonTitle:nil otherButtonTitles:btn, nil];
    va_list argList;
    if (btn) {
        va_start(argList, btn);
        id arg = va_arg(argList, id);
        while (arg) {
            [alert addButtonWithTitle:arg];
            arg = va_arg(argList, id);
        }
        va_end(argList);
    }

    [alert show];
}
+ (void)addAlertControllerWithController:(UIViewController *)controller andTitle:(NSString *)title andMessage:(NSString *)message  andAlertStyle:(UIAlertControllerStyle)style andAction:(NSString *)action,...{
    
    
    
    va_list argList;
    if (action) {
        va_start(argList, action);
        
        id arg = va_arg(argList, id);
        while (arg) {
            
            
            arg = va_arg(argList, id);
            
        }
        va_end(argList);
    }

}
@end
