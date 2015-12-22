//
//  Reservation.h
//  HotelManager
//
//  Created by Regular User on 11/30/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Guest, Room;

NS_ASSUME_NONNULL_BEGIN

@interface Reservation : NSManagedObject

+ (NSArray *)unavailableRooms:(NSDate *)startDate endDate:(NSDate *)endDate;

+ (instancetype)reservationWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate room:(Room *)room;

@end


NS_ASSUME_NONNULL_END

#import "Reservation+CoreDataProperties.h"
