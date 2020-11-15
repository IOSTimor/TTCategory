//
//  UIScreen+Size.h
//  Tourguide
//
//  Created by test on 15/3/19.
//  Copyright (c) 2015年 inphase. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (Size)

+(CGSize) screenSize;
+(CGFloat) screenWidth;
+(CGFloat) screenHeight;
+(CGRect) screenBounds;

+(BOOL) iphone4Size;
+(BOOL) iphone5Size;
+(BOOL) iphone6Size;
+(BOOL) iphone6PlusSize;

@end
