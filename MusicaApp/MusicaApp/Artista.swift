//
//  Artista.swift
//  MusicaApp
//
//  Created by student on 22/07/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation

class Artista {
    let nome: String
    let imagem: String
    let historico: String
    
    init (nome: String, imagem: String, historico: String) {
        self.nome = nome
        self.imagem = imagem
        self.historico = historico
        
    }
}

class ArtistaDAO {
    static func getList() -> [Artista] {
        return [
            Artista(nome: "Artista 1", imagem: "shakira", historico: "Historico do artista"),
            Artista(nome: "Artista 2", imagem: "imagem2", historico: "Historico do artista"),
            Artista(nome: "Artista 3", imagem: "imagem3", historico: "Historico do artista"),
            Artista(nome: "Artista 4", imagem: "imagem4", historico: "Historico do artista")
        ]
    }
}
