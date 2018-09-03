//
//  _TCXPartNumber.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXToken;


@interface _TCXPartNumber : BMAbstractMappableObject {
	
	TCXToken *_value;
}


@property (nonatomic, strong) TCXToken *value;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
