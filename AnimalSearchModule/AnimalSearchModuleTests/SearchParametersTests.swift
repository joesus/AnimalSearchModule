//
//  SearchParametersTests.swift
//  AnimalSearchModuleTests
//
//  Created by Joe Susnick on 8/26/18.
//  Copyright © 2018 Joe Susnick. All rights reserved.
//

import AnimalSearchModule
import AnimalData
import XCTest

class SearchParametersTests: XCTestCase {

    let zipCode = ZipCode(rawValue: "80220")!
    var parameters: SearchParameters!

    override func setUp() {
        super.setUp()

        parameters = SearchParameters(
            zipCode: zipCode,
            species: .dog
        )
    }

    func testSpecies() {
        XCTAssertEqual(parameters.species, .dog,
                       "Search parameters interface requires a species")
    }

    func testZipCode() {
        XCTAssertEqual(parameters.zipCode, zipCode,
                       "Search parameters require a zip code")
    }

}
