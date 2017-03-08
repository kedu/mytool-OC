//
//  mytool_ocTests.m
//  mytool-ocTests
//
//  Created by Apple on 17/2/22.
//  Copyright © 2017年 lkb-求工作qq:1218773641. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface mytool_ocTests : XCTestCase

@end

@implementation mytool_ocTests

- (void)setUp {
    [super setUp];
    NSLog(@"我开始了");
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        for (int  i=0; i<100; i++) {
            NSLog(@"%d",i);
            
        }
        // Put the code you want to measure the time of here.
    }];
}

@end
