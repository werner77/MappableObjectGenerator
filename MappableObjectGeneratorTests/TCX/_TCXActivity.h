//
//  _TCXActivity.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXActivityLap;

@class TCXTraining;

@class TCXAbstractSource;

@class TCXExtensions;

@class TCXSport;


@interface _TCXActivity : BMAbstractMappableObject {
	
	NSDate *_idDate;
	NSMutableArray<TCXActivityLap *> *_laps;
	NSString *_notes;
	TCXTraining *_training;
	TCXAbstractSource *_creator;
	TCXExtensions *_extensions;
	TCXSport *_sport;
}


@property (nonatomic, strong) NSDate *idDate;
@property (nonatomic, strong) NSMutableArray<TCXActivityLap *> *laps;
@property (nonatomic, strong) NSString *notes;
@property (nonatomic, strong) TCXTraining *training;
@property (nonatomic, strong) TCXAbstractSource *creator;
@property (nonatomic, strong) TCXExtensions *extensions;
@property (nonatomic, strong) TCXSport *sport;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
