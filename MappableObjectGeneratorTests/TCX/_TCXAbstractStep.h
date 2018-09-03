//
//  _TCXAbstractStep.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXStepId;


@interface _TCXAbstractStep : BMAbstractMappableObject {
	
	TCXStepId *_stepId;
}


@property (nonatomic, strong) TCXStepId *stepId;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
