//
//  _TCXCadenceValue.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>


@interface _TCXCadenceValue : BMAbstractMappableObject {
	
	NSNumber *_value;
}


@property (nonatomic, strong) NSNumber *value;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
