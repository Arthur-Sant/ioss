//
//  GoalCell.swift
//  goalpost
//
//  Created by COTEMIG on 05/11/21.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbll: UILabel!
    
    func configureCell(description: String, type: GoalTyoe, goalProgressAmount: Int){
        self.goalDescriptionLbl.text = description
        self.goalTypeLbl.text = type.rawValue
        self.goalProgressLbll.text = String(describing: goalProgressAmount)
    }

}
