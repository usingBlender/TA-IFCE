func verificarMaiorIdade(idade: UInt8) -> String {
    return idade >= 18 ? "Maior de idade" : "Menor de idade"
}

// teste

print(verificarMaiorIdade(idade: 17))
print(verificarMaiorIdade(idade: 18))
