//
//  ICBaseViewController.m
//  Indico iOS Demo
//
//  Created by Indico on 14/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import "ICBaseViewController.h"
#import "UAProgressView.h"

@interface ICBaseViewController ()

@end

@implementation ICBaseViewController
{
    UAProgressView *progressView;
    UILabel *labelProgress;
    
    UIActivityIndicatorView *activityIndicatorView;
    
    UIBarButtonItem *progressBarButtonItem;
    UIBarButtonItem *activityBarButtonItem;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    activityBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:activityIndicatorView];
    
    progressView = [[UAProgressView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    progressView.userInteractionEnabled = NO;
    progressBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:progressView];
    
    labelProgress = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    labelProgress.textAlignment = NSTextAlignmentCenter;
    labelProgress.font = [UIFont systemFontOfSize:10.0];
    progressView.centralView = labelProgress;
}

- (IBAction)doneAction:(UIButton *)sender
{
    [self doneButtonDidClicked];
}

-(void)doneButtonDidClicked
{

}

-(void)setActivityType:(ICActivityType)activityType
{
    if(_activityType == activityType)   return;
    
    _activityType = activityType;
    
    [activityIndicatorView stopAnimating];
    [self setProgress:0.0 animated:NO];
    
    switch (activityType)
    {
        case ICActivityTypeNone:
        {
            self.navigationItem.rightBarButtonItem = nil;
        }
            break;
            
        case ICActivityTypeDownloading:
        {
            UIColor *tintColor = [UIColor colorWithRed:0 green:0 blue:0.5 alpha:1.0];
            
            [progressView setTintColor:tintColor];
            labelProgress.textColor = tintColor;
            
            self.navigationItem.rightBarButtonItem = progressBarButtonItem;
        }
            break;
            
        case ICActivityTypeProcessing:
        {
            [activityIndicatorView startAnimating];
            self.navigationItem.rightBarButtonItem = activityBarButtonItem;
        }
            break;
            
        case ICActivityTypeUploading:
        {
            UIColor *tintColor = [UIColor colorWithRed:192.0/255.0 green:80.0/255.0 blue:70.0/255.0 alpha:1];
 
            [progressView setTintColor:tintColor];
            labelProgress.textColor = tintColor;

            self.navigationItem.rightBarButtonItem = progressBarButtonItem;
        }
            break;
            
        default:
            break;
    }
}

- (void)setProgress:(float)progress animated:(BOOL)animated
{
    [progressView setProgress:progress animated:animated];
    labelProgress.text = [NSString stringWithFormat:@"%d",(int)(progress*100)];
}

@end
