//
//  _TCXActivityList.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXActivity;

@class TCXMultiSportSession;


@interface _TCXActivityList : BMAbstractMappableObject {
	
	NSMutableArray<TCXActivity *> *_activities;
	NSMutableArray<TCXMultiSportSession *> *_multiSportSessions;
}


@property (nonatomic, strong) NSMutableArray<TCXActivity *> *activities;
@property (nonatomic, strong) NSMutableArray<TCXMultiSportSession *> *multiSportSessions;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
