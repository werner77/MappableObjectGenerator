//
//  _TCXHeartRateInBeatsPerMinute.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXHeartRateValue.h"

@class TCXPositiveByte;


@interface _TCXHeartRateInBeatsPerMinute : TCXHeartRateValue {
	
	TCXPositiveByte *_value;
}


@property (nonatomic, strong) TCXPositiveByte *value;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
