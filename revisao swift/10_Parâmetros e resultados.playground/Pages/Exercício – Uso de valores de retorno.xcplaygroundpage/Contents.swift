/*:
 ## Exercício – Uso de valores de retorno
 
 Você aprendeu que as funções são os componentes básicos dos programas, mas até agora, na maioria das vezes, usou uma de cada vez. Neste exercício, você vai usar os resultados de uma função para influenciar o trabalho de outra.

 A função `impossibleBeliefsCount` (Contagem de coisas impossíveis) recebe vários números de incidentes improváveis relatados. A seguir, ela imprime o número de coisas impossíveis em que você pode acreditar:
*/
func impossibleBeliefsCount(pigsFlying: Int, frogsBecomingPrinces: Int, multipleLightningStrikes: Int) -> Int {
    let total = pigsFlying + frogsBecomingPrinces + multipleLightningStrikes
    return (total)
}
//: - callout(Exercise):\
//:(Exercício):\
//:Atualize a função `impossibleBeliefsCount` para que, em vez de imprimir o valor, ela retorne como `Int`.
//:
//: `impossibleThingsPhrase` cria uma frase usando a interpolação de strings:
func `impossibleThingsPhrase` (numberOfImpossibleThings: Int, meal: String) -> String {
    
    return "Bom, eu acreditei em \(numberOfImpossibleThings) antes da \(meal)"
}
//: - callout(Exercise):\
//:(Exercício):\
//:Atualize a função `impossibleThingsPhrase` para que, em vez de usar suas duas constantes internas, ela use dois argumentos: `numberOfImpossibleThings` como `Int` e `meal` como `String`.
//:
//: Agora você tem duas funções que recebem parâmetros e retornam valores.
//: - callout(Exercise):\
//:(Exercício):\
//:Invoque `impossibleBeliefsCount` e salve o resultado em uma constante.\
//:Invoque `impossibleThingsPhrase` e passe o resultado de `impossibleBeliefsCount` como um dos argumentos.
let invoque = impossibleBeliefsCount(pigsFlying: 10, frogsBecomingPrinces: 20, multipleLightningStrikes: 30)
let invoque1 = impossibleThingsPhrase(numberOfImpossibleThings: 10, meal: "sei la")




//: [Anterior](@previous)  |  página 15 de 17  |  [Na sequência: Exercício – Rótulo de argumento](@next)
