//
//  _TCXCourse.m
//  BTFD
//
//  Generated Class
//  Copyright 2011 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMDateHelper.h>
#import <BMCommons/BMTwoWayDictionary.h>
#import <BMCommons/NSNumber+BMCommons.h>
#import <BMCommons/NSDateFormatter+BMCommons.h>
#import <BMCommons/BMFieldMapping.h>
#import <BMCommons/BMLogging.h>
#import <BMCommons/NSArray+BMCommons.h>
#import <BMCommons/NSDictionary+BMCommons.h>

#import "_TCXCourse.h"

#import "TCXRestrictedToken.h"
#import "TCXCourseLap.h"
#import "TCXTrack.h"
#import "TCXCoursePoint.h"
#import "TCXAbstractSource.h"
#import "TCXExtensions.h"


@implementation _TCXCourse 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:@"name;Name;object(TCXRestrictedToken)"];
    
    [mappings bmSafeAddObject:@"laps;Lap;array(TCXCourseLap)"];
    
    [mappings bmSafeAddObject:@"tracks;Track;array(TCXTrack)"];
    
    [mappings bmSafeAddObject:@"notes;Notes"];
    
    [mappings bmSafeAddObject:@"coursePoints;CoursePoint;array(TCXCoursePoint)"];
    
    [mappings bmSafeAddObject:@"creator;Creator;object(TCXAbstractSource)"];
    
    [mappings bmSafeAddObject:@"extensions;Extensions;object(TCXExtensions)"];
    
	return mappings;
}



+ (NSDictionary *)fieldMappingNamespaces {
    NSMutableDictionary *namespaces = [NSMutableDictionary dictionary];
    
    return namespaces;
}

+ (NSString *)namespaceURI {
	return @"http://www.garmin.com/xmlschemas/TrainingCenterDatabase/v2";
}

+ (NSString *)dateFormatForField:(NSString *)fieldName {
    return [self defaultDateFormat];
}

+ (NSString *)defaultDateFormat {
    return [BMFieldMapping defaultDateFormat];
}

- (id)init {
    if ((self = [super init])) {
        _laps = [NSMutableArray new];    _tracks = [NSMutableArray new];    _coursePoints = [NSMutableArray new];    
    }
    return self;
}

- (NSString *)description {
	NSMutableString *s = [NSMutableString string];
	[s appendString:@"{"];
    [s appendFormat:@"class: \"%@\"", NSStringFromClass([self class])];
	
    [s appendFormat:@", %@: %@", @"name", self.name];
    
    [s appendFormat:@", %@: %@", @"laps", self.laps];
    
    [s appendFormat:@", %@: %@", @"tracks", self.tracks];
    
    [s appendFormat:@", %@: \"%@\"", @"notes", self.notes];
    
    [s appendFormat:@", %@: %@", @"coursePoints", self.coursePoints];
    
    [s appendFormat:@", %@: %@", @"creator", self.creator];
    
    [s appendFormat:@", %@: %@", @"extensions", self.extensions];
    
	[s appendString:@"}"];
	return s;
}




@end
