//
//  _TCXAbstractSource.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXToken;


@interface _TCXAbstractSource : BMAbstractMappableObject {
	
	TCXToken *_name;
}


@property (nonatomic, strong) TCXToken *name;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
