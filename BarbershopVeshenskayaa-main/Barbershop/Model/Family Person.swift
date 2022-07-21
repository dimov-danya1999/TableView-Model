//
//  Family Person.swift
//  Barbershop
//
//  Created by mac on 20.07.2022.
//

import Foundation

struct FamilyModel {
    var person: String
    var phone: String
    var email: String
}

struct Section {
    let arrayModel: [FamilyModel]
}

struct Storoge {
    static let tableModel = [Section(arrayModel: [FamilyModel(person: "Даниил", phone: "89185143314", email: "dsadasa"),
                FamilyModel(person: "даня качек", phone: "1488", email: "petuh228@mail.ru") ])]
}
