//
//  _TCXHistory.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXHistoryFolder;

@class TCXHistoryFolder;

@class TCXHistoryFolder;

@class TCXMultiSportFolder;

@class TCXExtensions;


@interface _TCXHistory : BMAbstractMappableObject {
	
	TCXHistoryFolder *_running;
	TCXHistoryFolder *_biking;
	TCXHistoryFolder *_other;
	TCXMultiSportFolder *_multiSport;
	TCXExtensions *_extensions;
}


@property (nonatomic, strong) TCXHistoryFolder *running;
@property (nonatomic, strong) TCXHistoryFolder *biking;
@property (nonatomic, strong) TCXHistoryFolder *other;
@property (nonatomic, strong) TCXMultiSportFolder *multiSport;
@property (nonatomic, strong) TCXExtensions *extensions;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
