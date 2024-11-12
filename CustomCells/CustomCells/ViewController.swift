//
//  ViewController.swift
//  CustomCells
//
//  Created by User on 07.11.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }
    
}
extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let game = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell" , for: indexPath) as! CustomTableViewCell
        cell.label.text = game.title
        cell.iconImageView.image = UIImage(named: game.imageName)
        cell.label2.text = game.title2
        return cell 	
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "SecondViewController") as?
            SecondViewController{
            vc.img = UIImage(named: data[indexPath.row].imageName)!
            vc.det = data[indexPath.row].detail
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

