//
//  _TCXTrackpoint.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXPosition;

@class TCXHeartRateInBeatsPerMinute;

@class TCXCadenceValue;

@class TCXSensorState;

@class TCXActivityTrackpointExtensions;


@interface _TCXTrackpoint : BMAbstractMappableObject {
	
	NSDate *_time;
	TCXPosition *_position;
	NSNumber *_altitudeMeters;
	NSNumber *_distanceMeters;
	TCXHeartRateInBeatsPerMinute *_heartRateBpm;
	TCXCadenceValue *_cadence;
	TCXSensorState *_sensorState;
	TCXActivityTrackpointExtensions *_extensions;
}


@property (nonatomic, strong) NSDate *time;
@property (nonatomic, strong) TCXPosition *position;
@property (nonatomic, strong) NSNumber *altitudeMeters;
@property (nonatomic, strong) NSNumber *distanceMeters;
@property (nonatomic, strong) TCXHeartRateInBeatsPerMinute *heartRateBpm;
@property (nonatomic, strong) TCXCadenceValue *cadence;
@property (nonatomic, strong) TCXSensorState *sensorState;
@property (nonatomic, strong) TCXActivityTrackpointExtensions *extensions;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
