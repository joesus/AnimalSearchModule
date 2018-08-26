//
//  SearchParameters.swift
//  AnimalSearchModule
//
//  Created by Joe Susnick on 8/26/18.
//  Copyright © 2018 Joe Susnick. All rights reserved.
//

import AnimalData

public protocol SearchParameters {
    var species: Species { get }
}
