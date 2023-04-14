

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Find Milk","Buy Egg","Cut gless"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

//MARK - TableView Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    

}
