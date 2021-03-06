//
//  _TCXApplication.m
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

#import "_TCXApplication.h"

#import "TCXBuild.h"
#import "TCXLangID.h"
#import "TCXPartNumber.h"


@implementation _TCXApplication 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings addObjectsFromArray:[super fieldMappingFormatArray]];
    
    [mappings bmSafeAddObject:@"build;Build;object(TCXBuild)"];
    
    [mappings bmSafeAddObject:@"langID;LangID;object(TCXLangID)"];
    
    [mappings bmSafeAddObject:@"partNumber;PartNumber;object(TCXPartNumber)"];
    
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
	
    [s appendFormat:@", %@: %@", @"build", self.build];
    
    [s appendFormat:@", %@: %@", @"langID", self.langID];
    
    [s appendFormat:@", %@: %@", @"partNumber", self.partNumber];
    
    [s appendFormat:@", %@: %@", @"name", self.name];
    
	[s appendString:@"}"];
	return s;
}




@end
