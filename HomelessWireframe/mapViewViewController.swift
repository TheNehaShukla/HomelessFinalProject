//
//  mapViewViewController.swift
//  HomelessWireframe
//
//  Created by Neha Shukla on 7/20/21.
//

import UIKit

class mapViewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
   // var arrayName = [Resource]()
    
    var pittHeadingsArray = [
        "Light of Life Rescue Mission",
        "Bethlehem Haven",
        "Pleasant Valley Men's Shelter"]
    
    var pittLabelsArray = [
        "Light of Life is a Christ-centered program that provides services and housing for men, women, and families experiencing homelessness, poverty, or addiction",
        "Bethlehem Haven is a place that provides shelter and supportive services to thousands of homeless women.",
        "Pleasant Valley Men's Shelter is a place that accommodates the needs of 25 men for housing options and evening meals"]
    
    var harrisburgHeadingsArray = [
        "Bethesda Mission",
        "Susquehanna Harbor Safe Haven",
        "YWCA Greater Harrisburg"]
    
    var harrisburgLabelsArray = [
        "Bethesda Mission is a missionary arm of the local church, reaching out to men, women, and children of all races, nationalities, and creeds, providing the poor and homeless with shelter, food, and clothing.", "Susquehanna Harbor Safe Haven offers a continuum of crisis management and homeless solutions: from homelessness prevention to short-term aid to long-term solutions.", ]
    
    var phillyHeadingsArray = ["Sunday Breakfast Rescue Mission", "Bethesda Project", "Mercy Hospice For Women and Children"]
    var phillyLabelsArray = ["Sunday Breakfast Rescue Mission provides food to people regardless of gender or any other factors and offers emergency shelters for men as well", "Bethesda Project provides emergency shelter, housing and supportive services for thousands of individuals experiencing homelessness in Philadelphia.", "Mercy Hospice For Women and Children is a shelter where residents will receive three meals a day, and have access to secure mail service"]
    
    var lancasterHeadingsArray = [""]
    var lancasterLabelsArray = [""]
    
    var allentownHeadingsArray = [""]
    var allentownLabelsArray = [""]
    
    var scrantonHeadingsArray = [""]
    var scrantonLabelsArray = [""]
    
    var hersheyHeadingsArray = ["Agape Family Shelter","Lebanon Rescue Mission","Hope Homeless Resource Center"]
    var hersheyLabelsArray = [""]
    
    var erieHeadingsArray = [""]
    var erieLabelsArray = [""]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        
        /*let test = Resource() // object of Resource
        test.myHeader = "any information"
        test.myLabel = "any label"
        arrayName.append(test)
        
        let test2 = Resource() // object of Resource
        test2.myHeader = "2"
        test2.myLabel = "two"
        arrayName.append(test2)
         
         Pittsburgh -
         Philadelphia -
         Harrisburg -
         Lancaster -
         Allentown -
         Scranton -
         Hershey -
         Erie

 */
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pittHeadingsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /* let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Hello World"
        return cell */ // simple text cell
        
        let customCell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        // customCell.myHeader.text = "Test"
        customCell.myHeader.text = pittHeadingsArray[indexPath.row]
        customCell.myLabel.text = pittLabelsArray[indexPath.row]
        // Figure out specific .command for link >> customCell.myButton.XXX = arrayName[indexPath.row].myButton
        
        return customCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200 // makes cells taller
    }
    

    /*
     // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
