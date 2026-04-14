//
//  File.swift
//  XCTestIOKit
//
//  Created by 루미씨티 on 4/14/26.
//

import Foundation

public struct Memory: Sendable {
    
    public let bytes: mach_vm_size_t
    
    public static func kilobytes(_ count: mach_vm_size_t) -> Memory {
        Memory(bytes: count * 1_000)
    }
    
    public static func megebytes(_ count: mach_vm_size_t) -> Memory {
        Memory(bytes: count * 1_000_000)
    }
    
    public static func gigabytes(_ count: mach_vm_size_t) -> Memory {
        Memory(bytes: count * 1_000_000_000)
    }
}

extension Memory: Comparable {
    public static func < (lhs: Memory, rhs: Memory) -> Bool {
        return lhs.bytes < rhs.bytes
    }
}
