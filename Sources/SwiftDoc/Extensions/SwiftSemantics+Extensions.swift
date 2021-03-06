import SwiftSemantics

public protocol Generic {
    var genericParameters: [GenericParameter] { get }
    var genericRequirements: [GenericRequirement] { get }
}

extension Class: Generic {}
extension Enumeration: Generic {}
extension Function: Generic {}
extension Initializer: Generic {}
extension Structure: Generic {}
extension Subscript: Generic {}
extension Typealias: Generic {}

// MARK: -

public protocol Type: API {
    var inheritance: [String] { get }
    var name: String { get }
}

extension Class: Type {}
extension Enumeration: Type {}
extension Protocol: Type {}
extension Structure: Type {}
extension Unknown: Type {
    public var inheritance: [String] { return [] }
}
