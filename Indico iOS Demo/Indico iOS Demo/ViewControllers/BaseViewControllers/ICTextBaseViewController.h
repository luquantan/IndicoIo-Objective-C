//
//  ICTextBaseViewController.h
//  Indico iOS Demo
//
//  Created by Indico on 14/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ICBaseViewController.h"

@interface ICTextBaseViewController : ICBaseViewController <UITextViewDelegate>

@property(nonatomic, strong) IBOutlet UITextView *textView;

@end
