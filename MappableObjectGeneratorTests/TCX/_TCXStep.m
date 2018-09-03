//
//  _TCXStep.m
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

#import "_TCXStep.h"

#import "TCXRestrictedToken.h"
#import "TCXDuration.h"
#import "TCXIntensity.h"
#import "TCXTarget.h"


@implementation _TCXStep 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings addObjectsFromArray:[super fieldMappingFormatArray]];
    
    [mappings bmSafeAddObject:@"name;Name;object(TCXRestrictedToken)"];
    
    [mappings bmSafeAddObject:@"duration;Duration;object(TCXDuration)"];
    
    [mappings bmSafeAddObject:@"intensity;Intensity;object(TCXIntensity)"];
    
    [mappings bmSafeAddObject:@"target;Target;object(TCXTarget)"];
    
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
	
    [s appendFormat:@", %@: %@", @"name", self.name];
    
    [s appendFormat:@", %@: %@", @"duration", self.duration];
    
    [s appendFormat:@", %@: %@", @"intensity", self.intensity];
    
    [s appendFormat:@", %@: %@", @"target", self.target];
    
    [s appendFormat:@", %@: %@", @"stepId", self.stepId];
    
	[s appendString:@"}"];
	return s;
}




@end
