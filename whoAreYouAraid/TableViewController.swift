//
//  TableViewController.swift
//  whoAreYouAraid
//
//  Created by Yolanda H. on 2019/6/5.
//  Copyright © 2019 Yolanda H. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var songTimes = [String]()
    var songRoles = [String]()
    var songLyrics = [String]()
    var lyrics = [Lyrics]()
    override func viewDidLoad() {
        super.viewDidLoad()

        if let asset = NSDataAsset(name: "whoAreYouAfraid"), let content =
            String(data: asset.data, encoding: .utf8) {
            let array0 = content.components(separatedBy: "\n")
            print(array0[0], array0[1])
            print(array0.count)
            for lyric in array0 {
                let array = lyric.components(separatedBy: ",")
                songTimes.append(array[0])
                songRoles.append(array[1])
                songLyrics.append(array[2])
            }
            print(songLyrics[0],songLyrics[1])
            
            for i in 0...array0.count-1 {
                lyrics.append(Lyrics(songTime: songTimes[i], songRole: songRoles[i], songLyric: songLyrics[i]))
            }
            
            print(lyrics[5].songRole)
        }
        
    }

    // MARK: - Table view data source

    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        
        return 0
    }*/

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        print(lyrics[9])
        return lyrics.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableLyric = lyrics[indexPath.row]
        print(tableLyric.songRole)
        if tableLyric.songRole == " 女" {
            let cell = tableView.dequeueReusableCell(withIdentifier: "girlChat", for: indexPath) as! girlTableViewCell
            cell.lyricLabel.text = tableLyric.songLyric
            print(lyrics[10].songLyric)
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "boyChat", for: indexPath) as! boyTableViewCell
            cell.roleImage.image = UIImage(named: "role0")
            cell.lyricLabel.text = tableLyric.songLyric
            print(lyrics[11].songLyric)
            return cell
        }
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
