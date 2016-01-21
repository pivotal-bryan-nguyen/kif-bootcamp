//
//  KIFBootcampTests.m
//  KIFBootcampTests
//
//  Created by Pivotal on 2016-01-19.
//  Copyright © 2016 PIvotal Labs. All rights reserved.
//


#import <KIF/KIF.h>
@interface KIFBootcampTests : KIFTestCase
@end

@implementation KIFBootcampTests

#pragma mark - Task #3:
- (void)beforeAll {
    NSLog(@"TESTING COMMENCING");
}

- (void)afterAll {
    NSLog(@"TESTING COMPLETED");
}

- (void)beforeEach {
    [tester tapViewWithAccessibilityLabel:@"ETT Pivots"];
}

- (void)afterEach{
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
