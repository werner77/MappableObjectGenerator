//
//  _TCXHistory.m
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

#import "_TCXHistory.h"

#import "TCXHistoryFolder.h"
#import "TCXHistoryFolder.h"
#import "TCXHistoryFolder.h"
#import "TCXMultiSportFolder.h"
#import "TCXExtensions.h"


@implementation _TCXHistory 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:@"running;Running;object(TCXHistoryFolder)"];
    
    [mappings bmSafeAddObject:@"biking;Biking;object(TCXHistoryFolder)"];
    
    [mappings bmSafeAddObject:@"other;Other;object(TCXHistoryFolder)"];
    
    [mappings bmSafeAddObject:@"multiSport;MultiSport;object(TCXMultiSportFolder)"];
    
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
	
    [s appendFormat:@", %@: %@", @"running", self.running];
    
    [s appendFormat:@", %@: %@", @"biking", self.biking];
    
    [s appendFormat:@", %@: %@", @"other", self.other];
    
    [s appendFormat:@", %@: %@", @"multiSport", self.multiSport];
    
    [s appendFormat:@", %@: %@", @"extensions", self.extensions];
    
	[s appendString:@"}"];
	return s;
}




@end
