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
    
    func testStringExtension() {
        // Test basic file extension
        XCTAssertEqual("image.png".kf.ext, "png")
        XCTAssertEqual("photo.jpg".kf.ext, "jpg")
        XCTAssertEqual("document.pdf".kf.ext, "pdf")
        
        // Test with retina suffix (@2x, @3x)
        XCTAssertEqual("image@2x.png".kf.ext, "png")
        XCTAssertEqual("photo@3x.jpg".kf.ext, "jpg")
        
        // Test multiple dots in filename
        XCTAssertEqual("my.file.name.txt".kf.ext, "txt")
        
        // Test no extension
        XCTAssertNil("noextension".kf.ext)
        XCTAssertNil("file.".kf.ext)
        
        // Test empty string
        XCTAssertNil("".kf.ext)
        
        // Test with path
        XCTAssertEqual("/path/to/file.png".kf.ext, "png")
        XCTAssertEqual("/path/to/image@2x.jpg".kf.ext, "jpg")
    }
}
