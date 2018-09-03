//
//  _TCXTraining.m
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

#import "_TCXTraining.h"

#import "TCXQuickWorkout.h"
#import "TCXPlan.h"


@implementation _TCXTraining 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:@"quickWorkoutResults;QuickWorkoutResults;object(TCXQuickWorkout)"];
    
    [mappings bmSafeAddObject:@"plan;Plan;object(TCXPlan)"];
    
    [mappings bmSafeAddObject:@"virtualPartner;@VirtualPartner;bool"];
    
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
	
    [s appendFormat:@", %@: %@", @"quickWorkoutResults", self.quickWorkoutResults];
    
    [s appendFormat:@", %@: %@", @"plan", self.plan];
    
    [s appendFormat:@", %@: %@", @"virtualPartner", self.virtualPartner];
    
	[s appendString:@"}"];
	return s;
}




@end
