//
//  _TCXRepeat.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

#import "TCXAbstractStep.h"

@class TCXRepetitions;

@class TCXAbstractStep;


@interface _TCXRepeat : TCXAbstractStep {
	
	TCXRepetitions *_repetitions;
	NSMutableArray<TCXAbstractStep *> *_childs;
}


@property (nonatomic, strong) TCXRepetitions *repetitions;
@property (nonatomic, strong) NSMutableArray<TCXAbstractStep *> *childs;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
