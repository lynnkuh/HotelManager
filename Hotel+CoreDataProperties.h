//
//  Hotel+CoreDataProperties.h
//  HotelManager
//
//  Created by Regular User on 11/30/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Hotel.h"

NS_ASSUME_NONNULL_BEGIN

@interface Hotel (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *location;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *stars;
@property (nullable, nonatomic, retain) Room *rooms;

@end

NS_ASSUME_NONNULL_END
