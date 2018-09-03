//
//  _TCXDevice.m
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

#import "_TCXDevice.h"

#import "TCXVersion.h"


@implementation _TCXDevice 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings addObjectsFromArray:[super fieldMappingFormatArray]];
    
    [mappings bmSafeAddObject:@"unitId;UnitId;int"];
    
    [mappings bmSafeAddObject:@"productID;ProductID;int"];
    
    [mappings bmSafeAddObject:@"version;Version;object(TCXVersion)"];
    
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
	
    [s appendFormat:@", %@: %@", @"unitId", self.unitId];
    
    [s appendFormat:@", %@: %@", @"productID", self.productID];
    
    [s appendFormat:@", %@: %@", @"version", self.version];
    
    [s appendFormat:@", %@: %@", @"name", self.name];
    
	[s appendString:@"}"];
	return s;
}




@end
