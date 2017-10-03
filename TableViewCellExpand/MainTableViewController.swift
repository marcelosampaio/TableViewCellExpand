//
//  MainTableViewController.swift
//  TableViewCellExpand
//
//  Created by Marcelo on 10/3/17.
//  Copyright © 2017 MAS. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    // MARK: - Properties
    var source = [String]()
    var detailSource = [String]()
    var selectedIndexPath = IndexPath()

    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // load content
        loadContent()

    }

    
    // MARK: - Application Data Source
    private func loadContent(){
        
        // Row content
        source.append("Row 0")
        source.append("Row 1")
        source.append("Row 2")
        source.append("Row 3")
        source.append("Row 4")
        
        // content detail
        detailSource.append("Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda. Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda.Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda.")
        detailSource.append("Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda. Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda.Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda.")
        detailSource.append("Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda. Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda.Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda.")
        detailSource.append("Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda. Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda.Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda.")
        detailSource.append("Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda. Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda.Anashdg hhhs jajahsgyk jasj sashh haggsja khasdjhas khaghs hgasgdas jashsdgj qwye nbbaanaba. Tiahsjad kajjhlhjda.")
        
    }
    

    // MARK: - Table View Delegate
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return source.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = source[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            selectedIndexPath = indexPath
            tableView.beginUpdates()
            tableView.endUpdates()

    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath == selectedIndexPath {
            return 140
        }
        return 44
    }
}
