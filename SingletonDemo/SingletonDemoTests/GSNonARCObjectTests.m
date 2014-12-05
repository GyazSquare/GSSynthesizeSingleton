//
//  GSNonARCObjectTests.m
//  SingletonDemo
//

@import Foundation;
@import XCTest;

#import "GSNonARCObject.h"

@interface GSNonARCObjectTests : XCTestCase
@end

@implementation GSNonARCObjectTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSharedNonARCObject {
    GSNonARCObject *sharedNonARCObject = [GSNonARCObject sharedNonARCObject];
    // not nil
    XCTAssertNotNil(sharedNonARCObject);
    // shared
    XCTAssertEqualObjects(sharedNonARCObject, [GSNonARCObject sharedNonARCObject]);
    // copy
    XCTAssertEqualObjects(sharedNonARCObject, [sharedNonARCObject copy]);
}

- (void)testSharedNonARCObjectAsync {
    // TODO
}

@end
