//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Евгений Бурнос on 19.12.2022.
//

import Foundation



class ViewModel: TableViewViewModelType {
    
    private var selectedForIndexPath: IndexPath?

    var profiles = [
        Profile(name: "AAA", secondName: "BBB", age: 32),
        Profile(name: "FFF", secondName: "SSS", age: 54),
        Profile(name: "WWW", secondName: "EEE", age: 43)
    ]
    
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    
    
    func cellViewModel(forIndexPath IndexPath: IndexPath) -> TableViewCellModelType? {
        let profile = profiles[IndexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DeatilViewModelType? {
        guard let selectedForIndexPath = selectedForIndexPath else { return nil }
        return DeatilViewModel(profile: profiles[selectedForIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedForIndexPath = indexPath
    }
    
}

