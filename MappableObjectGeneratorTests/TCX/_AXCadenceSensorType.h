//
//  _AXCadenceSensorType.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class AXToken;

typedef NS_ENUM(NSUInteger, AXCadenceSensorTypeValue) {
	AXCadenceSensorTypeFootpod = 0,
	AXCadenceSensorTypeBike = 1,
	
};


@interface _AXCadenceSensorType : BMAbstractMappableObject {
	
	AXToken *_value;
}


@property (nonatomic, strong) AXToken *value;
@property (nonatomic, assign) AXCadenceSensorTypeValue enumValue;

+ (id)instanceWithEnumValue:(AXCadenceSensorTypeValue)enumValue;


+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
