//
//  NSObject+NSManagedObjectContext_Category.m
//  HotelManager
//
//  Created by Regular User on 12/1/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import "NSObject+NSManagedObjectContext_Category.h"
#import "AppDelegate.h"

@implementation NSObject (NSManagedObjectContext_Category)

+ (NSManagedObjectContext *)managerContext {
    
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    
    return delegate.managedObjectContext;
    
}

@end

