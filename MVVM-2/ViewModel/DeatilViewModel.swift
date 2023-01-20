//
//  DeatilViewModel.swift
//  MVVM-2
//
//  Created by Евгений Бурнос on 19.12.2022.
//

import Foundation

class DeatilViewModel: DeatilViewModelType {
    
    private var profile: Profile
    
    var discription: String{
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) old")
    }
    
    var age: Box<String?> = Box(value: nil)
    
    init(profile: Profile){
        self.profile = profile
    }
}
