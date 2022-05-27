//
//  ViewController.swift
//  MultipleCustomCell
//
//  Created by Rosendo Vázquez on 27/05/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let tableView:UITableView = {
        let table = UITableView()
        table.register(SimpleTableViewCell.self,
                       forCellReuseIdentifier: SimpleTableViewCell.identifier)
        table.register(ImageTableViewCell.self,
                       forCellReuseIdentifier: ImageTableViewCell.identifier)
        
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row < 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier, for: indexPath) as! ImageTableViewCell
            cell.configure()
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier, for: indexPath)
        cell.textLabel?.text = "Hello world"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let height = indexPath.row < 5 ? 110.0 : 40.0
        return CGFloat(height)
    }

    
}

