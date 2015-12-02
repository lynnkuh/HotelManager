//
//  NSObject+NSManagedObjectContext_Category.h
//  HotelManager
//
//  Created by Regular User on 12/1/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import <Foundation/Foundation.h>
@import CoreData;

@interface NSObject (NSManagedObjectContext_Category)

+ (NSManagedObjectContext *)managerContext;

@end
