//
//  ViewController.swift
//  kf
//
//  Created by 지구9 on 9/1/23.
//

import UIKit

class ViewController: UIViewController{
    

    var addButton = UIButton()

    @IBOutlet weak var foodsTableView: UITableView!

    
    var menu: [Menu] = [Menu(image: "chik", foodsName: " CHICKEN ", price: 549),Menu(image: "set", foodsName: "SUSHI" , price: 749), Menu(image: "waurma", foodsName: " SHAURMA ", price: 199), Menu(image: "pizza", foodsName: " PIZZA ", price: 479), Menu(image: "pasta", foodsName: " PASTA", price: 399),Menu(image: "salad", foodsName: " SALAD", price: 149), Menu(image: "fri", foodsName: " FRIES", price: 149), Menu(image: "chok roll", foodsName: "  SWEET.RO", price: 233),Menu(image: "sous", foodsName: " SOUSES ", price: 119)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodsTableView.dataSource = self
        foodsTableView.delegate = self
       
        // Do any additional setup after loading the view.
        foodsTableView.showsVerticalScrollIndicator = false
        
        view.addSubview(addButton)
        addButton.layer.cornerRadius = 100
        addButton.setTitle("🗑", for: .normal)
        addButton.backgroundColor = .systemGreen
        addButton.titleLabel?.font = UIFont.systemFont(ofSize: 50, weight: .heavy)
        addButton.addTarget(self, action: #selector(addButtonTap), for: .touchUpInside)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.rightAnchor.constraint(equalTo: view.centerXAnchor, constant: 20).isActive = true
        addButton.leftAnchor.constraint(equalTo: view.centerXAnchor, constant: 80).isActive = true
        addButton.layer.borderWidth = 5
        addButton.layer.borderColor = UIColor.white.cgColor

        
        addButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30).isActive = true
        
        addButton.heightAnchor.constraint(equalToConstant: 200).isActive = true
        addButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        // Do any additional setup after loading the view.
    
    
}

    @objc  func addButtonTap(){
        

     let busketVC = storyboard?.instantiateViewController(withIdentifier: "busketVC") as! BusketViewController
        self.navigationController?  .pushViewController(busketVC,animated: true)
   foodsTableView.reloadData()
        
        _ = storyboard?.instantiateViewController(withIdentifier: "busket_cell") as! BusketViewController
        _ = [Menu].self
        self.navigationController?.pushViewController(busketVC, animated: true)
        foodsTableView.reloadData()
  }
    

}

extension ViewController: UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menu.count

    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"food_cell", for:  indexPath)as!MenuCell
            cell.foodImage.image = UIImage(named: menu[indexPath.row].image)
            cell.nameTitleView.text = menu[indexPath.row].foodsName
            cell.priceTitleView.text = "\(menu[indexPath.row].price) - $"
            return cell
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 250
    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        pizzaarray.append(menu[indexPath.row])
        
        print(pizzaarray.count)
    }
}
