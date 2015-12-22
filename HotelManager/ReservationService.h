//
//  ReservationService.h
//  HotelManager
//
//  Created by Regular User on 12/2/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Room;

@interface ReservationService : NSObject



+ (instancetype)unavailableRooms:(NSDate *)startDate endDate:(NSDate *)endDate room:(Room *)room;

+ (void)createReservationWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate room:(Room *)room;

@end


