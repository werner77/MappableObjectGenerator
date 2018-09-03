//
//  _TCXTime.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXDuration.h"


@interface _TCXTime : TCXDuration {
	
	NSNumber *_seconds;
}


@property (nonatomic, strong) NSNumber *seconds;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
