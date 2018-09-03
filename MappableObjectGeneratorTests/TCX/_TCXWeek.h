//
//  _TCXWeek.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>


@interface _TCXWeek : BMAbstractMappableObject {
	
	NSString *_notes;
	NSDate *_startDay;
}


@property (nonatomic, strong) NSString *notes;
@property (nonatomic, strong) NSDate *startDay;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
