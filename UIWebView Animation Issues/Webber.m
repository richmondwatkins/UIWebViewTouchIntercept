//
//  Webber.m
//  UIWebView Animation Issues
//
//  Created by Watkins, Richmond on 4/29/16.
//  Copyright © 2016 Adam Cooper. All rights reserved.
//

#import "Webber.h"

@interface Webber()


@end

@implementation Webber

-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent*)event {
    self.touchedView = [super hitTest:point withEvent:event];
    
    return self;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"HITHIT");
    [self.touchedView touchesBegan:touches  withEvent:event];
}

@end
