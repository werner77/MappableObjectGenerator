//
//  _TCXTrainingCenterDatabase.m
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

#import "_TCXTrainingCenterDatabase.h"

#import "TCXFolders.h"
#import "TCXActivityList.h"
#import "TCXWorkoutList.h"
#import "TCXCourseList.h"
#import "TCXAbstractSource.h"
#import "TCXExtensions.h"


@implementation _TCXTrainingCenterDatabase 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:@"folders;Folders;object(TCXFolders)"];
    
    [mappings bmSafeAddObject:@"activities;Activities;object(TCXActivityList)"];
    
    [mappings bmSafeAddObject:@"workouts;Workouts;object(TCXWorkoutList)"];
    
    [mappings bmSafeAddObject:@"courses;Courses;object(TCXCourseList)"];
    
    [mappings bmSafeAddObject:@"author;Author;object(TCXAbstractSource)"];
    
    [mappings bmSafeAddObject:@"extensions;Extensions;object(TCXExtensions)"];
    
	return mappings;
}


+ (NSString *)rootElementName {
    return @"TrainingCenterDatabase";
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
	
    [s appendFormat:@", %@: %@", @"folders", self.folders];
    
    [s appendFormat:@", %@: %@", @"activities", self.activities];
    
    [s appendFormat:@", %@: %@", @"workouts", self.workouts];
    
    [s appendFormat:@", %@: %@", @"courses", self.courses];
    
    [s appendFormat:@", %@: %@", @"author", self.author];
    
    [s appendFormat:@", %@: %@", @"extensions", self.extensions];
    
	[s appendString:@"}"];
	return s;
}




@end
