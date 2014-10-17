//
//  ICFacialFeatureViewController.m
//  Indico iOS Demo
//
//  Created by Indico on 14/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import "ICFacialFeatureViewController.h"

@interface ICFacialFeatureViewController ()

@end

@implementation ICFacialFeatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)doneButtonDidClicked
{
    [super doneButtonDidClicked];
    
    __weak __typeof__(self) weakSelf = self;
    
    self.doneButton.enabled = NO;
    connection = [[IndicoAPI service] facialFeaturesWithImage:self.imageView.image completionHandler:^(NSDictionary *result, NSError *error) {
        
        self.doneButton.enabled = YES;
        [weakSelf setActivityType:ICActivityTypeNone];
        
        if (result)
        {
            NSData *data = [NSJSONSerialization dataWithJSONObject:result options:0 error:0];
            [[[UIAlertView alloc] initWithTitle:@"Response" message:[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
        }
        else if (error)
        {
            [[[UIAlertView alloc] initWithTitle:@"Error!" message:[NSString stringWithFormat:@"%@",[error localizedDescription]] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
        }
    }];
    
    
    [connection setResponseBlock:^(NSHTTPURLResponse* response){
        [weakSelf setActivityType:ICActivityTypeProcessing];
    }];
    
    [connection setUploadProgressBlock:^(CGFloat progress){
        [weakSelf setActivityType:ICActivityTypeUploading];
        [weakSelf setProgress:progress animated:YES];
        
        if (progress >=1.0)
        {
            [weakSelf setActivityType:ICActivityTypeProcessing];
        }
    }];
    
    [connection setDownloadProgressBlock:^(CGFloat progress){
        [weakSelf setActivityType:ICActivityTypeDownloading];
        [weakSelf setProgress:progress animated:YES];
    }];
}


@end
