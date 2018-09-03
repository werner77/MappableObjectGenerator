//
//  _TCXCadence.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXTarget.h"


@interface _TCXCadence : TCXTarget {
	
	NSNumber *_low;
	NSNumber *_high;
}


@property (nonatomic, strong) NSNumber *low;
@property (nonatomic, strong) NSNumber *high;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
