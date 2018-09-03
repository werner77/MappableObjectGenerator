//
//  _TCXQuickWorkout.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>


@interface _TCXQuickWorkout : BMAbstractMappableObject {
	
	NSNumber *_totalTimeSeconds;
	NSNumber *_distanceMeters;
}


@property (nonatomic, strong) NSNumber *totalTimeSeconds;
@property (nonatomic, strong) NSNumber *distanceMeters;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
