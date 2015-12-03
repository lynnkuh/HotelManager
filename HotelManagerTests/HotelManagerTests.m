//
//  HotelManagerTests.m
//  HotelManagerTests
//
//  Created by Regular User on 11/30/15.
//  Copyright © 2015 Lynn Kuhlman. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSObject+NSmanagedObjectContext_Category.h"


@interface HotelManagerTests : XCTestCase

@property (strong, nonatomic) NSManagedObjectContext *context;


@end

@implementation HotelManagerTests

- (void)setUp {
    [super setUp];
    [self setContext:[NSManagedObjectContext managerContext]];}

- (void)tearDown {
    
    [self setContext:nil];
    [super tearDown];
}

- (void)testContextCreation {
    XCTAssertNotNil(self.context, @"Context should not be nil. Check category implementaiton.");
}

- (void)testContextOnMainQ {
    XCTAssertTrue(self.context.concurrencyType == NSMainQueueConcurrencyType, @"Context should be created on the main Q. Why did you change it?");
}

- (void)testCoreDataSave {
    
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Hotel"];
    request.resultType = NSCountResultType;
    
    NSError *error;
    NSArray *result = [self.context executeFetchRequest:request error:&error];
    NSNumber *count = [result firstObject];
    
    XCTAssertNil(error, @"Error should be nil.");
    XCTAssertNotNil(result, @"Result array should NOT be nil.");
    XCTAssertTrue([count intValue] > 0, @"Number of objects in the database after seeding should be greater then 0.");
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
