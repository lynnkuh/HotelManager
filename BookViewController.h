//
//  BookViewController.h
//  HotelManager
//
//  Created by Regular User on 12/1/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Room.h"
#import "Hotel.h"
#import "Reservation.h"
#import "Guest.h"

@interface BookViewController : UIViewController

@property (strong, nonatomic) Room *room;
@property (strong, nonatomic) NSDate *endDate;

@end
