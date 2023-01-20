//
//  Box.swift
//  MVVM-2
//
//  Created by Евгений Бурнос on 19.12.2022.
//

import Foundation

class Box<T>{
    typealias Listener = (T) -> ()
    
    var listener: Listener?
    
    var value: T {
        didSet{
            listener?(value)
            
        }
       
    }
    
    func bind(listiner: @escaping Listener){
        
        listiner(value)
    }
    
    init(value: T) {
        self.value = value
    }
}
