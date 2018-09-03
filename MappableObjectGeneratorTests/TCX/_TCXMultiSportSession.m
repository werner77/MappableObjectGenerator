//
//  _TCXMultiSportSession.m
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

#import "_TCXMultiSportSession.h"

#import "TCXFirstSport.h"
#import "TCXNextSport.h"


@implementation _TCXMultiSportSession 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:[NSString stringWithFormat:@"idDate;Id;date:%@", [self dateFormatForField:@"idDate"]]];
    
    [mappings bmSafeAddObject:@"firstSport;FirstSport;object(TCXFirstSport)"];
    
    [mappings bmSafeAddObject:@"nextSports;NextSport;array(TCXNextSport)"];
    
    [mappings bmSafeAddObject:@"notes;Notes"];
    
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
        _nextSports = [NSMutableArray new];    
    }
    return self;
}

- (NSString *)description {
	NSMutableString *s = [NSMutableString string];
	[s appendString:@"{"];
    [s appendFormat:@"class: \"%@\"", NSStringFromClass([self class])];
	
    [s appendFormat:@", %@: \"%@\"", @"idDate", self.idDate];
    
    [s appendFormat:@", %@: %@", @"firstSport", self.firstSport];
    
    [s appendFormat:@", %@: %@", @"nextSports", self.nextSports];
    
    [s appendFormat:@", %@: \"%@\"", @"notes", self.notes];
    
	[s appendString:@"}"];
	return s;
}




@end
