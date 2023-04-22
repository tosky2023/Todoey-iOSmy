//
//  CategoryViewController.swift
//  Todoey
//
//  Created by 潘鹤群 on 2023/4/21.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit
import CoreData

class CategoryViewController: UITableViewController {
    
    var categories = [Category]()
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
//MARK: - TableView Datasource Method
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
       }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: <#T##String#>,for:indexPath)
        
        let category = categories[indexPath.row]
        
  
    }

   

//MARK: - Data Manipulation Methods

    func saveCategories() {
        do {
            
            try context.save()
        } catch {
            print("error in saveing \(error)")
        }
        
        self.tableView.reloadData()
    }

    func loadCategories(with request:NSFetchRequest<Category> = Category.fetchRequest()){
         
        do {
           categories = try context.fetch(request)
        } catch  {
            print(" error featch data from context\(error)")
        }
        tableView.reloadData()
    }
    
    
    
    
    

//MARK: - Add New Categories

    
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
    }
    
    
    
    
    //MARK: - TableView Delegate Method
    
    
    
    
    
    
}
   
