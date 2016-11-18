//
//  ViewController.m
//  JDWeb
//
//  Created by chenxingwang on 2016/11/18.
//  Copyright © 2016年 chenxingwang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIWebViewDelegate>
@property (nonatomic ,strong) UIWebView* webview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    CGRect bouds = [[UIScreen mainScreen] applicationFrame];
    
    CGRect bouds = [[UIScreen mainScreen] bounds];
    
    self.webview = [[UIWebView alloc] initWithFrame:bouds];
    
    self.webview.scalesPageToFit = YES;//自动对页面进行缩放以适应屏幕
    
    [self.view addSubview:_webview];
    
    NSURL* url = [NSURL URLWithString:@"http://m.jd.com/?&utm_source=m_browser&utm_campaign=t_1000012192_qqbrowsergg&cu=true&utm_source=kong&utm_medium=tuiguang&utm_campaign=t_1000012192_qqbrowsergg&utm_term=59fcc9b5991c47138df6627ca6ac12bf"];//创建URL
    NSURLRequest* request = [NSURLRequest requestWithURL:url];//创建NSURLRequest
    [_webview loadRequest:request];//加载
    
}

#pragma mark - UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView{

    [webView stringByEvaluatingJavaScriptFromString:@"document.documentElement.getElementsByClassName('showfixedtop')[0].style.display = 'none'"];
    
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
//    [webView stringByEvaluatingJavaScriptFromString:@"document.documentElement.getElementsByClassName('showfixedtop')[0].style.display = 'none'"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
