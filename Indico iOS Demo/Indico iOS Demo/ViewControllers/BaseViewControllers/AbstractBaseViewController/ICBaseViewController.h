//
//  ICBaseViewController.h
//  Indico iOS Demo
//
//  Created by Indico on 14/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IndicoAPI.h"

typedef enum ICActivityType
{
    ICActivityTypeNone,
    ICActivityTypeUploading,
    ICActivityTypeProcessing,
    ICActivityTypeDownloading,
}ICActivityType;


@interface ICBaseViewController : UIViewController
{
    __block IQURLConnection *connection;
}

@property(nonatomic, strong) IBOutlet UIButton *doneButton;

-(void)doneButtonDidClicked;


@property(nonatomic, assign) ICActivityType activityType;

- (void)setProgress:(float)progress animated:(BOOL)animated;

@end
