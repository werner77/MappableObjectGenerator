//
//  _TCXActivityReference.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>


@interface _TCXActivityReference : BMAbstractMappableObject {
	
	NSDate *_idDate;
}


@property (nonatomic, strong) NSDate *idDate;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
