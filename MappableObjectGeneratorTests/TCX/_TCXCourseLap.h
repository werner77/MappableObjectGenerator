//
//  _TCXCourseLap.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXPosition;

@class TCXPosition;

@class TCXHeartRateInBeatsPerMinute;

@class TCXHeartRateInBeatsPerMinute;

@class TCXIntensity;

@class TCXCadenceValue;

@class TCXExtensions;


@interface _TCXCourseLap : BMAbstractMappableObject {
	
	NSNumber *_totalTimeSeconds;
	NSNumber *_distanceMeters;
	TCXPosition *_beginPosition;
	NSNumber *_beginAltitudeMeters;
	TCXPosition *_endPosition;
	NSNumber *_endAltitudeMeters;
	TCXHeartRateInBeatsPerMinute *_averageHeartRateBpm;
	TCXHeartRateInBeatsPerMinute *_maximumHeartRateBpm;
	TCXIntensity *_intensity;
	TCXCadenceValue *_cadence;
	TCXExtensions *_extensions;
}


@property (nonatomic, strong) NSNumber *totalTimeSeconds;
@property (nonatomic, strong) NSNumber *distanceMeters;
@property (nonatomic, strong) TCXPosition *beginPosition;
@property (nonatomic, strong) NSNumber *beginAltitudeMeters;
@property (nonatomic, strong) TCXPosition *endPosition;
@property (nonatomic, strong) NSNumber *endAltitudeMeters;
@property (nonatomic, strong) TCXHeartRateInBeatsPerMinute *averageHeartRateBpm;
@property (nonatomic, strong) TCXHeartRateInBeatsPerMinute *maximumHeartRateBpm;
@property (nonatomic, strong) TCXIntensity *intensity;
@property (nonatomic, strong) TCXCadenceValue *cadence;
@property (nonatomic, strong) TCXExtensions *extensions;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
