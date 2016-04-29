//
//  ViewController.m
//  Animation Test
//
//  Created by Adam Cooper on 4/25/16.
//  Copyright © 2016 Adam Cooper. All rights reserved.
//

#import "ViewController.h"
#import "Webber.h"
@interface ViewController () <UIWebViewDelegate>

@property (nonatomic, strong) Webber *webView;
@property (nonatomic, strong) NSLayoutConstraint *heightConstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:self.webView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tap {
    
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    
    [self.view layoutIfNeeded];
    
    self.heightConstraint.constant = 300;
    
    
    [UIView animateWithDuration:30 delay:5 options:UIViewAnimationOptionAllowUserInteraction animations:^{
        
        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        
    }];
    
    CALayer *model = self.webView.layer.modelLayer;
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 44)];
    greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:greenView];
    
    [UIView animateWithDuration:30 delay:5 options:UIViewAnimationOptionAllowUserInteraction animations:^{
        self.webView.frame = CGRectMake(0, 100, self.view.frame.size.width, 100);
        
        //        [self.view layoutIfNeeded];
    } completion:^(BOOL finished) {
        
    }];
    
}

//- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    UITouch *touch = [touches anyObject];
//    CGPoint touchLocation = [touch locationInView:self.view];
//    
//    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 8, 8)];
//    blueView.backgroundColor = [UIColor blueColor];
//    blueView.center = touchLocation;
//
//    if ([self.webView.layer.presentationLayer hitTest:touchLocation]) {
//        blueView.backgroundColor = [UIColor purpleColor];
//
//        NSLog(@"WOOO");
//        [self.webView hitTest:touchLocation withEvent:event];
//    }
//    
//    [self.view addSubview:blueView];
//}

-(UIWebView *)webView
{
    if (!_webView)
    {
        _webView = [[Webber alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height - 100, self.view.frame.size.width, 100)];
        _webView.translatesAutoresizingMaskIntoConstraints = NO;
        _webView.backgroundColor = [UIColor yellowColor];
        
        NSURL *url = [NSURL URLWithString:@"http://www.google.com"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        [_webView loadRequest:request];
    }
    return _webView;
}

-(NSLayoutConstraint *)heightConstraint
{
    if (!_heightConstraint)
    {
        _heightConstraint = [NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeBottom relatedBy:NSLayoutRelationEqual toItem:self.webView attribute:NSLayoutAttributeBottom multiplier:1 constant:0];
    }
    return _heightConstraint;
}


-(void)setupConstraints
{
    
    //webView Bar View Constraints
    //    [self.view addConstraint:self.heightConstraint];
    //    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.webView attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1 constant:0]];
    //    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.view attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.webView attribute:NSLayoutAttributeTrailing multiplier:1 constant:0]];
    //    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.webView attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:88]];
    
}



@end
