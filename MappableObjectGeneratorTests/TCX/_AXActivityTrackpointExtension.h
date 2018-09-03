//
//  _AXActivityTrackpointExtension.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class AXCadenceValue;

@class AXExtensions;

@class AXCadenceSensorType;


@interface _AXActivityTrackpointExtension : BMAbstractMappableObject {
	
	NSNumber *_speed;
	AXCadenceValue *_runCadence;
	NSNumber *_watts;
	AXExtensions *_extensions;
	AXCadenceSensorType *_cadenceSensor;
}


@property (nonatomic, strong) NSNumber *speed;
@property (nonatomic, strong) AXCadenceValue *runCadence;
@property (nonatomic, strong) NSNumber *watts;
@property (nonatomic, strong) AXExtensions *extensions;
@property (nonatomic, strong) AXCadenceSensorType *cadenceSensor;
+ (NSString *)rootElementName;


+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
