//
//  ResultTests.swift
//  AnimalSearchModuleTests
//
//  Created by Joe Susnick on 9/30/18.
//  Copyright © 2018 Joe Susnick. All rights reserved.
//

import XCTest
import AnimalSearchModule

class ResultTests: XCTestCase {

    let value = "value"
    let error = NSError(domain: "foo", code: 14, userInfo: nil)
    var result: Result<String>!

    func testRetrievingValueFromSuccess() {
        result = .success(value)
        XCTAssertEqual(result.value, value,
                       "A successful result should provide its value")
    }

    func testRetrievingValueFromFailureWithError() {
        result = .failure(error)
        XCTAssertNil(result.value, "A failed result should not provide a value")
    }

    func testRetrievingValueFromFailureWithoutError() {
        result = .failure(nil)
        XCTAssertNil(result.value, "A failed result should not provide a value")
    }

    func testRetrievingErrorFromSuccess() {
        result = .success(value)
        XCTAssertNil(result.error,
                       "A successful result should not provide an error")
    }

    func testRetrievingErrorFromFailureWithError() {
        result = .failure(error)

        guard let resultError = result.error else {
            return XCTFail("A failed result with an error should provide that error")
        }

        XCTAssertEqual(resultError as NSError, error,
                       "A failed result with an error should provide that error")
    }

    func testRetrievingErrorFromFailureWithoutError() {
        result = .failure(nil)
        XCTAssertNil(result.error,
                       "A failed result without an error should not provide an error")
    }

}
