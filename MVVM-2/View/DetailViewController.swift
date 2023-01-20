//
//  DetailViewController.swift
//  MVVM-2
//
//  Created by Евгений Бурнос on 19.12.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    var viewModel:DeatilViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.discription
        
       
        }
        
    override func viewDidLoad() {
         super.viewDidLoad()
         
         viewModel?.age.bind { [unowned self] in
             guard let string = $0 else { return }
             
             self.textLabel.text = string
             
         }
        
        delay(delay: 5) { [unowned self] in
            self.viewModel?.age.value = "same new value"
        }
    }
    
    private func delay(delay: Double, closure: @escaping () -> ()){
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay){
            closure()
        }
        
    }
        
}
