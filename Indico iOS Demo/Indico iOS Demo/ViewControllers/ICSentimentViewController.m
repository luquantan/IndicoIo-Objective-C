//
//  ICSentimentViewController.m
//  Indico iOS Demo
//
//  Created by Indico on 14/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import "ICSentimentViewController.h"
#import "ICSentimentObject.h"

@interface ICSentimentViewController ()

@end

@implementation ICSentimentViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

-(void)doneButtonDidClicked
{
    [super doneButtonDidClicked];
    
    __weak __typeof__(self) weakSelf = self;

    self.doneButton.enabled = NO;
    connection = [[IndicoAPI service] sentimentAnalysisWithText:self.textView.text completionHandler:^(NSDictionary *result, NSError *error) {
    
        self.doneButton.enabled = YES;
        [weakSelf setActivityType:ICActivityTypeNone];

        if (result)
        {
            //Developer should convert the result to model objects and should use them.
//            ICSentimentObject *object = [[ICSentimentObject alloc] initWithDictionary:result];
            
            NSData *data = [NSJSONSerialization dataWithJSONObject:result options:0 error:0];
            [[[UIAlertView alloc] initWithTitle:@"Response" message:[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
        }
        else if (error)
        {
            [[[UIAlertView alloc] initWithTitle:@"Error!" message:[NSString stringWithFormat:@"%@",[error localizedDescription]] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
        }
        
        NSLog(@"%@",result);
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
