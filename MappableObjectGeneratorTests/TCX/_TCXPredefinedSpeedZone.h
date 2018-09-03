//
//  _TCXPredefinedSpeedZone.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXZone.h"

@class TCXSpeedZoneNumbers;


@interface _TCXPredefinedSpeedZone : TCXZone {
	
	TCXSpeedZoneNumbers *_number;
}


@property (nonatomic, strong) TCXSpeedZoneNumbers *number;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
