//
//  SearchServiceFactory.swift
//  AnimalSearchModule
//
//  Created by Joe Susnick on 8/26/18.
//  Copyright © 2018 Joe Susnick. All rights reserved.
//

import Foundation

public protocol SearchServiceFactory: class {
    func createService(
        parameters: SearchParameters,
        pageSize: Int
    ) -> SearchService
}
