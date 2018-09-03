//
//  _TCXActivityLapExtensions.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class AXActivityLapExtension;


@interface _TCXActivityLapExtensions : BMAbstractMappableObject {
	
	AXActivityLapExtension *_lX;
}


@property (nonatomic, strong) AXActivityLapExtension *lX;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
