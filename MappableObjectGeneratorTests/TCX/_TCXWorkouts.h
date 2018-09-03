//
//  _TCXWorkouts.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXWorkoutFolder;

@class TCXWorkoutFolder;

@class TCXWorkoutFolder;

@class TCXExtensions;


@interface _TCXWorkouts : BMAbstractMappableObject {
	
	TCXWorkoutFolder *_running;
	TCXWorkoutFolder *_biking;
	TCXWorkoutFolder *_other;
	TCXExtensions *_extensions;
}


@property (nonatomic, strong) TCXWorkoutFolder *running;
@property (nonatomic, strong) TCXWorkoutFolder *biking;
@property (nonatomic, strong) TCXWorkoutFolder *other;
@property (nonatomic, strong) TCXExtensions *extensions;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
