//
//  _TCXBuild.m
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

#import "_TCXBuild.h"

#import "TCXVersion.h"
#import "TCXBuildType.h"
#import "TCXToken.h"
#import "TCXToken.h"


@implementation _TCXBuild 



+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:@"version;Version;object(TCXVersion)"];
    
    [mappings bmSafeAddObject:@"type;Type;object(TCXBuildType)"];
    
    [mappings bmSafeAddObject:@"time;Time;object(TCXToken)"];
    
    [mappings bmSafeAddObject:@"builder;Builder;object(TCXToken)"];
    
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
	
    [s appendFormat:@", %@: %@", @"version", self.version];
    
    [s appendFormat:@", %@: %@", @"type", self.type];
    
    [s appendFormat:@", %@: %@", @"time", self.time];
    
    [s appendFormat:@", %@: %@", @"builder", self.builder];
    
	[s appendString:@"}"];
	return s;
}




@end
