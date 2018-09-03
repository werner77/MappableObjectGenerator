//
//  _TCXHeartRate.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXTarget.h"

@class TCXZone;


@interface _TCXHeartRate : TCXTarget {
	
	TCXZone *_heartRateZone;
}


@property (nonatomic, strong) TCXZone *heartRateZone;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
