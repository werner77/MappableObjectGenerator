//
//  _TCXNameKeyReference.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXRestrictedToken;


@interface _TCXNameKeyReference : BMAbstractMappableObject {
	
	TCXRestrictedToken *_idObject;
}


@property (nonatomic, strong) TCXRestrictedToken *idObject;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
