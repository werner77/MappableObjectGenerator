//
//  _TCXTraining.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXQuickWorkout;

@class TCXPlan;


@interface _TCXTraining : BMAbstractMappableObject {
	
	TCXQuickWorkout *_quickWorkoutResults;
	TCXPlan *_plan;
	NSNumber *_virtualPartner;
}


@property (nonatomic, strong) TCXQuickWorkout *quickWorkoutResults;
@property (nonatomic, strong) TCXPlan *plan;
@property (nonatomic, strong) NSNumber *virtualPartner;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
