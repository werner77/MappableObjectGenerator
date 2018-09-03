//
//  _TCXActivityLap.m
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

#import "_TCXActivityLap.h"

#import "TCXHeartRateInBeatsPerMinute.h"
#import "TCXHeartRateInBeatsPerMinute.h"
#import "TCXIntensity.h"
#import "TCXCadenceValue.h"
#import "TCXTriggerMethod.h"
#import "TCXTrack.h"
#import "TCXActivityLapExtensions.h"


@implementation _TCXActivityLap 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:@"totalTimeSeconds;TotalTimeSeconds;double"];
    
    [mappings bmSafeAddObject:@"distanceMeters;DistanceMeters;double"];
    
    [mappings bmSafeAddObject:@"maximumSpeed;MaximumSpeed;double"];
    
    [mappings bmSafeAddObject:@"calories;Calories;int"];
    
    [mappings bmSafeAddObject:@"averageHeartRateBpm;AverageHeartRateBpm;object(TCXHeartRateInBeatsPerMinute)"];
    
    [mappings bmSafeAddObject:@"maximumHeartRateBpm;MaximumHeartRateBpm;object(TCXHeartRateInBeatsPerMinute)"];
    
    [mappings bmSafeAddObject:@"intensity;Intensity;object(TCXIntensity)"];
    
    [mappings bmSafeAddObject:@"cadence;Cadence;object(TCXCadenceValue)"];
    
    [mappings bmSafeAddObject:@"triggerMethod;TriggerMethod;object(TCXTriggerMethod)"];
    
    [mappings bmSafeAddObject:@"tracks;Track;array(TCXTrack)"];
    
    [mappings bmSafeAddObject:@"notes;Notes"];
    
    [mappings bmSafeAddObject:@"extensions;Extensions;object(TCXActivityLapExtensions)"];
    
    [mappings bmSafeAddObject:[NSString stringWithFormat:@"startTime;@StartTime;date:%@", [self dateFormatForField:@"startTime"]]];
    
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
        _tracks = [NSMutableArray new];    
    }
    return self;
}

- (NSString *)description {
	NSMutableString *s = [NSMutableString string];
	[s appendString:@"{"];
    [s appendFormat:@"class: \"%@\"", NSStringFromClass([self class])];
	
    [s appendFormat:@", %@: %@", @"totalTimeSeconds", self.totalTimeSeconds];
    
    [s appendFormat:@", %@: %@", @"distanceMeters", self.distanceMeters];
    
    [s appendFormat:@", %@: %@", @"maximumSpeed", self.maximumSpeed];
    
    [s appendFormat:@", %@: %@", @"calories", self.calories];
    
    [s appendFormat:@", %@: %@", @"averageHeartRateBpm", self.averageHeartRateBpm];
    
    [s appendFormat:@", %@: %@", @"maximumHeartRateBpm", self.maximumHeartRateBpm];
    
    [s appendFormat:@", %@: %@", @"intensity", self.intensity];
    
    [s appendFormat:@", %@: %@", @"cadence", self.cadence];
    
    [s appendFormat:@", %@: %@", @"triggerMethod", self.triggerMethod];
    
    [s appendFormat:@", %@: %@", @"tracks", self.tracks];
    
    [s appendFormat:@", %@: \"%@\"", @"notes", self.notes];
    
    [s appendFormat:@", %@: %@", @"extensions", self.extensions];
    
    [s appendFormat:@", %@: \"%@\"", @"startTime", self.startTime];
    
	[s appendString:@"}"];
	return s;
}




@end
