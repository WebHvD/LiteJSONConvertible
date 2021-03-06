//
//  BasicTests.swift
//  LiteJSONConvertible
//
//  Created by Andrea Prearo on 5/1/16.
//  Copyright © 2016 Andrea Prearo
//

import Foundation
import XCTest
import LiteJSONConvertible

class BasicTests: XCTestCase {
    
    func testArrayOfStrings() {
        do {
            guard let json = try Utils.loadJsonFrom("ArrayOfStrings") as? [JSON] else {
                XCTFail("JSON loading failed")
                return
            }
            let items = json.map(String.decode)
            XCTAssertEqual(items.count, json.count)
            for (var i=0; i < items.count; i++) {
                let json = json[i]
                if let item = items[i] {
                    XCTAssertEqual(item, json as? String)
                } else {
                    XCTFail("Parsing failed")
                }
            }
        } catch let error as NSError {
            XCTFail(error.localizedDescription)
        }
    }
    
    func testArrayOfBooleans() {
        do {
            guard let json = try Utils.loadJsonFrom("ArrayOfBooleans") as? [JSON] else {
                XCTFail("JSON loading failed")
                return
            }
            let items = json.map(Bool.decode)
            XCTAssertEqual(items.count, json.count)
            for (var i=0; i < items.count; i++) {
                let json = json[i]
                if let item = items[i] {
                    XCTAssertEqual(item, json as? Bool)
                } else {
                    XCTFail("Parsing failed")
                }
            }
        } catch let error as NSError {
            XCTFail(error.localizedDescription)
        }
    }

    func testArrayOfIntegers() {
        do {
            guard let json = try Utils.loadJsonFrom("ArrayOfIntegers") as? [JSON] else {
                XCTFail("JSON loading failed")
                return
            }
            let items = json.map(Int.decode)
            XCTAssertEqual(items.count, json.count)
            for (var i=0; i < items.count; i++) {
                let json = json[i]
                if let item = items[i] {
                    XCTAssertEqual(item, json as? Int)
                } else {
                    XCTFail("Parsing failed")
                }
            }
        } catch let error as NSError {
            XCTFail(error.localizedDescription)
        }
    }
    
    func testArrayOfFloats() {
        do {
            guard let json = try Utils.loadJsonFrom("ArrayOfFloats") as? [JSON] else {
                XCTFail("JSON loading failed")
                return
            }
            let items = json.map(Float.decode)
            XCTAssertEqual(items.count, json.count)
            for (var i=0; i < items.count; i++) {
                let json = json[i]
                if let item = items[i] {
                    XCTAssertEqual(item, json as? Float)
                } else {
                    XCTFail("Parsing failed")
                }
            }
        } catch let error as NSError {
            XCTFail(error.localizedDescription)
        }
    }
    
    func testArrayOfDoubles() {
        do {
            guard let json = try Utils.loadJsonFrom("ArrayOfDoubles") as? [JSON] else {
                XCTFail("JSON loading failed")
                return
            }
            let items = json.map(Double.decode)
            XCTAssertEqual(items.count, json.count)
            for (var i=0; i < items.count; i++) {
                let json = json[i]
                if let item = items[i] {
                    XCTAssertEqual(item, json as? Double)
                } else {
                    XCTFail("Parsing failed")
                }
            }
        } catch let error as NSError {
            XCTFail(error.localizedDescription)
        }
    }
    
}
