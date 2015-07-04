//
//  SMWebViewController.m
//  SMPagerTab
//
//  Created by ming on 15/7/4.
//  Copyright (c) 2015年 starming. All rights reserved.
//

#import "SMWebViewController.h"

@interface SMWebViewController ()
@property (nonatomic, strong) UIWebView* webView;
@end

@implementation SMWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - setter/getter
- (void)setWebUrlString:(NSString *)webUrlString {
    NSURLRequest* webReq = [[NSURLRequest alloc]initWithURL:[NSURL URLWithString:webUrlString]];
    [self.webView loadRequest:webReq];
}

- (UIWebView *)webView {
    if (!_webView) {
        self.webView = [[UIWebView alloc] initWithFrame:self.view.frame];
        _webView.scalesPageToFit = YES;
        _webView.scrollView.directionalLockEnabled = YES;
        _webView.scrollView.showsHorizontalScrollIndicator = NO;
        [self.view addSubview:_webView];
    }
    return _webView;
}

@end
