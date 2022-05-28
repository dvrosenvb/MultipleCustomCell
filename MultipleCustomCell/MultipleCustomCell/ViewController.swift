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
        table.register(StoryTableViewCell.self,
                       forCellReuseIdentifier: StoryTableViewCell.identifier)
        table.register(BannerTableViewCell.self,
                       forCellReuseIdentifier: BannerTableViewCell.identifier)
        
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
        tableView.showsVerticalScrollIndicator = false
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: BannerTableViewCell.identifier, for: indexPath) as! BannerTableViewCell
            cell.configure()
            return cell
        }
        
        if indexPath.row < 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier, for: indexPath) as! ImageTableViewCell
            cell.configure()
            return cell
        }
        
        if indexPath.row < 10 && indexPath.row > 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: StoryTableViewCell.identifier, for: indexPath) as! StoryTableViewCell
            cell.configure()
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier, for: indexPath)
        cell.textLabel?.text = "Hello world"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height = 0.0
        if indexPath.row == 0 {
            height = 260
        }else{
            height =  indexPath.row < 10 ? 110.0 : 140.0
        }
        return CGFloat(height)
    }

    
}

