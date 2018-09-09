//
//  Result.swift
//  AnimalSearchModule
//
//  Created by Joe Susnick on 9/9/18.
//  Copyright © 2018 Joe Susnick. All rights reserved.
//

import Foundation

public enum Result<Value> {
    case success(Value)
    case failure(Error?)
}
