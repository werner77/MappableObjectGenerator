//
//  _TCXMultiSportFolder.m
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

#import "_TCXMultiSportFolder.h"

#import "TCXMultiSportFolder.h"
#import "TCXActivityReference.h"
#import "TCXWeek.h"
#import "TCXExtensions.h"


@implementation _TCXMultiSportFolder 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:@"folders;Folder;array(TCXMultiSportFolder)"];
    
    [mappings bmSafeAddObject:@"multisportActivityRefs;MultisportActivityRef;array(TCXActivityReference)"];
    
    [mappings bmSafeAddObject:@"weeks;Week;array(TCXWeek)"];
    
    [mappings bmSafeAddObject:@"notes;Notes"];
    
    [mappings bmSafeAddObject:@"extensions;Extensions;object(TCXExtensions)"];
    
    [mappings bmSafeAddObject:@"name;@Name"];
    
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
        _folders = [NSMutableArray new];    _multisportActivityRefs = [NSMutableArray new];    _weeks = [NSMutableArray new];    
    }
    return self;
}

- (NSString *)description {
	NSMutableString *s = [NSMutableString string];
	[s appendString:@"{"];
    [s appendFormat:@"class: \"%@\"", NSStringFromClass([self class])];
	
    [s appendFormat:@", %@: %@", @"folders", self.folders];
    
    [s appendFormat:@", %@: %@", @"multisportActivityRefs", self.multisportActivityRefs];
    
    [s appendFormat:@", %@: %@", @"weeks", self.weeks];
    
    [s appendFormat:@", %@: \"%@\"", @"notes", self.notes];
    
    [s appendFormat:@", %@: %@", @"extensions", self.extensions];
    
    [s appendFormat:@", %@: \"%@\"", @"name", self.name];
    
	[s appendString:@"}"];
	return s;
}




@end
