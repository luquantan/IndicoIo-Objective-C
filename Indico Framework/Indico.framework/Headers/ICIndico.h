//
//  Indico.h
//  Indico
//
//  Created by Iftekhar on 17/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import <UIKit/UIKit.h>

//! Project version number for Indico.
FOUNDATION_EXPORT double IndicoVersionNumber;

//! Project version string for Indico.
FOUNDATION_EXPORT const unsigned char IndicoVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <Indico/PublicHeader.h>

//  Generic HTTP Client
#import <Indico/IQHTTPConstants.h>
#import <Indico/IQHTTPService.h>
#import <Indico/IQMultipartFormData.h>

//  Network Connection Module
#import <Indico/IQURLConnection.h>

//  Model Objects
#import <Indico/ICBaseModelObject.h>
#import <Indico/ICSentimentObject.h>
#import <Indico/ICPoliticalObject.h>
#import <Indico/ICLanguageObject.h>
#import <Indico/ICEmotionObject.h>

//  Indico HTTP Client
#import <Indico/ICHTTPService.h>
#import <Indico/ICHTTPConstants.h>
