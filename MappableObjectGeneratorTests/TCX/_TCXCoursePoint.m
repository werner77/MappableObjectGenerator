//
//  _TCXCoursePoint.m
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

#import "_TCXCoursePoint.h"

#import "TCXCoursePointName.h"
#import "TCXPosition.h"
#import "TCXCoursePointType.h"
#import "TCXExtensions.h"


@implementation _TCXCoursePoint 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:@"name;Name;object(TCXCoursePointName)"];
    
    [mappings bmSafeAddObject:[NSString stringWithFormat:@"time;Time;date:%@", [self dateFormatForField:@"time"]]];
    
    [mappings bmSafeAddObject:@"position;Position;object(TCXPosition)"];
    
    [mappings bmSafeAddObject:@"altitudeMeters;AltitudeMeters;double"];
    
    [mappings bmSafeAddObject:@"pointType;PointType;object(TCXCoursePointType)"];
    
    [mappings bmSafeAddObject:@"notes;Notes"];
    
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
        
    }
    return self;
}

- (NSString *)description {
	NSMutableString *s = [NSMutableString string];
	[s appendString:@"{"];
    [s appendFormat:@"class: \"%@\"", NSStringFromClass([self class])];
	
    [s appendFormat:@", %@: %@", @"name", self.name];
    
    [s appendFormat:@", %@: \"%@\"", @"time", self.time];
    
    [s appendFormat:@", %@: %@", @"position", self.position];
    
    [s appendFormat:@", %@: %@", @"altitudeMeters", self.altitudeMeters];
    
    [s appendFormat:@", %@: %@", @"pointType", self.pointType];
    
    [s appendFormat:@", %@: \"%@\"", @"notes", self.notes];
    
    [s appendFormat:@", %@: %@", @"extensions", self.extensions];
    
	[s appendString:@"}"];
	return s;
}




@end
