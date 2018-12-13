//
//  HomeViewControllerTests.m
//  IosBuildPipelineProjectTests
//
//  Created by Murali Krishna on 13/12/18.
//  Copyright © 2018 Murali Krishna. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "HomeViewController.h"

@interface HomeViewControllerTests : XCTestCase{
    int a;
    int b;
    HomeViewController *homeVC;
}

@end

@implementation HomeViewControllerTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    a = 20;
    b = 10;
    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    homeVC = [storyBoard instantiateViewControllerWithIdentifier:@"HomeViewControllerIdentifier"];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

-(void)testAddValues{
    int a = 10;
    int b = 20;
    XCTAssertEqual(a+b, [homeVC addValues:a :b]);
}

-(void)testSubtractValues{
    int a = 20;
    int b = 10;
    XCTAssertEqual(a-b, [homeVC subtractValues:a :b]);
}

-(void)testMultiplyValues{
    int a = 20;
    int b = 10;
    XCTAssertEqual(a*b, [homeVC multiplyValues:a :b]);
}

-(void)testFailedTestCase{
    XCTAssertEqual(1, 2);
}


@end
