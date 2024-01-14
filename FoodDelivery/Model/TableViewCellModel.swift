//
//  Model.swift
//  FoodDelivery
//
//  Created by Sergey Savinkov on 13.01.2024.
//

import Foundation

struct TableViewCellModel {
    
    let image: String
    let name: String
    let description: String
    let price: String
}

var menuItems = [
    TableViewCellModel(image: "Буффало",
                       name: "Ветчина и грибы",
                       description: "Ветчина, грибы, увеличинная порция моцареллы, томаты",
                       price: "от 350 р"),
    TableViewCellModel(image: "Марино",
                       name: "Нежный лосось",
                       description: "Лосось, томаты черри, пикантная пепперони, моцарелла, острое чаризо",
                       price: "от 565 р"),
    TableViewCellModel(image: "Сыр",
                       name: "Пицца четыре сыра",
                       description: "Сыр Пармезан, сыр Моцарелла, сыр Российский, сыр с плесенью",
                       price: "от 489 р"),
    TableViewCellModel(image: "Аль Капоне",
                       name: "Аль Капоне",
                       description: "Ветчина, шампиньоны, томаты, сыр гауда, сыр моцарелла, соус для пиццы, прованские травы",
                       price: "от 600 р"),
    TableViewCellModel(image: "Болоньезе",
                       name: "Болоньезе",
                       description: "Соус Болоньезе, томаты, сыр моцарелла",
                       price: "от 590 р"),
    TableViewCellModel(image: "Мексиканская",
                       name: "Мексиканская",
                       description: "Соус чили, салями, помидоры, перец чили, твердый сыр, кукуруза, каперсы",
                       price: "от 710 р")]
