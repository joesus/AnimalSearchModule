//
//  SearchParameters.swift
//  AnimalSearchModule
//
//  Created by Joe Susnick on 8/26/18.
//  Copyright © 2018 Joe Susnick. All rights reserved.
//

import AnimalData

public struct SearchParameters: Equatable {
    public let zipCode: ZipCode
    public let species: Species?

    public init(zipCode: ZipCode, species: Species) {
        self.zipCode = zipCode
        self.species = species
    }
}
