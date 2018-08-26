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

struct SampleSearchParameters: SearchParameters {
    let species: Species
}

class SearchParametersTests: XCTestCase {

    let sampleSearchParameters: SearchParameters = SampleSearchParameters(species: .dog)

    func testSpecies() {
        XCTAssertEqual(sampleSearchParameters.species, .dog,
                       "Search parameters interface requires a species")
    }

}
