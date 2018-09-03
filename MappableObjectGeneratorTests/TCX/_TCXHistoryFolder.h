//
//  _TCXHistoryFolder.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXHistoryFolder;

@class TCXActivityReference;

@class TCXWeek;

@class TCXExtensions;


@interface _TCXHistoryFolder : BMAbstractMappableObject {
	
	NSMutableArray<TCXHistoryFolder *> *_folders;
	NSMutableArray<TCXActivityReference *> *_activityRefs;
	NSMutableArray<TCXWeek *> *_weeks;
	NSString *_notes;
	TCXExtensions *_extensions;
	NSString *_name;
}


@property (nonatomic, strong) NSMutableArray<TCXHistoryFolder *> *folders;
@property (nonatomic, strong) NSMutableArray<TCXActivityReference *> *activityRefs;
@property (nonatomic, strong) NSMutableArray<TCXWeek *> *weeks;
@property (nonatomic, strong) NSString *notes;
@property (nonatomic, strong) TCXExtensions *extensions;
@property (nonatomic, strong) NSString *name;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
