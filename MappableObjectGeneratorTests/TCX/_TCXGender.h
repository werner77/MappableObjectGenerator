//
//  _TCXGender.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXToken;

typedef NS_ENUM(NSUInteger, TCXGenderValue) {
	TCXGenderMale = 0,
	TCXGenderFemale = 1,
	
};


@interface _TCXGender : BMAbstractMappableObject {
	
	TCXToken *_value;
}


@property (nonatomic, strong) TCXToken *value;
@property (nonatomic, assign) TCXGenderValue enumValue;

+ (id)instanceWithEnumValue:(TCXGenderValue)enumValue;


+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
