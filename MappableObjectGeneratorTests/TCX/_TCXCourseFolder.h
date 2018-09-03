//
//  _TCXCourseFolder.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXCourseFolder;

@class TCXNameKeyReference;

@class TCXExtensions;


@interface _TCXCourseFolder : BMAbstractMappableObject {
	
	NSMutableArray<TCXCourseFolder *> *_folders;
	NSMutableArray<TCXNameKeyReference *> *_courseNameRefs;
	NSString *_notes;
	TCXExtensions *_extensions;
	NSString *_name;
}


@property (nonatomic, strong) NSMutableArray<TCXCourseFolder *> *folders;
@property (nonatomic, strong) NSMutableArray<TCXNameKeyReference *> *courseNameRefs;
@property (nonatomic, strong) NSString *notes;
@property (nonatomic, strong) TCXExtensions *extensions;
@property (nonatomic, strong) NSString *name;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
