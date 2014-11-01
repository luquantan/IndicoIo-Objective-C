IndicoIo Objective-C API
====================

An Objective-C wrapper for a series of APIs made by indico.

Check out the main site here:

http://indico.io

Check out indico API documentation here:

http://indico.readme.io/

Current APIs (v1.0)
====================

Currently Objective-C wrapper support following API's:

- Sentiment Analysis
- Political Sentiment Analysis
- Language Detection
- Facial Emotion Recognition
- Facial Features Extraction
- Image Features Extraction

Installation
====================

Step1:- Add `Indico_iOS_SDK` directory to project.

Step2:- Add **#import "IndicoAPI.h"** in **.pch** file, or import it when needed.

Step3:- Use singleton instance `[IndicoAPI service]` to connect with Indico API.


API Usage
====================

---
####1) Sentiment Analysis
***Determine whether a body of text has positive or negative connotations.***

Analyze the sentiment of a given body of text. All results are between 0 and 1. Lower scores (< .5) correspond to negative sentiment, while higher scores (> 0.5) correspond to positive sentiment.

**Method:-** `-(IQURLConnection*)sentimentAnalysisWithText:(NSString*)text completionHandler:(IQDictionaryCompletionBlock)completionHandler;`

**Usage:-**
```
[[IndicoAPI service] sentimentAnalysisWithText:@"Raw text string" completionHandler:^(NSDictionary *result, NSError *error) {
        if (result) {
            //Convert result to model object.
            ICSentimentObject *object = [[ICSentimentObject alloc] initWithDictionary:result];
        }
        else if (error) {
          //Error handling code goes here
        }
    }];
```
**Response:-**

*Success*
```
{'results': float}
```
*Failure*
```
{'error': 'Error message'}
```
---
####2) Political Sentiment Analysis
***Determine the political leanings of raw text.***

Analyze the political sentiment of a given body of text. The results returned give a likelihood score for each of four political parties (Libertarian, Conservative, Liberal, Green).

**Method:-** `-(IQURLConnection*)politicalSentimentAnalysisWithText:(NSString*)text completionHandler:(IQDictionaryCompletionBlock)completionHandler;`

**Usage:-**
```
[[IndicoAPI service] politicalSentimentAnalysisWithText:@"Raw text string" completionHandler:^(NSDictionary *result, NSError *error) {
        if (result) {
            //Convert result to model object.
            ICPoliticalObject *object = [[ICPoliticalObject alloc] initWithDictionary:result[kICResultsKey]];
        }
        else if (error) {
          //Error handling code goes here
        }
    }];
```
**Response:-**

*Success*
```
{results: {'Libertarian': float, 'Green': float, u'Liberal': float, u'Conservative': float}}
```
*Failure*
```
{'error': 'Error message'}
```
---
####3) Language Detection
***Detect the language of a body of text.***

Determines the language of a given body of text. The results returned give a likelihood score for each of several dozen languages.

**Method:-** `-(IQURLConnection*)languageDetectionWithText:(NSString*)text completionHandler:(IQDictionaryCompletionBlock)completionHandler;`

**Usage:-**
```
[[IndicoAPI service] languageDetectionWithText:@"Raw text string" completionHandler:^(NSDictionary *result, NSError *error) {
        if (result) {
            //Convert result to model object.
            ICLanguageObject *object = [[ICLanguageObject alloc] initWithDictionary:result[kICResultsKey]];
        }
        else if (error) {
          //Error handling code goes here
        }
    }];
```
**Response:-**

*Success*
```
{'results': {u'Swedish': 0.00033330636691921914, u'Lithuanian': 0.007328693814717631, u'Vietnamese', ...}}
```
*Failure*
```
{'error': 'Error message'}
```
---
####4) Facial Emotion Recognition
***Extract emotions from images of faces.***

Analyze the emotions present in a given photo of a face. The results returned give a likelihood score for each of several emotions (Angry, Sad, Neutral, Surprise, Fear, Happy).

**Method 1:-** `-(IQURLConnection*)facialEmotionRecognitionWithImage:(UIImage*)image  completionHandler:(IQDictionaryCompletionBlock)completionHandler;`

**Method 2:-** `-(IQURLConnection*)facialEmotionRecognitionWithImage:(UIImage*)image resizeToSize:(CGSize)size completionHandler:(IQDictionaryCompletionBlock)completionHandler;`

**Usage:-**
```
[[IndicoAPI service] facialEmotionRecognitionWithImage:[UIImage imageNamed:@"testImage"] completionHandler:^(NSDictionary *result, NSError *error) {
        if (result) {
            //Convert result to model object.
            ICEmotionObject *object = [[ICEmotionObject alloc] initWithDictionary:result[kICResultsKey]];
        }
        else if (error) {
          //Error handling code goes here
        }
    }];
```
**Response:-**

*Success*
```
{'results': {'Angry': float, 'Sad': float, 'Neutral': float, 'Surprise': float, 'Fear': float, 'Happy': float}}
```
*Failure*
```
{'error': 'Error message'}
```
---
####5) Facial Features Extraction
***A feature transform for images of faces.***

Extracts abstract facial features for use as inputs to learning algorithms. The returned result is a length 48 array of floating point numbers.

**Method 1:-** `-(IQURLConnection*)facialFeaturesWithImage:(UIImage*)image  completionHandler:(IQDictionaryCompletionBlock)completionHandler;`

**Method 2:-** `-(IQURLConnection*)facialFeaturesWithImage:(UIImage*)image resizeToSize:(CGSize)size completionHandler:(IQDictionaryCompletionBlock)completionHandler;`

**Usage:-**
```
[[IndicoAPI service] facialFeaturesWithImage:[UIImage imageNamed:@"testImage"] completionHandler:^(NSDictionary *result, NSError *error) 
        if (result) {
            //Logic handling code goes here.
            NSLog(@"%@",result);
        }
        else if (error) {
          //Error handling code goes here
        }
    ];
```
**Response:-**

*Success*
```
{'results': [float, float, float, ...]}
```
*Failure*
```
{'error': 'Error message'}
```
---
####6) Image Features Extraction
***A feature transform for generic images***

Extracts abstract image features for use as inputs to learning algorithms. The returned result is a length 2048 array of floating point numbers.

**Method 1:-** `-(IQURLConnection*)imageFeaturesWithImage:(UIImage*)image  completionHandler:(IQDictionaryCompletionBlock)completionHandler;`

**Method 2:-** `-(IQURLConnection*)imageFeaturesWithImage:(UIImage*)image resizeToSize:(CGSize)size completionHandler:(IQDictionaryCompletionBlock)completionHandler;`

**Usage:-**
```
[[IndicoAPI service] imageFeaturesWithImage:[UIImage imageNamed:@"testImage"] completionHandler:^(NSDictionary *result, NSError *error) {
        if (result) {
            //Logic handling code goes here.
            NSLog(@"%@",result);
        }
        else if (error) {
          //Error handling code goes here
        }
    }];
```
**Response:-**

*Success*
```
{'results': [float, float, float, ...]}
```
*Failure*
```
{'error': 'Error message'}
```
---






