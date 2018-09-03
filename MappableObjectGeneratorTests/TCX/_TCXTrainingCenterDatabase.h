//
//  _TCXTrainingCenterDatabase.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXFolders;

@class TCXActivityList;

@class TCXWorkoutList;

@class TCXCourseList;

@class TCXAbstractSource;

@class TCXExtensions;


@interface _TCXTrainingCenterDatabase : BMAbstractMappableObject {
	
	TCXFolders *_folders;
	TCXActivityList *_activities;
	TCXWorkoutList *_workouts;
	TCXCourseList *_courses;
	TCXAbstractSource *_author;
	TCXExtensions *_extensions;
}


@property (nonatomic, strong) TCXFolders *folders;
@property (nonatomic, strong) TCXActivityList *activities;
@property (nonatomic, strong) TCXWorkoutList *workouts;
@property (nonatomic, strong) TCXCourseList *courses;
@property (nonatomic, strong) TCXAbstractSource *author;
@property (nonatomic, strong) TCXExtensions *extensions;
+ (NSString *)rootElementName;


+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
