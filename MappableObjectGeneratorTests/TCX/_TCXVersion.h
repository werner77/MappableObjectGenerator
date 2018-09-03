//
//  _TCXVersion.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>


@interface _TCXVersion : BMAbstractMappableObject {
	
	NSNumber *_versionMajor;
	NSNumber *_versionMinor;
	NSNumber *_buildMajor;
	NSNumber *_buildMinor;
}


@property (nonatomic, strong) NSNumber *versionMajor;
@property (nonatomic, strong) NSNumber *versionMinor;
@property (nonatomic, strong) NSNumber *buildMajor;
@property (nonatomic, strong) NSNumber *buildMinor;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
