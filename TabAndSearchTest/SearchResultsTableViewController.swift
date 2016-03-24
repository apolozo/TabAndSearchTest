//
//  SearchResultsTableViewController.swift
//  TabAndSearchTest
//
//  Created by Albert Bori on 4/30/15.
//  Copyright (c) 2015 albertbori. All rights reserved.
//

import UIKit

class SearchResultsTableViewController: UITableViewController, UISearchBarDelegate, UISearchControllerDelegate {

    var tableData: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.hidesBottomBarWhenPushed = true
    }
    

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("SearchCell", forIndexPath: indexPath) 

        cell.textLabel?.text = tableData[indexPath.row]

        return cell
    }
    
    
    //MARK: - UISearchBarDelegate
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        tableData = []
        while tableData.count < 25 {
            tableData.append("Cool results!")
        }
        tableView.reloadData()
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        tableData = []
        tableView.reloadData()
    }
    
    //MARK: - UISearchControllerDelegate
    
    func willDismissSearchController(searchController: UISearchController) {
        tableData = []
    }

}
