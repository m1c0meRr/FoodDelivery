//
//  CategoryModel.swift
//  FoodDelivery
//
//  Created by Sergey Savinkov on 13.01.2024.
//

import Foundation

struct CategoryModel {
    
    let categoryName: String
}

var categories = [CategoryModel(categoryName: "Пицца"),
                  CategoryModel(categoryName: "Комбо"),
                  CategoryModel(categoryName: "Десерты"),
                  CategoryModel(categoryName: "Напитки"),
                  CategoryModel(categoryName: "Акции")]
