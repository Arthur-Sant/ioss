//
//  ViewController.swift
//  goalpost
//
//  Created by COTEMIG on 05/11/21.
//

import CoreData
import UIKit

class GoalsVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let goal = Goal()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.isHidden = false
    }

    @IBAction func addGoalBtnWasPressed(_ sender: Any) {
        
    }
    
}

extension GoalsVC: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell", for: indexPath) as? GoalCell else {
            return UITableViewCell()
        }
        
        cell.configureCell(description: "Eat salad twine week", type: .shortTerm, goalProgressAmount: 2)
        return cell
    }
}

