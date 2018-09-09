//
//  PaginationCursor.swift
//  AnimalSearchModule
//
//  Created by Joe Susnick on 10/7/17.
//  Copyright © 2017 Joesus. All rights reserved.
//

import Foundation

public struct PaginationCursor {
    public let size: Int
    public let index: Int

    public init(size: Int, index: Int = 0) {
        self.size = size
        self.index = index
    }

    public var offset: Int {
        return size * index
    }

    public func nextPage() -> PaginationCursor {
        return PaginationCursor(
            size: size,
            index: index + 1
        )
    }
}
