//
//  SettingsTableViewCell.swift
//  CellDelegateMiniLesson
//
//  Created by Gibson Smiley on 2/12/16.
//  Copyright © 2016 Jordan Nelson. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    var delegate: SettingsCellDelegate?

    @IBOutlet weak var labelView: UILabel!
    @IBOutlet weak var settingsImage: UIImageView!
    @IBOutlet weak var toggleSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func switchTapped(sender: UISwitch) {
        delegate?.settingsCellSwitchTapped(self)
    }

}

protocol SettingsCellDelegate {
    func settingsCellSwitchTapped(sender: SettingsTableViewCell)
}

extension SettingsTableViewCell {
//    Updating cell's UI according to the setting
    func updateCellWithSettings(setting: Setting) {
        if let image = setting.image {
            settingsImage.image = image
        }
        labelView.text = setting.name
        toggleSwitch.on = setting.isSet
    }
}














