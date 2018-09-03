//
//  _TCXStep.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXAbstractStep.h"

@class TCXRestrictedToken;

@class TCXDuration;

@class TCXIntensity;

@class TCXTarget;


@interface _TCXStep : TCXAbstractStep {
	
	TCXRestrictedToken *_name;
	TCXDuration *_duration;
	TCXIntensity *_intensity;
	TCXTarget *_target;
}


@property (nonatomic, strong) TCXRestrictedToken *name;
@property (nonatomic, strong) TCXDuration *duration;
@property (nonatomic, strong) TCXIntensity *intensity;
@property (nonatomic, strong) TCXTarget *target;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
