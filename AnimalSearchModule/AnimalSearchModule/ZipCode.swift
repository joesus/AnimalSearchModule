//
//  ZipCode.swift
//  AnimalSearchModule
//
//  Created by Joe Susnick on 10/14/17.
//  Copyright © 2017 Joesus. All rights reserved.
//

import Foundation

public struct ZipCode: RawRepresentable, Equatable {
    public let rawValue: String

    public init?(rawValue: String) {
        guard rawValue.count == 5,
            CharacterSet.decimalDigits.isSuperset(of: CharacterSet(charactersIn: rawValue))
            else {
                return nil
        }

        self.rawValue = rawValue
    }
}
