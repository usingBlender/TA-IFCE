var sum:Int = 0

for i in 1...50 {
    if(i % 2 == 1) {
        sum += i
    }
}

print("Resultado da soma de 1 -> 50: \(sum)")
