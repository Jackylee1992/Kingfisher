//
//  StringExtensionTests.swift
//  Kingfisher
//
//  Created by Wei Wang on 16/8/14.
//  Copyright © 2019 Wei Wang. All rights reserved.
//

import XCTest
@testable import Kingfisher

class StringExtensionTests: XCTestCase {
    func testStringSHA256() {
        let s = "hello"
        XCTAssertEqual(s.kf.sha256, "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824")
    }
    
    func testStringExtensionExtraction() {
        // Test basic file extension extraction
        XCTAssertEqual("image.png".kf.ext, "png")
        XCTAssertEqual("document.pdf".kf.ext, "pdf")
        XCTAssertEqual("photo.jpg".kf.ext, "jpg")
        
        // Test with @2x or @3x retina suffixes
        XCTAssertEqual("image@2x.png".kf.ext, "png")
        XCTAssertEqual("icon@3x.jpg".kf.ext, "jpg")
        
        // Test edge cases
        XCTAssertNil("noextension".kf.ext)
        XCTAssertNil("".kf.ext)
        XCTAssertEqual("file.with.multiple.dots.txt".kf.ext, "txt")
    }
}
