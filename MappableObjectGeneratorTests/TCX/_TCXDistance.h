//
//  _TCXDistance.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXDuration.h"


@interface _TCXDistance : TCXDuration {
	
	NSNumber *_meters;
}


@property (nonatomic, strong) NSNumber *meters;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
