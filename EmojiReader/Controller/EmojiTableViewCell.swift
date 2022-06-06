//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by Дмитрий Шульгин on 01.06.2022.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {


    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func set(emojiData: Emoji){
        
        self.emojiLabel.text = emojiData.emoji
        self.nameLabel.text = emojiData.name
        self.descriptionLabel.text = emojiData.description
    
    }

}
