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

    public var isSuccess: Bool {
        switch self {
        case .success: return true
        case .failure: return false
        }
    }

    public var isFailure: Bool {
        return !isSuccess
    }

    public var value: Value? {
        switch self {
        case .success(let successValue): return successValue
        case .failure: return nil
        }
    }

    public var error: Error? {
        switch self {
        case .success: return nil
        case .failure(let potentialError): return potentialError
        }
    }
}
