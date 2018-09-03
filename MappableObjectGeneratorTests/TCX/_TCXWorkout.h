//
//  _TCXWorkout.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXRestrictedToken;

@class TCXAbstractStep;

@class TCXAbstractSource;

@class TCXExtensions;

@class TCXSport;


@interface _TCXWorkout : BMAbstractMappableObject {
	
	TCXRestrictedToken *_name;
	NSMutableArray<TCXAbstractStep *> *_steps;
	NSMutableArray<NSDate *> *_scheduledOns;
	NSString *_notes;
	TCXAbstractSource *_creator;
	TCXExtensions *_extensions;
	TCXSport *_sport;
}


@property (nonatomic, strong) TCXRestrictedToken *name;
@property (nonatomic, strong) NSMutableArray<TCXAbstractStep *> *steps;
@property (nonatomic, strong) NSMutableArray<NSDate *> *scheduledOns;
@property (nonatomic, strong) NSString *notes;
@property (nonatomic, strong) TCXAbstractSource *creator;
@property (nonatomic, strong) TCXExtensions *extensions;
@property (nonatomic, strong) TCXSport *sport;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
