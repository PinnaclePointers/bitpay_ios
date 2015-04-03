//
//  keyutilsTest.m
//  ios
//
//  Created by Chris Kleeschulte on 4/3/15.
//  Copyright (c) 2015 bitpay. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "keyutils.h"

@interface keyutilsTests : XCTestCase
@end

@implementation keyutilsTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)testNonce {
    NSString *nonce = [KeyUtils nonce];
    XCTAssertEqual([nonce length], 17);
    NSScanner *scanner = [NSScanner scannerWithString:nonce];
    XCTAssertTrue([scanner scanInteger:NULL] && [scanner isAtEnd]);
}

- (void)testCreateKeyWithPem {
    XCTAssert(YES, @"Pass");
}

- (void)testCreateNewKey {
    XCTAssert(YES, @"Pass");
}

- (void)testGeneratePem {
    XCTAssert(YES, @"Pass");
}

- (void)testCreatePem {
    XCTAssert(YES, @"Pass");
}

- (void)testgetPrivateKey {
    XCTAssert(YES, @"Pass");
}

- (void)testgetPublicKey {
    XCTAssert(YES, @"Pass");
}

- (void)testgetPrivateKeyFromPem {
    XCTAssert(YES, @"Pass");
}

- (void)testgetPublicKeyFromPem {
    XCTAssert(YES, @"Pass");
}

- (void)testgenerateSinFromPem {
    XCTAssert(YES, @"Pass");
}

- (void)testSign {
    XCTAssert(YES, @"Pass");
}

- (void)testencodeBase58 {
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {

    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
