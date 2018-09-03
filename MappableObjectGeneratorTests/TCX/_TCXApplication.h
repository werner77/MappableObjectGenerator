//
//  _TCXApplication.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXAbstractSource.h"

@class TCXBuild;

@class TCXLangID;

@class TCXPartNumber;


@interface _TCXApplication : TCXAbstractSource {
	
	TCXBuild *_build;
	TCXLangID *_langID;
	TCXPartNumber *_partNumber;
}


@property (nonatomic, strong) TCXBuild *build;
@property (nonatomic, strong) TCXLangID *langID;
@property (nonatomic, strong) TCXPartNumber *partNumber;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
