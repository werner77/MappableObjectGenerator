//
//  _TCXNextSport.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXActivityLap;

@class TCXActivity;


@interface _TCXNextSport : BMAbstractMappableObject {
	
	TCXActivityLap *_transition;
	TCXActivity *_activity;
}


@property (nonatomic, strong) TCXActivityLap *transition;
@property (nonatomic, strong) TCXActivity *activity;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
