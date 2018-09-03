//
//  _TCXBuild.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXVersion;

@class TCXBuildType;

@class TCXToken;

@class TCXToken;


@interface _TCXBuild : BMAbstractMappableObject {
	
	TCXVersion *_version;
	TCXBuildType *_type;
	TCXToken *_time;
	TCXToken *_builder;
}


@property (nonatomic, strong) TCXVersion *version;
@property (nonatomic, strong) TCXBuildType *type;
@property (nonatomic, strong) TCXToken *time;
@property (nonatomic, strong) TCXToken *builder;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
