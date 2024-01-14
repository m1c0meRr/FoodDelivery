//
//  ViewController.swift
//  FoodDelivery
//
//  Created by Sergey Savinkov on 12.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let tableHeaderView: BannerView = {
        let width = UIScreen.main.bounds.size.width
        let height = width * 0.3
        let bannerView = BannerView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        return bannerView
    }()
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupDelegate()
        setConstraints()
    }
    
    private func setupView() {
        view.backgroundColor = .white
        
        tableView.tableHeaderView = tableHeaderView
        tableView.register(MenuTableViewCell.self, forCellReuseIdentifier: "tableView")
        
        view.addSubview(tableView)
    }
    
    private func setupDelegate() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 3),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}

//MARK: - UITableViewDelegate

extension ViewController: UITableViewDelegate {
    
}

//MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        menuItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableView", for: indexPath) as! MenuTableViewCell
        
        let model = menuItems[indexPath.row]
        cell.cellConfigure(model: model)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        180
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view = CategoriesView()
        view.delegate = self
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        60
    }
}

//MARK: - ScrollToCategoriesViewDelegete

extension ViewController: ScrollToCategoriesViewDelegete {
    func scrollToRoll(with index: IndexPath) {
        tableView.scrollToRow(at: index, at: .middle, animated: true)
    }
}
