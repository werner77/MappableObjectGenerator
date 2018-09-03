//
//  _TCXCoursePointType.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXToken;

typedef NS_ENUM(NSUInteger, TCXCoursePointTypeValue) {
	TCXCoursePointTypeGeneric = 0,
	TCXCoursePointTypeSummit = 1,
	TCXCoursePointTypeValley = 2,
	TCXCoursePointTypeWater = 3,
	TCXCoursePointTypeFood = 4,
	TCXCoursePointTypeDanger = 5,
	TCXCoursePointTypeLeft = 6,
	TCXCoursePointTypeRight = 7,
	TCXCoursePointTypeStraight = 8,
	TCXCoursePointTypeFirst_Aid = 9,
	TCXCoursePointType4Th_Category = 10,
	TCXCoursePointType3Rd_Category = 11,
	TCXCoursePointType2Nd_Category = 12,
	TCXCoursePointType1St_Category = 13,
	TCXCoursePointTypeHors_Category = 14,
	TCXCoursePointTypeSprint = 15,
	
};


@interface _TCXCoursePointType : BMAbstractMappableObject {
	
	TCXToken *_value;
}


@property (nonatomic, strong) TCXToken *value;
@property (nonatomic, assign) TCXCoursePointTypeValue enumValue;

+ (id)instanceWithEnumValue:(TCXCoursePointTypeValue)enumValue;


+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
