//
//  ViewController.swift
//  xcode_ios_class
//
//  Created by Rezo on 09.10.2023.
//
// hello!
import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beerData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let beer = beerData[indexPath.row]
        var cell = UITableViewCell()
        var configuration = cell.defaultContentConfiguration()
//        configuration.image
        configuration.text = beer.name
        configuration.secondaryText = beer.tagline
        cell.contentConfiguration = configuration
        return cell
    }
    
//  СОЗДАЕМ ТАБЛИЧКУ И ПРИ СОЗДАНИИ ЗАДАЕМ ЕЙ НЕКОТОРЫЕ ПАРАМЕТРЫ
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .cyan
        tableView.dataSource = self
        return tableView
    }()
    
    private var beerData: [BeerDTO] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        view.addSubview(tableView) //ДОБАВЛЯЕМ ТАБЛИЦУ В ОСНОВНУЮ ВЬЮХУ
        tableView.translatesAutoresizingMaskIntoConstraints = false //не используем авторисайзинг маск (устарело)
        NSLayoutConstraint.activate([ //ЗАДАЕМ РАЗМЕРЫ И РАСПОЛОЖЕНИЕ ТАБЛИЦЫ
            tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
        
        
        
        
        
        
        
        
    }
}


//struct BeerDTO: Decodable {
//    let id: Int
//    let name: String
//    let tagline: String
//    let imageUrl: URL
//    
//}
