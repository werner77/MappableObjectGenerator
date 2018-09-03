//
//  _TCXTrackpoint.m
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

#import "_TCXTrackpoint.h"

#import "TCXPosition.h"
#import "TCXHeartRateInBeatsPerMinute.h"
#import "TCXCadenceValue.h"
#import "TCXSensorState.h"
#import "TCXActivityTrackpointExtensions.h"


@implementation _TCXTrackpoint 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:[NSString stringWithFormat:@"time;Time;date:%@", [self dateFormatForField:@"time"]]];
    
    [mappings bmSafeAddObject:@"position;Position;object(TCXPosition)"];
    
    [mappings bmSafeAddObject:@"altitudeMeters;AltitudeMeters;double"];
    
    [mappings bmSafeAddObject:@"distanceMeters;DistanceMeters;double"];
    
    [mappings bmSafeAddObject:@"heartRateBpm;HeartRateBpm;object(TCXHeartRateInBeatsPerMinute)"];
    
    [mappings bmSafeAddObject:@"cadence;Cadence;object(TCXCadenceValue)"];
    
    [mappings bmSafeAddObject:@"sensorState;SensorState;object(TCXSensorState)"];
    
    [mappings bmSafeAddObject:@"extensions;Extensions;object(TCXActivityTrackpointExtensions)"];
    
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
	
    [s appendFormat:@", %@: \"%@\"", @"time", self.time];
    
    [s appendFormat:@", %@: %@", @"position", self.position];
    
    [s appendFormat:@", %@: %@", @"altitudeMeters", self.altitudeMeters];
    
    [s appendFormat:@", %@: %@", @"distanceMeters", self.distanceMeters];
    
    [s appendFormat:@", %@: %@", @"heartRateBpm", self.heartRateBpm];
    
    [s appendFormat:@", %@: %@", @"cadence", self.cadence];
    
    [s appendFormat:@", %@: %@", @"sensorState", self.sensorState];
    
    [s appendFormat:@", %@: %@", @"extensions", self.extensions];
    
	[s appendString:@"}"];
	return s;
}




@end
