//
//  _TCXCaloriesBurned.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXDuration.h"


@interface _TCXCaloriesBurned : TCXDuration {
	
	NSNumber *_calories;
}


@property (nonatomic, strong) NSNumber *calories;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
