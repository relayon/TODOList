//
//  ORMGoalTests.m
//  TODOList
//
//  Created by SMC-MAC on 17/3/17.
//  Copyright © 2017年 heyou. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GoalModel.h"
#import "NSString+Extension.h"

@interface ORMGoalTests : XCTestCase

@end

@implementation ORMGoalTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testSaveGoalToDB {
    GoalModel* gm = [GoalModel new];
//    gm.goalId = [NSString smc_UUID];
    gm.goalId = @"alekye_task_aabb";
    gm.content = @" 这是一个很 不错的节日，明天一起去公园玩！ ";
    gm.note = @" Use XCTAssert and related functions to verify your tests produce the correct results. ";
    gm.fireDate = [NSDate date];
    XCTAssertTrue([gm saveToDB]);
}

- (void)testReadGoalFromDB {
    NSArray* goals = [GoalModel searchWithWhere:nil];
    XCTAssertNotNil(goals);
    XCTAssert(goals.count>0);
    NSLog(@"goals = %@", goals);

    NSString* goalId = @"alekye_task";
    GoalModel* myGoal = [GoalModel searchSingleWithWhere:@{@"goalId":goalId} orderBy:nil];
    XCTAssertNotNil(myGoal);
//    XCTAssertEqual(myGoal.goalId, goalId);  // failure
    XCTAssertEqualObjects(myGoal.goalId, goalId);
    NSLog(@"myGoal = %@", myGoal);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
