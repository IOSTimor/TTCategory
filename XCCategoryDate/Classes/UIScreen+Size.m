//
//  UIScreen+Size.m
//  Tourguide
//
//  Created by test on 15/3/19.
//  Copyright (c) 2015年 inphase. All rights reserved.
//

#import "UIScreen+Size.h"

@implementation UIScreen (Size)

+(CGRect)screenBounds {

    return [UIScreen mainScreen].bounds;
}

+(CGFloat)screenHeight {

    return [UIScreen screenSize].height;
}

+(CGSize)screenSize {
    return [UIScreen screenBounds].size;
}

+(CGFloat)screenWidth {
    return [UIScreen screenSize].width;
}

+(BOOL)iphone4Size {

    return CGSizeEqualToSize([UIScreen mainScreen].bounds.size , CGSizeMake(320.f, 480.f));
}

+(BOOL)iphone5Size {
    return CGSizeEqualToSize([UIScreen mainScreen].bounds.size,CGSizeMake(320.f, 568.f));
}

+(BOOL)iphone6Size {

    return CGSizeEqualToSize([UIScreen mainScreen].bounds.size,CGSizeMake(375.f, 667.f));
}

+(BOOL)iphone6PlusSize{

    return CGSizeEqualToSize([UIScreen mainScreen].bounds.size,CGSizeMake(414, 736));
}



@end
