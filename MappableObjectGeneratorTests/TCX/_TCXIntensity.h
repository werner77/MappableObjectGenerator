//
//  _TCXIntensity.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXToken;

typedef NS_ENUM(NSUInteger, TCXIntensityValue) {
	TCXIntensityActive = 0,
	TCXIntensityResting = 1,
	
};


@interface _TCXIntensity : BMAbstractMappableObject {
	
	TCXToken *_value;
}


@property (nonatomic, strong) TCXToken *value;
@property (nonatomic, assign) TCXIntensityValue enumValue;

+ (id)instanceWithEnumValue:(TCXIntensityValue)enumValue;


+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
