//
//  InputAppliable.swift
//  XcodePreviewsBaseUIKit
//
//  Created by Motoki Onayama on 2022/04/12.
//

import Foundation

protocol InputAppliable {
    associatedtype Input
    func apply(input: Input)
}
