//
//  PickerViewController.swift
//  Eval-iOS-Pokemon
//
//  Created by Student07 on 08/08/2023.
//

import UIKit
import SafariServices

class PickerViewController: UIViewController {

    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var imgPoke: UIImageView!
    
    var colors = [
        Color(color: UIColor.black, name: "Black"),
        Color(color: UIColor.red, name: "Red"),
        Color(color: UIColor.cyan, name: "Cyan"),
        Color(color: UIColor.magenta, name: "Magenta"),
        Color(color: UIColor.purple, name: "Purple")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.dataSource = self
        
        setup()
    }
    
    func setup() {
        imgPoke.contentMode =  .scaleAspectFit
        imgPoke.clipsToBounds = true
        imgPoke.center = view.center
        imgPoke.image = UIImage(named: pokemonList[0].img)
        imgPoke.backgroundColor = colors[0].color
    }
    
    @IBAction func moreInfo(_ sender: UIButton) {
        if let url = URL(
            string: NSLocalizedString("url_poke", comment: "") + pokemonList[picker.selectedRow(inComponent: 0)].name
        ){
            let vc = SFSafariViewController (url: url)
            present(vc, animated: true)
        }
    }
    
}

extension PickerViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView,
                    numberOfRowsInComponent component: Int) -> Int {
        switch(component){
        case 0: return pokemonList.count
        case 1: return colors.count
        default: return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,
                    forComponent component: Int) -> String? {
        switch(component){
        case 0: return pokemonList[row].name
        case 1: return colors[row].name
        default: return "None_content"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int,
                    inComponent component: Int) {
        switch(component){
        case 0:
            imgPoke.image = UIImage(named: pokemonList[row].img)!
        case 1:
            imgPoke.backgroundColor = colors[row].color
        default: return
        }
    }
}
