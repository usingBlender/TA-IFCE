var frutas:[String] = [
    "maçã",
    "banana",
    "laranja",
    "uva"
]

// solução sensivel a caps/case
if (!frutas.contains("morango")) {
    frutas.append("morango")
}

// testes
for fruta in frutas {
    print(fruta)
}
