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



@interface ReservationService ()


@property (strong, nonatomic) NSArray *datasource;


@end

@implementation ReservationService
/*
- (NSArray *)unavailableRooms:(NSDate *)startDate endDate:(NSDate *)endDate reservation:(Reservation *)reservation {
}

- (NSArray *)datasource {
    if (!_datasource) {
        
        AppDelegate *delegate = (AppDelegate *)[[UIApplication sharedApplication]delegate];
        
        NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Reservation"];
        request.predicate = [NSPredicate predicateWithFormat:@"startDate <= %@ AND endDate >= %@", self.startDate, self.endDate, [NSDate date]];
        
        NSArray *results = [delegate.managedObjectContext executeFetchRequest:request error:nil];
        NSMutableArray *unavailableRooms = [[NSMutableArray alloc]init];
        
        for (Reservation *reservation in results) {
            [unavailableRooms addObject:reservation.room];
        }
        
        NSFetchRequest *checkRequest = [NSFetchRequest fetchRequestWithEntityName:@"Room"];
        checkRequest.predicate = [NSPredicate predicateWithFormat:@"NOT self IN %@", unavailableRooms];
        
        _datasource = [delegate.managedObjectContext executeFetchRequest:checkRequest error:nil];
        
        return _datasource;
    }
    
    return _datasource;
}

*/
@end
