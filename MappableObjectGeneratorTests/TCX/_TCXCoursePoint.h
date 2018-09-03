//
//  _TCXCoursePoint.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXCoursePointName;

@class TCXPosition;

@class TCXCoursePointType;

@class TCXExtensions;


@interface _TCXCoursePoint : BMAbstractMappableObject {
	
	TCXCoursePointName *_name;
	NSDate *_time;
	TCXPosition *_position;
	NSNumber *_altitudeMeters;
	TCXCoursePointType *_pointType;
	NSString *_notes;
	TCXExtensions *_extensions;
}


@property (nonatomic, strong) TCXCoursePointName *name;
@property (nonatomic, strong) NSDate *time;
@property (nonatomic, strong) TCXPosition *position;
@property (nonatomic, strong) NSNumber *altitudeMeters;
@property (nonatomic, strong) TCXCoursePointType *pointType;
@property (nonatomic, strong) NSString *notes;
@property (nonatomic, strong) TCXExtensions *extensions;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
