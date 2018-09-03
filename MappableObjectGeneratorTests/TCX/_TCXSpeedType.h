//
//  _TCXSpeedType.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXToken;

typedef NS_ENUM(NSUInteger, TCXSpeedTypeValue) {
	TCXSpeedTypePace = 0,
	TCXSpeedTypeSpeed = 1,
	
};


@interface _TCXSpeedType : BMAbstractMappableObject {
	
	TCXToken *_value;
}


@property (nonatomic, strong) TCXToken *value;
@property (nonatomic, assign) TCXSpeedTypeValue enumValue;

+ (id)instanceWithEnumValue:(TCXSpeedTypeValue)enumValue;


+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
