//
//  _TCXDevice.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXAbstractSource.h"

@class TCXVersion;


@interface _TCXDevice : TCXAbstractSource {
	
	NSNumber *_unitId;
	NSNumber *_productID;
	TCXVersion *_version;
}


@property (nonatomic, strong) NSNumber *unitId;
@property (nonatomic, strong) NSNumber *productID;
@property (nonatomic, strong) TCXVersion *version;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
