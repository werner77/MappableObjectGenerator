//
//  _TCXCourseLap.m
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

#import "_TCXCourseLap.h"

#import "TCXPosition.h"
#import "TCXPosition.h"
#import "TCXHeartRateInBeatsPerMinute.h"
#import "TCXHeartRateInBeatsPerMinute.h"
#import "TCXIntensity.h"
#import "TCXCadenceValue.h"
#import "TCXExtensions.h"


@implementation _TCXCourseLap 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:@"totalTimeSeconds;TotalTimeSeconds;double"];
    
    [mappings bmSafeAddObject:@"distanceMeters;DistanceMeters;double"];
    
    [mappings bmSafeAddObject:@"beginPosition;BeginPosition;object(TCXPosition)"];
    
    [mappings bmSafeAddObject:@"beginAltitudeMeters;BeginAltitudeMeters;double"];
    
    [mappings bmSafeAddObject:@"endPosition;EndPosition;object(TCXPosition)"];
    
    [mappings bmSafeAddObject:@"endAltitudeMeters;EndAltitudeMeters;double"];
    
    [mappings bmSafeAddObject:@"averageHeartRateBpm;AverageHeartRateBpm;object(TCXHeartRateInBeatsPerMinute)"];
    
    [mappings bmSafeAddObject:@"maximumHeartRateBpm;MaximumHeartRateBpm;object(TCXHeartRateInBeatsPerMinute)"];
    
    [mappings bmSafeAddObject:@"intensity;Intensity;object(TCXIntensity)"];
    
    [mappings bmSafeAddObject:@"cadence;Cadence;object(TCXCadenceValue)"];
    
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
	
    [s appendFormat:@", %@: %@", @"totalTimeSeconds", self.totalTimeSeconds];
    
    [s appendFormat:@", %@: %@", @"distanceMeters", self.distanceMeters];
    
    [s appendFormat:@", %@: %@", @"beginPosition", self.beginPosition];
    
    [s appendFormat:@", %@: %@", @"beginAltitudeMeters", self.beginAltitudeMeters];
    
    [s appendFormat:@", %@: %@", @"endPosition", self.endPosition];
    
    [s appendFormat:@", %@: %@", @"endAltitudeMeters", self.endAltitudeMeters];
    
    [s appendFormat:@", %@: %@", @"averageHeartRateBpm", self.averageHeartRateBpm];
    
    [s appendFormat:@", %@: %@", @"maximumHeartRateBpm", self.maximumHeartRateBpm];
    
    [s appendFormat:@", %@: %@", @"intensity", self.intensity];
    
    [s appendFormat:@", %@: %@", @"cadence", self.cadence];
    
    [s appendFormat:@", %@: %@", @"extensions", self.extensions];
    
	[s appendString:@"}"];
	return s;
}




@end
