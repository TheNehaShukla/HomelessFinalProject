//
//  mapViewViewController.swift
//  HomelessWireframe
//
//  Created by Neha Shukla on 7/20/21.
//

import UIKit

class mapViewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var locationSelected = "default"
    
    @IBOutlet weak var cityHereText: UILabel!
    @IBOutlet weak var table: UITableView!
   // var arrayName = [Resource]()
        
    
    // 1. Pittsburgh
    let pittHeadingsArray = [
        "Light of Life Rescue Mission",
        "Bethlehem Haven",
        "Pleasant Valley Men's Shelter"]
    let pittLabelsArray = [
        "Light of Life is a Christ-centered program that provides services and housing for men, women, and families experiencing homelessness, poverty, or addiction",
        "Bethlehem Haven is a place that provides shelter and supportive services to thousands of homeless women.",
        "Pleasant Valley Men's Shelter is a place that accommodates the needs of 25 men for housing options and evening meals"]
    
    
    // 2. Harrisburg
    var harrisburgHeadingsArray = [
        "Bethesda Mission",
        "Susquehanna Harbor Safe Haven",
        "YWCA Greater Harrisburg"]
    var harrisburgLabelsArray = [
        "Bethesda Mission is a missionary arm of the local church, reaching out to men, women, and children of all races, nationalities, and creeds, providing the poor and homeless with shelter, food, and clothing.",
        "Susquehanna Harbor Safe Haven offers a continuum of crisis management and homeless solutions: from homelessness prevention to short-term aid to long-term solutions.",
        "YWCA programs offer a continuum of housing options and housing assistance."]
    
    
    // 3. Philadelphia
    var phillyHeadingsArray = [
        "Sunday Breakfast Rescue Mission",
        "Bethesda Project",
        "Mercy Hospice For Women and Children"]
    var phillyLabelsArray = [
        "Sunday Breakfast Rescue Mission provides food to people regardless of gender or any other factors and offers emergency shelters for men as well",
        "Bethesda Project provides emergency shelter, housing and supportive services for thousands of individuals experiencing homelessness in Philadelphia.",
        "Mercy Hospice For Women and Children is a shelter where residents will receive three meals a day, and have access to secure mail service"]
    
    
    // 4. Lancaster
    var lancasterHeadingsArray = [
        "Transitional Living Center",
        "Milagro House",
        "Water Street Mission"]
    var lancasterLabelsArray = [
        "Transitional Living Center has an innovative housing approach based on nationally recognized, evidence-based models.",
        "Milagro House provides education, housing and support services to women and their children who would otherwise be experiencing homelessness.",
        "Water Street Mission providing basic needs such as food, clothing, and shelter and  restoration in all areas of life."]

    
    // 5. Allentown
    var allentownHeadingsArray = [
        "Allentown Rescue Mission",
        "Sixth Street Shelter",
        "Salvation Army"]
    var allentownLabelsArray = [
        "Allentown Rescue Mission is to rescue, rehabilitate, and restore homeless men through faith-centered programs based on accountability and compassion.",
        "Sixth Street Shelter provides an essential service to the community as a place for homeless families to find a temporary home and help in preparing for the challenges of a difficult job and rental market.",
        "Salvation Army provides a variety of services from disaster relief, to alcohol and drug rehab, to veteran services, to homeless shelters."]
    
    
    // 6. Scranton
    var scrantonHeadingsArray = [
        "Keystone Mission",
        "NEPA Youth Shelter",
        "Catherine McAuley Center"]
    var scrantonLabelsArray = [
        "Keystone Mission provides assistance for housing, To-Go Meals and a drug or alcohol rehab program.",
        "The shelter will provide essentials such as food, clothing, and bathrooms, as well as services such as educational support, counseling, family reunification, and/or preparation for independent living.",
        "Catherine McAuley Center provides temporary shelter for women, children, and individuals in crisis through individualized case management empowering them to secure and maintain safe and affordable, permanent housing."]
    
    
    // 7. Hershey
    var hersheyHeadingsArray = [
        "Agape Family Shelter",
        "Lebanon Rescue Mission",
        "Jubilee Ministries"]
    var hersheyLabelsArray = [
        "Homeless women and their children. At Agape, we believe that every woman deserves the opportunity for a fresh start. We know that every child needs a safe, clean home to call their own.",
        "Emergency Shelter for men only. Men's discipleship program, Provides meals and a safe environment.",
        "Jubilee Ministries Homeless Resource Center is a place to go when there is nowhere else to go. It serves as a home-base for those who need a place to stay and assistance to get back into housing."]
    
    // 8. Erie
    let erieHeadingsArray = [
        "City Mission New Life",
        "The Refuge"]
    let erieLabelsArray = [
        "New Life Program long-term comprehensive residential recovery program for men committed to making a true change in their lives.",
        "The Refuge is the only emergency shelter in Erie that can keep the entire family unit together by housing them in their own room."]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        table.delegate = self
        table.dataSource = self
        table.reloadData()
    }
    
    // default table view set up:
    
    // 1. Pittsburgh
    // 2. Harrisburg
    // 3. Philadelphia
    // 4. Lancaster
    // 5. Allentown
    // 6. Scranton
    // 7. Hershey
    // 8. Erie
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if locationSelected == "pittsburgh" {
            return pittHeadingsArray.count
        } else if locationSelected == "harrisburg" {
            return harrisburgHeadingsArray.count
        } else if locationSelected == "philadelphia" {
                return phillyHeadingsArray.count
        } else if locationSelected == "lancaster" {
                return lancasterHeadingsArray.count
        } else if locationSelected == "allentown" {
                return allentownHeadingsArray.count
        } else if locationSelected == "scranton" {
                return scrantonHeadingsArray.count
        } else if locationSelected == "hershey" {
                return hersheyHeadingsArray.count
        } else if locationSelected == "erie" {
            return erieHeadingsArray.count
        } else if locationSelected == "default" {
            return 1
        } else {
        return 0
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200 // makes cells taller
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier, for: indexPath) as! MyTableViewCell
        
        // 1. Pittsburgh
        // 2. Harrisburg
        // 3. Philadelphia
        // 4. Lancaster
        // 5. Allentown
        // 6. Scranton
        // 7. Hershey
        // 8. Erie
        
        if locationSelected == "pittsburgh" {
            customCell.myHeader.text = pittHeadingsArray[indexPath.row]
            customCell.myLabel.text = pittLabelsArray[indexPath.row]
        } else if locationSelected == "harrisburg" {
            customCell.myHeader.text = harrisburgHeadingsArray[indexPath.row]
            customCell.myLabel.text = harrisburgLabelsArray[indexPath.row]
        } else if locationSelected == "philadelphia" {
            customCell.myHeader.text = phillyHeadingsArray[indexPath.row]
            customCell.myLabel.text = phillyLabelsArray[indexPath.row]
        } else if locationSelected == "lancaster" {
            customCell.myHeader.text = lancasterHeadingsArray[indexPath.row]
            customCell.myLabel.text = lancasterLabelsArray[indexPath.row]
        } else if locationSelected == "allentown" {
            customCell.myHeader.text = allentownHeadingsArray[indexPath.row]
            customCell.myLabel.text = allentownLabelsArray[indexPath.row]
        } else if locationSelected == "scranton" {
            customCell.myHeader.text = scrantonHeadingsArray[indexPath.row]
            customCell.myLabel.text = scrantonLabelsArray[indexPath.row]
        } else if locationSelected == "hershey" {
            customCell.myHeader.text = hersheyHeadingsArray[indexPath.row]
            customCell.myLabel.text = hersheyLabelsArray[indexPath.row]
        } else if locationSelected == "erie" {
            customCell.myHeader.text = erieHeadingsArray[indexPath.row]
            customCell.myLabel.text = erieLabelsArray[indexPath.row]
        } else if locationSelected == "default" {
            customCell.myHeader.text = "Directions"
            customCell.myLabel.text = "Click on a star to see places in that area"
        }

        return customCell
    }
    
    // 1. Pittsburgh
    @IBAction func pittClicked(_ sender: Any) {
        cityHereText.text = "Pittsburgh"
        locationSelected = "pittsburgh"
        
        table.reloadData()
    }
    
    // 2. Harrisburg
    @IBAction func harrisburgClicked(_ sender: Any) {
        cityHereText.text = "Harrisburg"
        locationSelected = "harrisburg"
        
        table.reloadData()
    }
    
    // 3. Philadelphia
    @IBAction func philadelphiaClicked(_ sender: Any) {
        cityHereText.text = "Philadelphia"
        locationSelected = "philadelphia"
        
        table.reloadData()
    }
    
    // 4. Lancaster
    @IBAction func lancasterClicked(_ sender: Any) {
        cityHereText.text = "Lancaster"
        locationSelected = "lancaster"
        
        table.reloadData()
    }
    
    // 5. Allentown
    @IBAction func allentownClicked(_ sender: Any) {
        cityHereText.text = "Allentown"
        locationSelected = "allentown"
        
        table.reloadData()
    }
    
    // 6. Scranton
    @IBAction func scrantonClicked(_ sender: Any) {
        cityHereText.text = "Scranton"
        locationSelected = "scranton"
        
        table.reloadData()
    }
    
    // 7. Hershey
    @IBAction func hersheyClicked(_ sender: Any) {
        cityHereText.text = "Hershey"
        locationSelected = "hershey"
        
        table.reloadData()
    }
    
    // 8. Erie
    @IBAction func erieClicked(_ sender: Any) {
        cityHereText.text = "Erie"
        locationSelected = "erie"
        
        table.reloadData()
    }
    
   

}
