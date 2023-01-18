//
//  ViewController2.swift
//  kf
//
//  Created by 지구9 on 18/1/23.
//

import UIKit

class ViewController2: UIViewController {

    
    @IBOutlet weak var tableView2: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView2.delegate = self
        tableView2.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView2.reloadData()
    }
    
}
extension ViewController2: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
extension ViewController2: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pizzaarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "busket_cell", for: indexPath) as! BusketCell
        cell.secondImageView.image = UIImage(named: pizzaarray[indexPath.row].image)
        cell.labelName.text = pizzaarray[indexPath.row].foodsName
        cell.labelPrice.text = "\(pizzaarray[indexPath.row].price)"
        return cell
    }
    
}
