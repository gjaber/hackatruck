/*:
 ## Exercício – Apresentador de karaokê

 Você tem um amigo que adora cantar no karaokê com muita gente. As pessoas colocam as músicas que querem cantar em uma lista, e o apresentador vai dizendo os nomes dessas músicas, uma por uma. 
 
 Seu amigo pediu para você criar um software que ajude a organizar a lista de músicas.

 - callout(Exercise):\
(Exercício):\
Crie um vetor vazio, que conterá os nomes das músicas como strings, e use o método de `adição` para acrescentar três ou quatro músicas, uma de cada vez.
 */
var musics = [String]()
musics.append("musica 1")
musics.append("musica 2")
musics.append("musica 3")
musics.append("musica 4")




/*:
 - callout(Exercise):\
(Exercício):\
Um cantor empolgado quer adicionar três músicas de uma vez. Crie um vetor para conter a lista de músicas dele e use o operador `+=` para adicionar a lista inteira ao final da lista de músicas do grupo.
 */
let addMusicas = ["escolha1", "escolha2", "escolha3"]
musics += addMusicas





/*:
 - callout(Exercise):\
(Exercício):\
Formule um loop `for…in` e, para cada nome de música do vetor, imprima uma frase de incentivo para avisar ao próximo cantor que a vez dele chegou.
 */
for musica in musics {
    print ("Musica: " + musica)
}





/*:
 - callout(Exercise):\
(Exercício):\
Depois que o loop chamar todos os cantores, use o método `removeAll` na lista de músicas para limpar as músicas que já passaram.
 */

musics.removeAll()



//: [Anterior](@previous)  |  página 14 de 17  |  [Na sequência: Exercício – Contagem de votos](@next)
