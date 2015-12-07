//
//  ReservationService.m
//  HotelManager
//
//  Created by Regular User on 12/2/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import "ReservationService.h"
#import "Reservation.h"
#import "Room.h"


@implementation ReservationService

+ (NSArray *)unavailableRooms:(NSDate *)startDate endDate:(NSDate *)endDate  {

    NSMutableArray *returnResults = [[NSMutableArray alloc]init];

            NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Reservation"];
        request.predicate = [NSPredicate predicateWithFormat:@"startDate <= %@ AND endDate >= %@", startDate, endDate ];

        NSMutableArray *unavailableRooms = [[NSMutableArray alloc]init];
        
        for (Reservation *reservation in request) {
            [unavailableRooms addObject:reservation.room];
      
        
        NSFetchRequest *checkRequest = [NSFetchRequest fetchRequestWithEntityName:@"Room"];
        checkRequest.predicate = [NSPredicate predicateWithFormat:@"NOT self IN %@", unavailableRooms];
        
        NSMutableArray *fetchRooms = [[NSManagedObjectContext managerContext] executeFetchRequest:checkRequest error:nil];
        
        returnResults = fetchRooms;
    }
    
    return returnResults;
    }

+ (void)createReservationWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate room:(Room *)room name:(NSString *) name {
    
    Reservation *reservation = [Reservation reservationWithStartDate:startDate endDate:endDate room:room];
    Guest *guest = [Guest guestWithName: name];
    reservation.guest = guest;
    reservation.room = room;
    room.reservation = reservation;
    
    NSError *saveError;
    
    [[NSManagedObjectContext managerContext] save:&saveError ];
    
    
    
    
    
    
    
}

@end
