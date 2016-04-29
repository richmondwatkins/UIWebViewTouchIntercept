//
//  Webber.h
//  UIWebView Animation Issues
//
//  Created by Watkins, Richmond on 4/29/16.
//  Copyright © 2016 Adam Cooper. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Webber : UIWebView

@property UIView *touchedView;
-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent*)event;

@end
