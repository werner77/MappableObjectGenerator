//
//  _TCXCourseList.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXCourse;


@interface _TCXCourseList : BMAbstractMappableObject {
	
	NSMutableArray<TCXCourse *> *_courses;
}


@property (nonatomic, strong) NSMutableArray<TCXCourse *> *courses;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
