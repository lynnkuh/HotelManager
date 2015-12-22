//
//  ReservationService.m
//  HotelManager
//
//  Created by Regular User on 12/2/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import "ReservationService.h"
#import "NSObject+NSmanagedObjectContext_Category.h"
#import "Reservation.h"
#import "AppDelegate.h"
#import "Room.h"



@interface ReservationService ()


@property (strong, nonatomic) NSArray *datasource;


@end

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

+ (void)createReservationWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate room:(Room *)room {
    
    Reservation *reservation = [Reservation reservationWithStartDate:startDate endDate:endDate room:room];
    reservation.room = room;
    room.reservation = reservation;
    
    NSError *saveError;
    
    [[NSManagedObjectContext managerContext] save:&saveError ];
    
}

@end


