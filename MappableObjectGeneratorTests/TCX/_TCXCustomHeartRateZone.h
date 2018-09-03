//
//  _TCXCustomHeartRateZone.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXZone.h"

@class TCXHeartRateValue;

@class TCXHeartRateValue;


@interface _TCXCustomHeartRateZone : TCXZone {
	
	TCXHeartRateValue *_low;
	TCXHeartRateValue *_high;
}


@property (nonatomic, strong) TCXHeartRateValue *low;
@property (nonatomic, strong) TCXHeartRateValue *high;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
