//
//  _TCXHeartRateAsPercentOfMax.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXHeartRateValue.h"

@class TCXPercentOfMax;


@interface _TCXHeartRateAsPercentOfMax : TCXHeartRateValue {
	
	TCXPercentOfMax *_value;
}


@property (nonatomic, strong) TCXPercentOfMax *value;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
