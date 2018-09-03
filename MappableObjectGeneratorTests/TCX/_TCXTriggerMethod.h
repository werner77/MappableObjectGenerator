//
//  _TCXTriggerMethod.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXToken;

typedef NS_ENUM(NSUInteger, TCXTriggerMethodValue) {
	TCXTriggerMethodManual = 0,
	TCXTriggerMethodDistance = 1,
	TCXTriggerMethodLocation = 2,
	TCXTriggerMethodTime = 3,
	TCXTriggerMethodHeartrate = 4,
	
};


@interface _TCXTriggerMethod : BMAbstractMappableObject {
	
	TCXToken *_value;
}


@property (nonatomic, strong) TCXToken *value;
@property (nonatomic, assign) TCXTriggerMethodValue enumValue;

+ (id)instanceWithEnumValue:(TCXTriggerMethodValue)enumValue;


+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
