//
//  _TCXSport.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXToken;

typedef NS_ENUM(NSUInteger, TCXSportValue) {
	TCXSportRunning = 0,
	TCXSportBiking = 1,
	TCXSportOther = 2,
	
};


@interface _TCXSport : BMAbstractMappableObject {
	
	TCXToken *_value;
}


@property (nonatomic, strong) TCXToken *value;
@property (nonatomic, assign) TCXSportValue enumValue;

+ (id)instanceWithEnumValue:(TCXSportValue)enumValue;


+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
