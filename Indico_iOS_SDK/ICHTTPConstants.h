//
//  ICHTTPConstants.h
//  Indico iOS Demo
//
//  Created by Indico on 14/10/14.
//  Copyright (c) 2014 Indico. All rights reserved.
//

#import <Foundation/Foundation.h>

/*!--------------------------------------------------------------
 @discussion Server configuration
 --------------------------------------------------------------*/

extern NSString *const kICHTTPServerURL;

/*!--------------------------------------------------------------
 @discussion Global Constants
 --------------------------------------------------------------*/

extern NSString *const kICDataKey;
extern NSString *const kICResultsKey;
extern NSString *const kICErrorKey;

/*!--------------------------------------------------------------
 @discussion Sentiment Analysis:    Determine whether a body of text has positive or negative connotations.
 @abstract   /sentiment
 @method     POST
 --------------------------------------------------------------*/

extern NSString *const kICSentimentAnalysisAPIPath;

/*!--------------------------------------------------------------
 @discussion Political Sentiment Analysis:  Determine the political leanings of raw text.
 @abstract   /sentiment
 @method     POST
 --------------------------------------------------------------*/

extern NSString *const kICPoliticalSentimentAnalysisAPIPath;

extern NSString *const kICLibertarianKey;
extern NSString *const kICLiberalKey;
extern NSString *const kICGreenKey;
extern NSString *const kICConservativeKey;

/*!--------------------------------------------------------------
 @discussion Language Detection:    Detect the language of a body of text.
 @abstract   /language
 @method     POST
 --------------------------------------------------------------*/

extern NSString *const kICLanguageDetectionAPIPath;

extern NSString *const kICSwedishKey;
extern NSString *const kICVietnameseKey;
extern NSString *const kICRomanianKey;
extern NSString *const kICDutchKey;
extern NSString *const kICKoreanKey;
extern NSString *const kICDanishKey;
extern NSString *const kICIndonesianKey;
extern NSString *const kICLatinKey;
extern NSString *const kICHungarianKey;
extern NSString *const kICPersianFarsiKey;
extern NSString *const kICLithuanianKey;
extern NSString *const kICFrenchKey;
extern NSString *const kICNorwegianKey;
extern NSString *const kICRussianKey;
extern NSString *const kICThaiKey;
extern NSString *const kICFinnishKey;
extern NSString *const kICHebrewKey;
extern NSString *const kICBulgarianKey;
extern NSString *const kICTurkishKey;
extern NSString *const kICGreekKey;
extern NSString *const kICTagalogKey;
extern NSString *const kICEnglishKey;
extern NSString *const kICArabicKey;
extern NSString *const kICItalianKey;
extern NSString *const kICPortugueseKey;
extern NSString *const kICChineseKey;
extern NSString *const kICGermanKey;
extern NSString *const kICJapaneseKey;
extern NSString *const kICCzechKey;
extern NSString *const kICSlovakKey;
extern NSString *const kICSpanishKey;
extern NSString *const kICPolishKey;
extern NSString *const kICEsperantoKey;

/*!--------------------------------------------------------------
 @discussion Facial Emotion Recognition:  Extract emotions from images of faces.
 @abstract   /fer
 @method     POST
 --------------------------------------------------------------*/

extern NSString *const kICFaceEmotionRecognitionAPIPath;

extern NSString *const kICAngryKey;
extern NSString *const kICSadKey;
extern NSString *const kICNeutralKey;
extern NSString *const kICSurpriseKey;
extern NSString *const kICFearKey;
extern NSString *const kICHappyKey;

/*!--------------------------------------------------------------
 @discussion Facial Features:   A feature transform for images of faces.
 @abstract   /facialfeatures
 @method     POST
 --------------------------------------------------------------*/

extern NSString *const kICFacialFeaturesAPIPath;

/*!--------------------------------------------------------------
 @discussion Image Features:    A feature transform for generic images
 @abstract   /imagefeatures
 @method     POST
 --------------------------------------------------------------*/

extern NSString *const kICImageFeaturesAPIPath;

/*!--------------------------------------------------------------
 --------------------------------------------------------------*/
extern NSString *const kICDocumentClassificationAPIPath;

extern NSString *const kICFashionKey;
extern NSString *const kICArtKey;
extern NSString *const kICEnergyKey;
extern NSString *const kICEconomicsKey;
extern NSString *const kICEntrepreneurKey;
extern NSString *const kICBooksKey;
extern NSString *const kICPoliticsKey;
extern NSString *const kICGardeningKey;
extern NSString *const kICNbaKey;
extern NSString *const kICConservativeKey;
extern NSString *const kICTechnologyKey;
extern NSString *const kICStartupsKey;
extern NSString *const kICRelationshipsKey;
extern NSString *const kICEducationKey;
extern NSString *const kICHumorKey;
extern NSString *const kICPsychologyKey;
extern NSString *const kICBicyclingKey;
extern NSString *const kICInvestingKey;
extern NSString *const kICTravelKey;
extern NSString *const kICCookingKey;
extern NSString *const kICChristianityKey;
extern NSString *const kICEnvironmentKey;
extern NSString *const kICReligionKey;
extern NSString *const kICHealthKey;
extern NSString *const kICHockeyKey;
extern NSString *const kICPetsKey;
extern NSString *const kICMusicKey;
extern NSString *const kICSoccerKey;
extern NSString *const kICGunsKey;
extern NSString *const kICGamingKey;
extern NSString *const kICJobsKey;
extern NSString *const kICBusinessKey;
extern NSString *const kICNatureKey;
extern NSString *const kICFoodKey;
extern NSString *const kICCarsKey;
extern NSString *const kICPhotographyKey;
extern NSString *const kICPhilosophyKey;
extern NSString *const kICGeekKey;
extern NSString *const kICSportsKey;
extern NSString *const kICBaseballKey;
extern NSString *const kICNewsKey;
extern NSString *const kICTelevisionKey;
extern NSString *const kICEntertainmentKey;
extern NSString *const kICParentingKey;
extern NSString *const kICComicsKey;
extern NSString *const kICScienceKey;
extern NSString *const kICNflKey;
extern NSString *const kICProgrammingKey;
extern NSString *const kICPersonalfinanceKey;
extern NSString *const kICAtheismKey;
extern NSString *const kICMoviesKey;
extern NSString *const kICAnimeKey;
extern NSString *const kICFitnessKey;
extern NSString *const kICMilitaryKey;
extern NSString *const kICRealestateKey;
extern NSString *const kICHistoryKey;


