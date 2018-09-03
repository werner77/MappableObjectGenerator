//
//  _TCXIntensity.m
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

#import "_TCXIntensity.h"

#import "TCXToken.h"


@implementation _TCXIntensity 


static BMTwoWayDictionary *valueMapping = nil;

+ (void)initialize {
	if (!valueMapping) {
		valueMapping = [[BMTwoWayDictionary alloc] initWithObjectsAndKeys:
		@"Active", @(TCXIntensityActive),
		@"Resting", @(TCXIntensityResting),
		 
		nil];
	}
}


+ (NSArray *)fieldMappingFormatArray {
    NSMutableArray *mappings = [NSMutableArray array];
	
    [mappings bmSafeAddObject:@"value;;object(TCXToken)"];
    
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
	
    [s appendFormat:@", %@: %@", @"value", self.value];
    
	[s appendString:@"}"];
	return s;
}


- (TCXIntensityValue) enumValue {
    
    NSNumber *n = [valueMapping keyForObject:self.value.value];
    return [n intValue];
    
}

- (void)setEnumValue:(TCXIntensityValue)theValue {
	NSString *sValue = [valueMapping objectForKey:[NSNumber numberWithInt:theValue]];
	if (sValue == nil) {
		LogWarn(@"Value %tu is not allowed for enumeration %@", theValue, NSStringFromClass([self class]));
	}
    
    TCXToken* oValue = [TCXToken new];
    oValue.value = sValue;
    self.value = oValue;
    
}

- (BOOL)isEqual:(id)other {
    if (![other isKindOfClass:[self class]]) {
        return NO;
    }
    _TCXIntensity *otherValue = (_TCXIntensity *)other;
    return (self.value == otherValue.value || [self.value isEqual:otherValue.value]);
}

- (NSUInteger)hash {
    return self.value.hash;
}

+ (id)instanceWithEnumValue:(TCXIntensityValue)theValue {
    _TCXIntensity * instance = [[self alloc] init];
    [instance setEnumValue:theValue];
    return instance;
}




@end
