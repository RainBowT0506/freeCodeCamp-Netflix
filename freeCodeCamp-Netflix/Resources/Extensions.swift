//
//  Extensions.swift
//  freeCodeCamp-Netflix
//
//  Created by RainBowT on 2024/9/10.
//

import Foundation

extension String{
    func capitalizeFirstLetter() -> String{
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
