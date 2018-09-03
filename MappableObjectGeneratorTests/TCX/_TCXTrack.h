//
//  _TCXTrack.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXTrackpoint;


@interface _TCXTrack : BMAbstractMappableObject {
	
	NSMutableArray<TCXTrackpoint *> *_trackpoints;
}


@property (nonatomic, strong) NSMutableArray<TCXTrackpoint *> *trackpoints;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
