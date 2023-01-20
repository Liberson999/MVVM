//
//  TableViewCellViewModel.swift
//  MVVM-2
//
//  Created by Евгений Бурнос on 19.12.2022.
//

import Foundation

class TableViewCellViewModel: TableViewCellModelType {
    
    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    var age: String {
        return String(describing: profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
