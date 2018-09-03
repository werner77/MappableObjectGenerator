//
//  _TCXHeartRateBelow.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXDuration.h"

@class TCXHeartRateValue;


@interface _TCXHeartRateBelow : TCXDuration {
	
	TCXHeartRateValue *_heartRate;
}


@property (nonatomic, strong) TCXHeartRateValue *heartRate;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
