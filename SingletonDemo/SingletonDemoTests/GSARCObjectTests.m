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
    // copy
    XCTAssertEqualObjects(sharedARCObject, [sharedARCObject copy]);
}

- (void)testSharedARCObjectAsync {
    // TODO
}

@end
