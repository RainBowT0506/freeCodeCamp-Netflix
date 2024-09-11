//
//  UpcomingViewController.swift
//  freeCodeCamp-Netflix
//
//  Created by RainBowT on 2024/9/8.
//

import UIKit

class UpcomingViewController: UIViewController {
    
    private var titles: [Title] = [Title]
    
    private let upcomingTable: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        title = "Upcoming"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationItem.largeTitleDisplayMode = .always
        
        view.addSubview(upcomingTable)
        upcomingTable.delegate = self
        upcomingTable.dataSource = self
        
        fetchUpcoming()
    }
    
    private func fetchUpcoming(){
        APICaller.shared.getUpcomingMovies{[weak self] result in
            switch result{
            case.success(let titles):
                self?.titles = titles
                DispatchQueue.main.sync {
                    self?.upcomingTable.reloadData()
                }
            case.failure(let error):
                print(error)
            }
        }
    }
}

extension UpcomingViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = titles[indexPath.row].original_name ?? titles[indexPath.row].original_title ?? "Unknowm"
        return cell
    }
}


