//
//  _TCXCourses.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXCourseFolder;

@class TCXExtensions;


@interface _TCXCourses : BMAbstractMappableObject {
	
	TCXCourseFolder *_courseFolder;
	TCXExtensions *_extensions;
}


@property (nonatomic, strong) TCXCourseFolder *courseFolder;
@property (nonatomic, strong) TCXExtensions *extensions;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
