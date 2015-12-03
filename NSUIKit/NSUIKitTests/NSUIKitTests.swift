//
//  NSUIKitTests.swift
//  NSUIKitTests
//
//  Created by Patrick Winchell on 12/3/15.
//  Copyright © 2015 superpartyawesome. All rights reserved.
//

import XCTest
@testable import NSUIKit

class NSUIKitTests: XCTestCase
{
    override func setUp()
    {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown()
    {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testBadImageName()
    {
        XCTAssertNil(UIImage(named: "fake"))
    }

    func testGoodImageName()
    {
        XCTAssertNotNil(UIImage(named: "cat"))
    }

    func testCorruptImage()
    {
        XCTAssertNotNil(NSBundle(forClass: NSUIKitTests.self).pathForResource("corrupt", ofType: "jpg"))
        XCTAssertNil(UIImage(named: "corrupt"))
    }
}
