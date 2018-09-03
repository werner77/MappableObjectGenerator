//
//  _TCXCustomSpeedZone.m
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

#import "_TCXCustomSpeedZone.h"

#import "TCXSpeedType.h"
#import "TCXSpeedInMetersPerSecond.h"
#import "TCXSpeedInMetersPerSecond.h"


@implementation _TCXCustomSpeedZone 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings addObjectsFromArray:[super fieldMappingFormatArray]];
    
    [mappings bmSafeAddObject:@"viewAs;ViewAs;object(TCXSpeedType)"];
    
    [mappings bmSafeAddObject:@"lowInMetersPerSecond;LowInMetersPerSecond;object(TCXSpeedInMetersPerSecond)"];
    
    [mappings bmSafeAddObject:@"highInMetersPerSecond;HighInMetersPerSecond;object(TCXSpeedInMetersPerSecond)"];
    
	return mappings;
}



+ (NSDictionary *)fieldMappingNamespaces {
    NSMutableDictionary *namespaces = [NSMutableDictionary dictionary];
    
	[namespaces addEntriesFromDictionary:[super fieldMappingNamespaces]];
	
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
	
    [s appendFormat:@", %@: %@", @"viewAs", self.viewAs];
    
    [s appendFormat:@", %@: %@", @"lowInMetersPerSecond", self.lowInMetersPerSecond];
    
    [s appendFormat:@", %@: %@", @"highInMetersPerSecond", self.highInMetersPerSecond];
    
	[s appendString:@"}"];
	return s;
}




@end
