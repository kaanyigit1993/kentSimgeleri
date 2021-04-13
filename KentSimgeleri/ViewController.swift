//
//  ViewController.swift
//  KentSimgeleri
//
//  Created by KAAN YİĞİT on 13.04.2021.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate , UITableViewDataSource{
    
    var landMarkNames = [String]()
    var landMarkImages = [UIImage]()
    var choisenLandmarkNames = ""
    var choisenLandmarkImages = UIImage()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        print("asd")
       
        landMarkNames.append("Colosseum")
        landMarkNames.append("Great Wall")
        landMarkNames.append("Kremlin")
        landMarkNames.append("Stonehenge")
        landMarkNames.append("Tac Mahal")
        
        
        landMarkImages.append(UIImage(named: "colosseum")!)
        landMarkImages.append(UIImage(named: "greatwall")!)
        landMarkImages.append(UIImage(named: "kremlin")!)
        landMarkImages.append(UIImage(named: "stonehenge")!)
        landMarkImages.append(UIImage(named: "tacmahal")!)
        
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            landMarkNames.remove(at: indexPath.row)
            landMarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.middle)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landMarkNames.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landMarkNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choisenLandmarkNames = landMarkNames[indexPath.row]
        choisenLandmarkImages = landMarkImages[indexPath.row]
        performSegue(withIdentifier: "toImageViewController", sender: nil)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController" {
            let destinationVC = segue.destination as! imageViewController
            destinationVC.selectedLandmarkName = choisenLandmarkNames
            destinationVC.selectedLandmarkImage = choisenLandmarkImages
        }
    }
    
}

