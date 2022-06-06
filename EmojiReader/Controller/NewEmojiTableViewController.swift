//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by Дмитрий Шульгин on 02.06.2022.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    
    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)
    
    @IBOutlet weak var emojiTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var descriptionTF: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
        updateSaveButtonState()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    
    private func updateSaveButtonState(){
        //guard let res = emojiTF.text?.isEmpty! else (return)
            
        let emoji = emojiTF.text?.isEmpty ?? true
        let name = nameTF.text?.isEmpty  ?? true
        let description = descriptionTF.text?.isEmpty  ?? true
        
        saveButton.isEnabled = !emoji && !name && !description
        
    }
    
    private func updateUI() {
        emojiTF.text = emoji.emoji
        nameTF.text = emoji.name
        descriptionTF.text = emoji.description
    }
    
    @IBAction func textChange(_ sender: Any) {
        updateSaveButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        let emoji = emojiTF.text ?? ""
        let name = nameTF.text ?? ""
        let descriprion = descriptionTF.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: descriprion, isFavourite: self.emoji.isFavourite)
        
        
    }
    
}
