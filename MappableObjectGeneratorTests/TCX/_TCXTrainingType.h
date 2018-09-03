//
//  _TCXTrainingType.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXToken;

typedef NS_ENUM(NSUInteger, TCXTrainingTypeValue) {
	TCXTrainingTypeWorkout = 0,
	TCXTrainingTypeCourse = 1,
	
};


@interface _TCXTrainingType : BMAbstractMappableObject {
	
	TCXToken *_value;
}


@property (nonatomic, strong) TCXToken *value;
@property (nonatomic, assign) TCXTrainingTypeValue enumValue;

+ (id)instanceWithEnumValue:(TCXTrainingTypeValue)enumValue;


+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
