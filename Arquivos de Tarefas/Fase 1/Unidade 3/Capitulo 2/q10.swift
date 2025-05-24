var notas:[Int] = [85, 90, 78, 92, 88]

var soma:Int = 0

for nota in notas {
    soma += nota
}

let media:Int = soma / notas.count

if(media >= 70) {
    print("Aprovado")
}
else {
    print("Reprovado")
}
