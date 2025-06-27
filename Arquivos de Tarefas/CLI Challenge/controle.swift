// vou usar comentários pra fazer minhas anotaçõezinhas aqui

func tempoParaPreparar(bebidas: [String]) -> Double {
    let tempos = [
        "cerveja": 0.5,
        "refrigerante": 0.5,
        "água": 0.5,
        "dose": 1.0,
        "coquetel": 1.5,
        "bebida chique": 2.5,
        "bebida congelada": 3.0
    ] // dicionário, daora

    var tempoTotal:Double = 0

    for bebida in bebidas {
        if let tempo = tempos[bebida] {
            tempoTotal += tempo
        } // loop aqui verifica a existência de cada bebida em questão no dicionário
    }

    return tempoTotal;
}

func fatiarLimões(necessarias: Int, limoes: [String]) -> Int {
    let fatiasPorLimao = [
    "pequeno": 6,
    "média": 8,
    "grande": 10
    ] // outro dicionário só q [string, int] dessa vez

    var fatiasNecessarias = necessarias // isso aq pq todo parametro é constante, daora
    var limoesCortados = 0

    for limao in limoes {
        if let fatias = fatiasPorLimao[limao] {
            fatiasNecessarias -= fatias
            limoesCortados += 1

            if fatiasNecessarias <= 0 {
                break
            }
        }
    }

    return limoesCortados
}

func terminarTurno(minutosRestantes: Int, pedidosRestantes: [[String]]) -> [[String]] {
    var tempoRestante = Double(minutosRestantes) // converti pra double pq tava dando erro no meu editor de texto
    var pedidosNaoAtendidos = pedidosRestantes

    while !pedidosNaoAtendidos.isEmpty { // negaçao
        let pedido = pedidosNaoAtendidos[0] // pega o primeiro pedido
        let tempoParaPedido = tempoParaPreparar(bebidas: pedido) // pega o tempo aí

        if tempoParaPedido <= tempoRestante {
            tempoRestante -= tempoParaPedido
            pedidosNaoAtendidos.remove(at: 0)
        } else {
            break;
        }
    }

    return pedidosNaoAtendidos
}

func rastrearPedidos(pedidos: [(bebida: String, hora: String)]) -> ( // parametro tupla (string,string)
        cerveja: (primeiro: String, ultimo: String, total: Int)?, // retorno tupla (string,string,int)
        refrigerante: (primeiro: String, ultimo: String, total: Int)?) { // mesmo de cima
    
    if pedidos.count <= 0 { // retorno nulo caso não há nenhum pedido, como pedido na questao (aha)
        return (nil, nil);
    }

    var cerveja: (primeiro: String, ultimo: String, total: Int) = (primeiro: "", ultimo: "", total: 0)
    var refrigerante: (primeiro: String, ultimo: String, total: Int) = (primeiro: "", ultimo: "", total: 0)

    for pedido in pedidos {
        switch pedido.bebida {
            case "cerveja":
                if cerveja.primeiro == "" {
                    cerveja.primeiro = pedido.hora
                    cerveja.total += 1
                    continue;
                }
                cerveja.ultimo = pedido.hora
                cerveja.total += 1
                continue;

            case "refrigerante":
                if refrigerante.primeiro == "" {
                    refrigerante.primeiro = pedido.hora
                    refrigerante.total += 1
                    continue;
                }
                refrigerante.ultimo = pedido.hora
                refrigerante.total += 1
                continue;

            default:
                continue;
        }
    }

    return (cerveja, refrigerante);
}

// testes

var teste1 = tempoParaPreparar(bebidas: ["cerveja", "bebida congelada", "dose"])
print("Teste 1 -> \(teste1)") // => 4.5

var teste2 = fatiarLimões(necessarias: 25, limoes: ["pequeno", "pequeno", "grande", "médio", "pequeno"])
print("Teste 2 -> \(teste2)") // => 4


var teste3 = terminarTurno(minutosRestantes: 5, pedidosRestantes: [["cerveja", "bebida congelada", "dose"], ["bebida chique", "refrigerante"], ["cerveja", "cerveja", "água"], ["coquetel", "bebida congelada"]])
print("Teste 3 -> \(teste3)") // => [["cerveja", "cerveja", "água"], ["coquetel", "bebida congelada"]]

var teste4 = rastrearPedidos(pedidos: [
    (bebida: "cerveja", hora: "10:01"),
    (bebida: "bebida congelada", hora: "10:02"),
    (bebida: "dose", hora: "10:05"),
    (bebida: "bebida chique", hora: "10:06"),
    (bebida: "refrigerante", hora: "10:09"),
    (bebida: "cerveja", hora: "10:15"),
    (bebida: "cerveja", hora: "10:22"),
    (bebida: "água", hora: "10:26"),
    (bebida: "coquetel", hora: "10:28"),
    (bebida: "bebida congelada", hora: "10:33") ] )

print("Teste 4 -> \(teste4)") // => (cerveja: (primeiro "10:01", ultimo "10:22", total 3), refrigerante: (primeiro "10:09", ultimo "10:09", total 1))
