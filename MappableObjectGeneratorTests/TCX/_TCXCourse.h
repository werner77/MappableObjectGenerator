//
//  _TCXCourse.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXRestrictedToken;

@class TCXCourseLap;

@class TCXTrack;

@class TCXCoursePoint;

@class TCXAbstractSource;

@class TCXExtensions;


@interface _TCXCourse : BMAbstractMappableObject {
	
	TCXRestrictedToken *_name;
	NSMutableArray<TCXCourseLap *> *_laps;
	NSMutableArray<TCXTrack *> *_tracks;
	NSString *_notes;
	NSMutableArray<TCXCoursePoint *> *_coursePoints;
	TCXAbstractSource *_creator;
	TCXExtensions *_extensions;
}


@property (nonatomic, strong) TCXRestrictedToken *name;
@property (nonatomic, strong) NSMutableArray<TCXCourseLap *> *laps;
@property (nonatomic, strong) NSMutableArray<TCXTrack *> *tracks;
@property (nonatomic, strong) NSString *notes;
@property (nonatomic, strong) NSMutableArray<TCXCoursePoint *> *coursePoints;
@property (nonatomic, strong) TCXAbstractSource *creator;
@property (nonatomic, strong) TCXExtensions *extensions;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
