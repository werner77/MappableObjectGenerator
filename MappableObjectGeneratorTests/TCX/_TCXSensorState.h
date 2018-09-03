//
//  _TCXSensorState.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXToken;

typedef NS_ENUM(NSUInteger, TCXSensorStateValue) {
	TCXSensorStatePresent = 0,
	TCXSensorStateAbsent = 1,
	
};


@interface _TCXSensorState : BMAbstractMappableObject {
	
	TCXToken *_value;
}


@property (nonatomic, strong) TCXToken *value;
@property (nonatomic, assign) TCXSensorStateValue enumValue;

+ (id)instanceWithEnumValue:(TCXSensorStateValue)enumValue;


+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
