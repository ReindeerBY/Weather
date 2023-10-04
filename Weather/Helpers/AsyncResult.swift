//
//  AsyncResult.swift
//  Weather
//
//  Created by Admin on 4.10.23.
//

import Foundation

enum AsyncResult<Success> {
    case empty
    case inProgress
    case success(Success)
    case failure(Error)
}
