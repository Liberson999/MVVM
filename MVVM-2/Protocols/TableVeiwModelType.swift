//
//  TableVeiwModelType.swift
//  MVVM-2
//
//  Created by Евгений Бурнос on 19.12.2022.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int 
    func cellViewModel(forIndexPath IndexPath: IndexPath) -> TableViewCellModelType?
    
    func viewModelForSelectedRow() -> DeatilViewModelType?
    func selectRow(atIndexPath indexPath: IndexPath)
}
