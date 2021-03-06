//
//  NSBundle+Swissors.swift
//  Swissors
//
//  Created by Георгий Касапиди on 03.08.16.
//  Copyright © 2016 e-Legion. All rights reserved.
//

import Foundation

public extension Bundle {
    
    public subscript(key: String) -> Any? {
        guard let infoDictionary = infoDictionary else { return nil }
        return infoDictionary[key]
    }
    
    public func sw_infoDictionaryValue<T>(for key: String) -> T? {
        guard let infoDictionary = infoDictionary else { return nil }
        return infoDictionary[key] as? T
    }
    
    public func sw_infoDictionaryBool(for key: String, defaultValue: Bool = Bool()) -> Bool {
        guard let infoDictionary = infoDictionary else { return defaultValue }
        guard let value = infoDictionary[key] as? String else { return defaultValue }
        return Bool(value) ?? defaultValue
    }
}
