//
//  DestaqueDaSemanaViewController.swift
//  MusicaApp
//
//  Created by student on 23/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class DestaqueDaSemanaViewController: UIViewController {
    
    var musicas = [Musica]()
    var artistas = [Artista]()
    
    @IBOutlet weak var imagemDestaque: UIImageView!

    @IBOutlet weak var nomeArtistaLabel: UILabel!
    
    
    @IBOutlet weak var detalheArtistaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        musicas = MusicaDAO.getList()
        artistas = ArtistaDAO.getList()

        imagemDestaque.image = UIImage(named: artistas[0].imagem)
        nomeArtistaLabel.text = artistas[1].nome
        detalheArtistaLabel.text = artistas[1].historico

        // Do any additional setup after loading the view.
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "maisSegue" {
            let artista = artistas[1]
            
            if let novaView = segue.destination as? ArtistaDaSemanaViewController {
                novaView.artista = artista
            }
        }
    }
    

}
