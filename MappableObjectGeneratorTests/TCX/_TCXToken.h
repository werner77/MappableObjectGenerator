//
//  _TCXToken.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>


@interface _TCXToken : BMAbstractMappableObject {
	
	NSString *_value;
}


@property (nonatomic, strong) NSString *value;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
