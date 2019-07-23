//
//  MusicaTableViewController.swift
//  MusicaApp
//
//  Created by student on 22/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class MusicaTableViewController: UITableViewController {

    var musicas = [Musica]()
    var artistas = [Artista]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        musicas = MusicaDAO.getList()
        artistas = ArtistaDAO.getList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return musicas.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "musicaCell", for: indexPath)

        if let musicaCell = cell as? MusicaTableViewCell {
            
            let musica = musicas[indexPath.row]
            
            musicaCell.tituloLabel.text = musica.title
            musicaCell.subTituloLabel.text = musica.subTitle
            
            return musicaCell
        }
        
        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        
        return true
    }
    

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailSegue" {
            let musica = musicas[1]
            let artista = artistas[musica.artista]
            if let novaView = segue.destination as? ArtistaDetailViewController {
                novaView.artista = artista
            }
        }
    }
    

}
