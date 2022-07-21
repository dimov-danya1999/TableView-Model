//
//  DetailViewController.swift
//  Barbershop
//
//  Created by mac on 20.07.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var dataService: [FamilyModel] =
    [
        FamilyModel(person: "Даниил Димов", phone: "89185143314", email: "dimov-danya2014@yandex.ru"),
        FamilyModel(person: "Вероника", phone: "891822222", email: "email"),
        FamilyModel(person: "Елена Димова", phone: "89613180546", email: "elena-dimov@gmail.com")
    ]
    
    let tableView = UITableView(frame: .zero, style: .grouped)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.navigationItem.title = "Person List"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.view.addSubview(tableView)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.indetificator)
        self.updateLayout(with: self.view.frame.size)
    }
    
    private func updateLayout(with size: CGSize) {
        self.tableView.frame = CGRect.init(origin: .zero, size: size)
    }
}
    
extension DetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataService.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: TableViewCell.indetificator, for: indexPath) as! TableViewCell
        let item = self.dataService[indexPath.item]
        return cell
    }
}

