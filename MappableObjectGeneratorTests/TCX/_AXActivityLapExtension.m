//
//  _AXActivityLapExtension.m
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

#import "_AXActivityLapExtension.h"

#import "AXCadenceValue.h"
#import "AXCadenceValue.h"
#import "AXCadenceValue.h"
#import "AXExtensions.h"


@implementation _AXActivityLapExtension 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:@"avgSpeed;AvgSpeed;double"];
    
    [mappings bmSafeAddObject:@"maxBikeCadence;MaxBikeCadence;object(AXCadenceValue)"];
    
    [mappings bmSafeAddObject:@"avgRunCadence;AvgRunCadence;object(AXCadenceValue)"];
    
    [mappings bmSafeAddObject:@"maxRunCadence;MaxRunCadence;object(AXCadenceValue)"];
    
    [mappings bmSafeAddObject:@"steps;Steps;int"];
    
    [mappings bmSafeAddObject:@"avgWatts;AvgWatts;int"];
    
    [mappings bmSafeAddObject:@"maxWatts;MaxWatts;int"];
    
    [mappings bmSafeAddObject:@"extensions;Extensions;object(AXExtensions)"];
    
	return mappings;
}


+ (NSString *)rootElementName {
    return @"LX";
}


+ (NSDictionary *)fieldMappingNamespaces {
    NSMutableDictionary *namespaces = [NSMutableDictionary dictionary];
    
    return namespaces;
}

+ (NSString *)namespaceURI {
	return @"http://www.garmin.com/xmlschemas/ActivityExtension/v2";
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
	
    [s appendFormat:@", %@: %@", @"avgSpeed", self.avgSpeed];
    
    [s appendFormat:@", %@: %@", @"maxBikeCadence", self.maxBikeCadence];
    
    [s appendFormat:@", %@: %@", @"avgRunCadence", self.avgRunCadence];
    
    [s appendFormat:@", %@: %@", @"maxRunCadence", self.maxRunCadence];
    
    [s appendFormat:@", %@: %@", @"steps", self.steps];
    
    [s appendFormat:@", %@: %@", @"avgWatts", self.avgWatts];
    
    [s appendFormat:@", %@: %@", @"maxWatts", self.maxWatts];
    
    [s appendFormat:@", %@: %@", @"extensions", self.extensions];
    
	[s appendString:@"}"];
	return s;
}




@end
