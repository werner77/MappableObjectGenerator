//
//  _TCXPosition.h
//  BMCommons
//
//  Generated Class
//  Copyright 2017 BehindMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BMCommons/BMAbstractMappableObject.h>

@class TCXDegreesLatitude;

@class TCXDegreesLongitude;


@interface _TCXPosition : BMAbstractMappableObject {
	
	TCXDegreesLatitude *_latitudeDegrees;
	TCXDegreesLongitude *_longitudeDegrees;
}


@property (nonatomic, strong) TCXDegreesLatitude *latitudeDegrees;
@property (nonatomic, strong) TCXDegreesLongitude *longitudeDegrees;

+ (NSString *)dateFormatForField:(NSString *)fieldName;
+ (NSString *)defaultDateFormat;

@end
