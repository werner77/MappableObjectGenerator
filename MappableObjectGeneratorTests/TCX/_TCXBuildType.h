//
//  _TCXBuildType.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXToken;

typedef NS_ENUM(NSUInteger, TCXBuildTypeValue) {
	TCXBuildTypeInternal = 0,
	TCXBuildTypeAlpha = 1,
	TCXBuildTypeBeta = 2,
	TCXBuildTypeRelease = 3,
	
};


@interface _TCXBuildType : BMAbstractMappableObject {
	
	TCXToken *_value;
}


@property (nonatomic, strong) TCXToken *value;
@property (nonatomic, assign) TCXBuildTypeValue enumValue;

+ (id)instanceWithEnumValue:(TCXBuildTypeValue)enumValue;


+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
