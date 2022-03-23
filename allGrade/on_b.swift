//
//  on_b.swift
//  allGrade
//
//  Created by erhan demirci on 15.03.2022.
//

import Foundation



enum device
{
    case iphone , ipad
    var year:Int {
        switch self {
        case .iphone:
            return 2007
        case .ipad:
            return 4008
        }
    }
}


