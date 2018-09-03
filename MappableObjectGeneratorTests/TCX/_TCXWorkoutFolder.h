//
//  _TCXWorkoutFolder.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXWorkoutFolder;

@class TCXNameKeyReference;

@class TCXExtensions;


@interface _TCXWorkoutFolder : BMAbstractMappableObject {
	
	NSMutableArray<TCXWorkoutFolder *> *_folders;
	NSMutableArray<TCXNameKeyReference *> *_workoutNameRefs;
	TCXExtensions *_extensions;
	NSString *_name;
}


@property (nonatomic, strong) NSMutableArray<TCXWorkoutFolder *> *folders;
@property (nonatomic, strong) NSMutableArray<TCXNameKeyReference *> *workoutNameRefs;
@property (nonatomic, strong) TCXExtensions *extensions;
@property (nonatomic, strong) NSString *name;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
