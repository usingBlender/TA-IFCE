let input = "swift programming"
var tally = 0

for i in input {
    switch(i) {
        case "a", "e", "i", "o", "u":
            tally += 1
        default:
            continue
    }
}

print("Quantia de vogais: \(tally)")
