//
//  testingBeforeAll.m
//  KIFBootcamp
//
//  Created by Pivotal on 2016-01-20.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KIF/KIF.h>
@interface testingBeforeAll : KIFTestCase

@end

@implementation testingBeforeAll

- (void)beforeAll{
    NSLog(@"Hello, before all");
}

- (void)setUp {
    [tester tapViewWithAccessibilityLabel:@"ETT Pivots"];
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

#pragma mark - Task #0: Setup

/*
 * Launch and wait
 */
- (void)testLaunchAppAndWait{
    [tester waitForTimeInterval:5];
}

#pragma mark - Task #1

/*
 * Check pivots info (job title, projects)
 */
- (void)testSelectPivotCheckInfo {
    [tester waitForViewWithAccessibilityLabel:@"Gordon Krull"];
    [tester tapViewWithAccessibilityLabel:@"Gordon Krull"];
    [tester waitForViewWithAccessibilityLabel:@"KIF Automator"];
    [tester waitForViewWithAccessibilityLabel:@"3"];
}

#pragma mark - Task #2

/*
 * Adding accessiblityLabels and iterating through the table of pivots
 */
- (void)testAddAccessibilityLabels {
[tester waitForViewWithAccessibilityLabel:@"ETT Pivots"];
UITableView *table = (UITableView *)[tester waitForViewWithAccessibilityLabel:@"PivotsTable"];
NSInteger numRow = [table numberOfRowsInSection:0];
    
for (unsigned int i = 0; i < numRow; i++){
    [tester tapRowAtIndexPath: [NSIndexPath indexPathForRow:i inSection:0]inTableViewWithAccessibilityIdentifier:@"PivotsTable"];
        [tester waitForViewWithAccessibilityLabel:@"DETAILS"];
        [tester tapViewWithAccessibilityLabel:@"ETT Pivots"];
    }
}



@end
