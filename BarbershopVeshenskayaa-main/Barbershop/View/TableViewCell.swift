//
//  TableViewCell.swift
//  Barbershop
//
//  Created by mac on 20.07.2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    static let indetificator = "TableViewCell"
    
    var model: FamilyModel? {
        didSet {
            label.text = model?.person
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super .init(coder: coder)
        setupViews()
    }
    
    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let label2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let label3: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    func setupViews() {
        contentView.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.equalTo(50)
            make.top.equalTo(150)
        }
    }
    
}
