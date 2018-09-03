//
//  _TCXMultiSportFolder.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXMultiSportFolder;

@class TCXActivityReference;

@class TCXWeek;

@class TCXExtensions;


@interface _TCXMultiSportFolder : BMAbstractMappableObject {
	
	NSMutableArray<TCXMultiSportFolder *> *_folders;
	NSMutableArray<TCXActivityReference *> *_multisportActivityRefs;
	NSMutableArray<TCXWeek *> *_weeks;
	NSString *_notes;
	TCXExtensions *_extensions;
	NSString *_name;
}


@property (nonatomic, strong) NSMutableArray<TCXMultiSportFolder *> *folders;
@property (nonatomic, strong) NSMutableArray<TCXActivityReference *> *multisportActivityRefs;
@property (nonatomic, strong) NSMutableArray<TCXWeek *> *weeks;
@property (nonatomic, strong) NSString *notes;
@property (nonatomic, strong) TCXExtensions *extensions;
@property (nonatomic, strong) NSString *name;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
