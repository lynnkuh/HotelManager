//
//  Room+CoreDataProperties.h
//  HotelManager
//
//  Created by Regular User on 11/30/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Room.h"

NS_ASSUME_NONNULL_BEGIN

@interface Room (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *beds;
@property (nullable, nonatomic, retain) NSNumber *rate;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *hotel;
@property (nullable, nonatomic, retain) NSManagedObject *reservation;

@end

@interface Room (CoreDataGeneratedAccessors)

- (void)addHotelObject:(NSManagedObject *)value;
- (void)removeHotelObject:(NSManagedObject *)value;
- (void)addHotel:(NSSet<NSManagedObject *> *)values;
- (void)removeHotel:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
