//
//  Category.swift
//  ToDoUIKit
//
//  Created by Zach Smith on 11/17/21.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var colour: String = ""
    let items = List<Item>()
}
