//
//  _TCXWorkoutList.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXWorkout;


@interface _TCXWorkoutList : BMAbstractMappableObject {
	
	NSMutableArray<TCXWorkout *> *_workouts;
}


@property (nonatomic, strong) NSMutableArray<TCXWorkout *> *workouts;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
