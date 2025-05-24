func calcularMedia(nota1: Double, nota2: Double, nota3: Double) -> Double {
    return (nota1 + nota2 + nota3) / 3
}

// teste

let media:Double = calcularMedia(nota1: 7.5, nota2: 8.0, nota3: 9.0)
print("Média: \(media)")
