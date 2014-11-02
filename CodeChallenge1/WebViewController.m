//
//  WebViewController.m
//  CodeChallenge1
//
//  Created by malcolm on 11/1/14.
//  Copyright (c) 2014 parry. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController () 
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = self.answer;
    
    NSString *address = @"http://mobilemakers.co";
    NSURL *urlString = [NSURL URLWithString:address];
    NSURLRequest *request = [NSURLRequest requestWithURL:urlString];
    [self.webView loadRequest:request];
}

-(void)webViewDidStartLoad:(UIWebView *)webView{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:YES];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    [[UIApplication sharedApplication] setNetworkActivityIndicatorVisible:NO];

}



@end
