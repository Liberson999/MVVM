//
//  DeatilViewModelType.swift
//  MVVM-2
//
//  Created by Евгений Бурнос on 19.12.2022.
//

import Foundation

protocol DeatilViewModelType {
    var discription: String { get }
    var age: Box<String?> { get }
}
