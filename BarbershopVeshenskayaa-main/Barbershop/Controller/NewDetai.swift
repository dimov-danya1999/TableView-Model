//
//  NewDetai.swift
//  Barbershop
//
//  Created by mac on 20.07.2022.
//

import UIKit
import SnapKit

class NewDetai: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 50)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let label2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let labe3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(label)
        view.addSubview(label2)
        view.addSubview(labe3)
        costraintLabel()
    }
    
   func configureModel(model: FamilyModel) {
        label.text = model.person
        label2.text = model.email
        labe3.text = model.phone
    }
    
    func costraintLabel() {
       
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        label2.snp.makeConstraints { make in
            make.top.equalTo(label.snp.bottom).offset(20)
        }
        labe3.snp.makeConstraints { make in
            make.top.equalTo(label2.snp.bottom).offset(20)
        }
        
    }
}
