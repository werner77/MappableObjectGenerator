//
//  _TCXFirstSport.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXActivity;


@interface _TCXFirstSport : BMAbstractMappableObject {
	
	TCXActivity *_activity;
}


@property (nonatomic, strong) TCXActivity *activity;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
