//
//  _TCXWorkout.m
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

#import "_TCXWorkout.h"

#import "TCXRestrictedToken.h"
#import "TCXAbstractStep.h"
#import "TCXAbstractSource.h"
#import "TCXExtensions.h"
#import "TCXSport.h"


@implementation _TCXWorkout 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:@"name;Name;object(TCXRestrictedToken)"];
    
    [mappings bmSafeAddObject:@"steps;Step;array(TCXAbstractStep)"];
    
    [mappings bmSafeAddObject:[NSString stringWithFormat:@"scheduledOns;ScheduledOn;array(date):%@", [self dateFormatForField:@"scheduledOns"]]];
    
    [mappings bmSafeAddObject:@"notes;Notes"];
    
    [mappings bmSafeAddObject:@"creator;Creator;object(TCXAbstractSource)"];
    
    [mappings bmSafeAddObject:@"extensions;Extensions;object(TCXExtensions)"];
    
    [mappings bmSafeAddObject:@"sport;@Sport;object(TCXSport)"];
    
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
        _steps = [NSMutableArray new];    _scheduledOns = [NSMutableArray new];    
    }
    return self;
}

- (NSString *)description {
	NSMutableString *s = [NSMutableString string];
	[s appendString:@"{"];
    [s appendFormat:@"class: \"%@\"", NSStringFromClass([self class])];
	
    [s appendFormat:@", %@: %@", @"name", self.name];
    
    [s appendFormat:@", %@: %@", @"steps", self.steps];
    
    [s appendFormat:@", %@: \"%@\"", @"scheduledOns", self.scheduledOns];
    
    [s appendFormat:@", %@: \"%@\"", @"notes", self.notes];
    
    [s appendFormat:@", %@: %@", @"creator", self.creator];
    
    [s appendFormat:@", %@: %@", @"extensions", self.extensions];
    
    [s appendFormat:@", %@: %@", @"sport", self.sport];
    
	[s appendString:@"}"];
	return s;
}




@end
