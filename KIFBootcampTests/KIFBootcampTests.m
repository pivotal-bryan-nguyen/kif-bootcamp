//
//  KIFBootcampTests.m
//  KIFBootcampTests
//
//  Created by Pivotal on 2016-01-19.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KIF/KIF.h>
@interface KIFBootcampTests : XCTestCase

@end

@implementation KIFBootcampTests

- (void)setUp {
    [tester tapViewWithAccessibilityLabel:@"ETT Pivots"];
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

#pragma mark - Task #0

- (void)testLaunchAppAndWait{
    // Launch and wait
    [tester waitForTimeInterval:5];
}

#pragma mark - Task #1

- (void)testSelectPivotCheckInfo {
    // Check pivots info
    [tester waitForViewWithAccessibilityLabel:@"Gordon Krull"];
    [tester tapViewWithAccessibilityLabel:@"Gordon Krull"];
    [tester waitForViewWithAccessibilityLabel:@"KIF Automator"];
    [tester waitForViewWithAccessibilityLabel:@"3"];
}

#pragma mark - Task #2

- (void)testAddAccessibilityLabels {
    // Adding accessiblityLabels
    [tester waitForViewWithAccessibilityLabel:@"ETT Pivots"];
    UITableView *table = (UITableView *)[tester waitForViewWithAccessibilityLabel:@"PivotsTable"];
    NSInteger numRow = [table numberOfRowsInSection:0];

    // Tap on rows of pivots
    for (unsigned int i = 0; i < numRow; i++){
        [tester tapRowAtIndexPath: [NSIndexPath indexPathForRow:i inSection:0]inTableViewWithAccessibilityIdentifier:@"PivotsTable"];
        [tester waitForViewWithAccessibilityLabel:@"DETAILS"];
        [tester tapViewWithAccessibilityLabel:@"ETT Pivots"];
    }
}
@end
