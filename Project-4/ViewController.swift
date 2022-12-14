//
//  ViewController.swift
//  Project-4
//
//  Created by Евгения Зорич on 14.12.2022.
//

import UIKit

class ViewController: UITableViewController {

    var flagsSmall: [String] = []
    var flagsBig: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
        title = "Choose your country"
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.contains("2x") {
                flagsSmall.append(item)
            }
        }
        for item in items {
            if item.contains("3x") {
                flagsBig.append(item)
            }
        }
        flagsSmall.sort()
        flagsBig.sort()
        print(flagsSmall)
        print(flagsBig)
    }
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return flagsSmall.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "flag", for: indexPath) as? FlagTableViewCell else { return UITableViewCell() }

        cell.flagImageView.image = UIImage(named: flagsSmall[indexPath.row])
        print(indexPath.row)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImage = flagsSmall[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
  
}

