//
//  _TCXPlan.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXRestrictedToken;

@class TCXExtensions;

@class TCXTrainingType;


@interface _TCXPlan : BMAbstractMappableObject {
	
	TCXRestrictedToken *_name;
	TCXExtensions *_extensions;
	TCXTrainingType *_type;
	NSNumber *_intervalWorkout;
}


@property (nonatomic, strong) TCXRestrictedToken *name;
@property (nonatomic, strong) TCXExtensions *extensions;
@property (nonatomic, strong) TCXTrainingType *type;
@property (nonatomic, strong) NSNumber *intervalWorkout;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
