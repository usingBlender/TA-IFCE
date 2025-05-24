func verificarPalindromo(input: String) -> Bool {
    return String(input.reversed()) == input ? true : false
}

// teste

print(verificarPalindromo(input: "veiculo"))
print(verificarPalindromo(input: "arara"))
