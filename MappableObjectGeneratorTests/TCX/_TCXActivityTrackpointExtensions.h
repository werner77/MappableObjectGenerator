//
//  _TCXActivityTrackpointExtensions.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class AXActivityTrackpointExtension;


@interface _TCXActivityTrackpointExtensions : BMAbstractMappableObject {
	
	AXActivityTrackpointExtension *_tPX;
}


@property (nonatomic, strong) AXActivityTrackpointExtension *tPX;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
