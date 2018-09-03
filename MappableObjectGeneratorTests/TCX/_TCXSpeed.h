//
//  _TCXSpeed.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXTarget.h"

@class TCXZone;


@interface _TCXSpeed : TCXTarget {
	
	TCXZone *_speedZone;
}


@property (nonatomic, strong) TCXZone *speedZone;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
