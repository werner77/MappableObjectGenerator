//
//  _AXActivityTrackpointExtension.m
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

#import "_AXActivityTrackpointExtension.h"

#import "AXCadenceValue.h"
#import "AXExtensions.h"
#import "AXCadenceSensorType.h"


@implementation _AXActivityTrackpointExtension 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:@"speed;Speed;double"];
    
    [mappings bmSafeAddObject:@"runCadence;RunCadence;object(AXCadenceValue)"];
    
    [mappings bmSafeAddObject:@"watts;Watts;int"];
    
    [mappings bmSafeAddObject:@"extensions;Extensions;object(AXExtensions)"];
    
    [mappings bmSafeAddObject:@"cadenceSensor;@CadenceSensor;object(AXCadenceSensorType)"];
    
	return mappings;
}


+ (NSString *)rootElementName {
    return @"TPX";
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
	
    [s appendFormat:@", %@: %@", @"speed", self.speed];
    
    [s appendFormat:@", %@: %@", @"runCadence", self.runCadence];
    
    [s appendFormat:@", %@: %@", @"watts", self.watts];
    
    [s appendFormat:@", %@: %@", @"extensions", self.extensions];
    
    [s appendFormat:@", %@: %@", @"cadenceSensor", self.cadenceSensor];
    
	[s appendString:@"}"];
	return s;
}




@end
