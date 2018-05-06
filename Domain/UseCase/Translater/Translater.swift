//
//  Translater.swift
//  Gajumal
//
//  Created by 井草俊輔 on 2018/05/05.
//  Copyright © 2018年 井草俊輔. All rights reserved.
//

import Foundation
import RxSwift

public protocol Translater {
    associatedtype Input
    associatedtype Output
    func translate(_ : Input) throws -> Output
}

public extension ObservableType {
    public func map<T: Translater>(translater: T) -> Observable<T.Output> where Self.E == T.Input {
        return map { try translater.translate($0) }
    }
}

extension Collection {
    public func map<T: Translater>(translater: T) throws -> [T.Output] where Self.Iterator.Element == T.Input {
        return try map { try translater.translate($0) }
    }
}
