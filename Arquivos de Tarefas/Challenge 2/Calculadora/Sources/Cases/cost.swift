struct robuxCost {
    let desktopAmount:Int?
    let mobileAmount:Int
    let cost:Double

    var description:String {
        if desktopAmount == nil {
            return "\(mobileAmount) Robux (mobile only) || \(cost) ";
        }
        else {
            return "\(mobileAmount) Robux (mobile) / \(desktopAmount!) Robux (desktop) || \(cost)";
        }
    }
}

let costList:[robuxCost] = [
    // 22500-24000 RBX
    robuxCost(desktopAmount: 24000,
    mobileAmount: 22500,
    cost: 199.99),
    // 10000-11000 RBX
    robuxCost(desktopAmount: 11000,
    mobileAmount: 10000,
    cost: 99.99),
    // 4500-5250 RBX
    robuxCost(desktopAmount: 5250,
    mobileAmount: 4500,
    cost: 49.99),
    // 1700-2000 RBX
    robuxCost(desktopAmount: 1700,
    mobileAmount: 2000,
    cost: 19.99),
    // 800-1000 RBX
    robuxCost(desktopAmount: 1000,
    mobileAmount: 800,
    cost: 9.99),
    // 400-500 RBX
    robuxCost(desktopAmount: 500,
    mobileAmount: 400,
    cost: 4.99),
    // 320 RBX
    robuxCost(desktopAmount: nil,
    mobileAmount: 320,
    cost: 3.99),
    // 240 RBX
    robuxCost(desktopAmount: nil,
    mobileAmount: 240,
    cost: 2.99),
    // 160 RBX
    robuxCost(desktopAmount: nil,
    mobileAmount: 160,
    cost: 1.99),
    // 80 RBX
    robuxCost(desktopAmount: nil,
    mobileAmount: 80,
    cost: 0.99),
    // 40 RBX
    robuxCost(desktopAmount: nil,
    mobileAmount: 40,
    cost: 0.49)
]

// funções

/// Calculates how much robux you get from a set amount of money (USD)
///
/// - Parameter money: The input amount of money
/// - Parameter hideDescription: Set to if the function returns the description breakdown of the costs
///
/// - Returns: A tuple of (remainder, mixedTotal, desktopTotal, costBreakdown, costTransactions)
func moneyToRobux(money: Double, hideDescription: Bool) -> (Double, Int, Int, String?, Int) {
    var mixedTotal:Int = 0
    var desktopTotal:Int = 0
    
    var moneyBalance = money
    var localCostList:[robuxCost] = []

    while moneyBalance >= 0.49 {
        for cost in costList {
            if cost.cost <= moneyBalance {
                moneyBalance -= cost.cost

                if cost.desktopAmount != nil { // se tem o valor do desktop, usar o mesmo pois é mais custo benefício
                    desktopTotal += cost.desktopAmount!
                    mixedTotal += cost.desktopAmount!
                }
                else {
                    mixedTotal += cost.mobileAmount // se não tem, não usa
                }

                localCostList.append(cost)

                break // por favor que este break só quebre o loop for e não while
            }
        }
    }
    
    // detalhamento dos custos
    var description:String? = nil
    if !hideDescription {
        description = "Breakdown:\n"
        for cost in localCostList {
            description! += "\(cost.description)\n"
        }

    }

    return (moneyBalance, mixedTotal, desktopTotal, description, localCostList.count)
}

func robuxToMoney(robux: Int, hideDescription: Bool) -> (Int, Double, Double, String?, Int) {
    var mixedTotal:Double = 0
    var desktopTotal:Double = 0

    var robuxBalance = robux
    var localCostList:[robuxCost] = []

    while robuxBalance >= 40 {
        for cost in costList {
            if cost.desktopAmount != nil && cost.desktopAmount! <= robuxBalance {
                mixedTotal += cost.cost
                desktopTotal += cost.cost


            }
        }
    }



    return (0, 2.0, 2.0, "temp")
}
