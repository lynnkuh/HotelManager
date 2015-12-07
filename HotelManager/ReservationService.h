//
//  ReservationService.h
//  HotelManager
//
//  Created by Regular User on 12/2/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Reservation.h"
#import "Guest.h"
#import "NSObject+NSManagedObjectContext_Category.h"

@class Room;

@interface ReservationService : NSManagedObject

+ (NSArray *)unavailableRooms:(NSDate *)startDate endDate:(NSDate *)endDate;

+ (void)createReservationWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate room:(Room *)room name:(NSString *) name;

@end


