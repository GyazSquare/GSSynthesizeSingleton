//
//  GSARCObjectTests.m
//  SingletonDemo
//

@import Foundation;
@import XCTest;

#import "GSARCObject.h"

@interface GSARCObjectTests : XCTestCase
@end

@implementation GSARCObjectTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSharedARCObject {
    GSARCObject *sharedARCObject = [GSARCObject sharedARCObject];
    // not nil
    XCTAssertNotNil(sharedARCObject);
    // shared
    XCTAssertEqualObjects(sharedARCObject, [GSARCObject sharedARCObject]);
    // background
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    NSInteger count = 100;
    while (count-- > 0) {
        XCTestExpectation *expectation = [self expectationWithDescription:@"background"];
        dispatch_async(queue, ^{
            XCTAssertEqualObjects(sharedARCObject, [GSARCObject sharedARCObject]);
            [expectation fulfill];
        });
    }
    [self waitForExpectationsWithTimeout:1 handler:^(NSError *error) {
        if (error) {
            XCTFail(@"%@", error);
        }
    }];
}

- (void)testCopy {
    GSARCObject *sharedARCObject = [GSARCObject sharedARCObject];
    XCTAssertEqualObjects(sharedARCObject, [sharedARCObject copy]);
}

@end
