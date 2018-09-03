//
//  _TCXCustomSpeedZone.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXZone.h"

@class TCXSpeedType;

@class TCXSpeedInMetersPerSecond;

@class TCXSpeedInMetersPerSecond;


@interface _TCXCustomSpeedZone : TCXZone {
	
	TCXSpeedType *_viewAs;
	TCXSpeedInMetersPerSecond *_lowInMetersPerSecond;
	TCXSpeedInMetersPerSecond *_highInMetersPerSecond;
}


@property (nonatomic, strong) TCXSpeedType *viewAs;
@property (nonatomic, strong) TCXSpeedInMetersPerSecond *lowInMetersPerSecond;
@property (nonatomic, strong) TCXSpeedInMetersPerSecond *highInMetersPerSecond;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
