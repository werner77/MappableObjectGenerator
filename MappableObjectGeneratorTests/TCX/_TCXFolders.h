//
//  _TCXFolders.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXHistory;

@class TCXWorkouts;

@class TCXCourses;


@interface _TCXFolders : BMAbstractMappableObject {
	
	TCXHistory *_history;
	TCXWorkouts *_workouts;
	TCXCourses *_courses;
}


@property (nonatomic, strong) TCXHistory *history;
@property (nonatomic, strong) TCXWorkouts *workouts;
@property (nonatomic, strong) TCXCourses *courses;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
