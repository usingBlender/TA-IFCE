var nomes:[String] = [
    "Ana",
    "João",
    "Maria",
    "Pedro"
]

print("Antes: \(nomes)") // teste

let nomeInput:String = "Carlos"
var nomePresente:Bool = false

for nome in nomes {
    if(nome == nomeInput) {
        nomePresente = true
    }
}

if(!nomePresente) {
    nomes.append(nomeInput)
}

print("Depois: \(nomes)") // teste
