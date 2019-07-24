//
//  DestaqueDaSemanaViewController.swift
//  MusicaApp
//
//  Created by student on 23/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ArtistaDaSemanaViewController: UIViewController {

    
    var artista: Artista?
    
    @IBOutlet weak var nomeArtistaLabe: UILabel!
    @IBOutlet weak var detalheArtistaLabel: UILabel!
    @IBOutlet weak var imagemArtista: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nomeArtistaLabe.text = artista?.nome
        detalheArtistaLabel.text = artista?.historico
        imagemArtista.image = UIImage(named: (artista?.imagem)!)
        // Do any additional setup after loading the view.
    }

    
/*
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
*/

}
