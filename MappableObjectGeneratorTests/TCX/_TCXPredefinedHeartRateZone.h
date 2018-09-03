//
//  _TCXPredefinedHeartRateZone.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXZone.h"

@class TCXHeartRateZoneNumbers;


@interface _TCXPredefinedHeartRateZone : TCXZone {
	
	TCXHeartRateZoneNumbers *_number;
}


@property (nonatomic, strong) TCXHeartRateZoneNumbers *number;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
