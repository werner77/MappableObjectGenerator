//
//  _TCXMultiSportSession.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXFirstSport;

@class TCXNextSport;


@interface _TCXMultiSportSession : BMAbstractMappableObject {
	
	NSDate *_idDate;
	TCXFirstSport *_firstSport;
	NSMutableArray<TCXNextSport *> *_nextSports;
	NSString *_notes;
}


@property (nonatomic, strong) NSDate *idDate;
@property (nonatomic, strong) TCXFirstSport *firstSport;
@property (nonatomic, strong) NSMutableArray<TCXNextSport *> *nextSports;
@property (nonatomic, strong) NSString *notes;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
