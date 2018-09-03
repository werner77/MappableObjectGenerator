//
//  _TCXActivityLap.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXHeartRateInBeatsPerMinute;

@class TCXHeartRateInBeatsPerMinute;

@class TCXIntensity;

@class TCXCadenceValue;

@class TCXTriggerMethod;

@class TCXTrack;

@class TCXActivityLapExtensions;


@interface _TCXActivityLap : BMAbstractMappableObject {
	
	NSNumber *_totalTimeSeconds;
	NSNumber *_distanceMeters;
	NSNumber *_maximumSpeed;
	NSNumber *_calories;
	TCXHeartRateInBeatsPerMinute *_averageHeartRateBpm;
	TCXHeartRateInBeatsPerMinute *_maximumHeartRateBpm;
	TCXIntensity *_intensity;
	TCXCadenceValue *_cadence;
	TCXTriggerMethod *_triggerMethod;
	NSMutableArray<TCXTrack *> *_tracks;
	NSString *_notes;
	TCXActivityLapExtensions *_extensions;
	NSDate *_startTime;
}


@property (nonatomic, strong) NSNumber *totalTimeSeconds;
@property (nonatomic, strong) NSNumber *distanceMeters;
@property (nonatomic, strong) NSNumber *maximumSpeed;
@property (nonatomic, strong) NSNumber *calories;
@property (nonatomic, strong) TCXHeartRateInBeatsPerMinute *averageHeartRateBpm;
@property (nonatomic, strong) TCXHeartRateInBeatsPerMinute *maximumHeartRateBpm;
@property (nonatomic, strong) TCXIntensity *intensity;
@property (nonatomic, strong) TCXCadenceValue *cadence;
@property (nonatomic, strong) TCXTriggerMethod *triggerMethod;
@property (nonatomic, strong) NSMutableArray<TCXTrack *> *tracks;
@property (nonatomic, strong) NSString *notes;
@property (nonatomic, strong) TCXActivityLapExtensions *extensions;
@property (nonatomic, strong) NSDate *startTime;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
