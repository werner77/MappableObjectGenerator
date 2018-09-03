//
//  _AXActivityLapExtension.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class AXCadenceValue;

@class AXCadenceValue;

@class AXCadenceValue;

@class AXExtensions;


@interface _AXActivityLapExtension : BMAbstractMappableObject {
	
	NSNumber *_avgSpeed;
	AXCadenceValue *_maxBikeCadence;
	AXCadenceValue *_avgRunCadence;
	AXCadenceValue *_maxRunCadence;
	NSNumber *_steps;
	NSNumber *_avgWatts;
	NSNumber *_maxWatts;
	AXExtensions *_extensions;
}


@property (nonatomic, strong) NSNumber *avgSpeed;
@property (nonatomic, strong) AXCadenceValue *maxBikeCadence;
@property (nonatomic, strong) AXCadenceValue *avgRunCadence;
@property (nonatomic, strong) AXCadenceValue *maxRunCadence;
@property (nonatomic, strong) NSNumber *steps;
@property (nonatomic, strong) NSNumber *avgWatts;
@property (nonatomic, strong) NSNumber *maxWatts;
@property (nonatomic, strong) AXExtensions *extensions;
+ (NSString *)rootElementName;


+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
