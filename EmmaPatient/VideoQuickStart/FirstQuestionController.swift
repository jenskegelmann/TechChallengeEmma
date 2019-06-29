//
//  FirstQuestionController.swift
//  Emma
//
//  Created by Jens Kegelmann on 29.06.19.
//

import UIKit

class FirstQuestionController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tblView: UITableView!
    
    let symptomeArr = ["Bauchschmerzen", "Ausschlag", "Fieber", "Hoher Blutdruck"]
    var searchSymptome = [String]()
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension FirstQuestionController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        if searching {
            return searchSymptome.count
        } else {
            return symptomeArr.count

        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if searching {
            cell?.textLabel?.text = searchSymptome[indexPath.row]
        } else {
            cell?.textLabel?.text = symptomeArr[indexPath.row]
        }
        return cell!
    }
}

extension FirstQuestionController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        searchSymptome = symptomeArr.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased()})
        searching = true
        tblView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        tblView.reloadData()
    }
}
