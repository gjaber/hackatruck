//
//  Podcast.swift
//  Podcast
//
//  Created by student on 19/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

class Podcast {
    let titulo: String
    let descricao: String
    let imagem: String
    
    init (titulo: String, descricao: String, imagem: String) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}

class PodcastDAO {
    
    
    static func getData() -> [Podcast] {
        return [
            Podcast(titulo: "99Vidas", descricao: "No unplayed episodes", imagem: "99vidas"),
            Podcast(titulo: "Canal42.tv", descricao: "No unplayed episodes", imagem: "canal42"),
            Podcast(titulo: "Mac Magazine no Ar", descricao: "No unplayed episodes", imagem: "macmagazine"),
            Podcast(titulo: "Não Ouvo", descricao: "No unplayed episodes", imagem: "naoouvo"),
            Podcast(titulo: "NerdCasr", descricao: "No unplayed episodes", imagem: "nerdcast"),
            Podcast(titulo: "O Melhor Podcast do Brasil", descricao: "No unplayed episodes", imagem: "Melhor")
            
        ]
    
    }
}
