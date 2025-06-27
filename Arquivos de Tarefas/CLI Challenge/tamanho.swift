func tamanhoFatia(diametro: Double?, fatias: Int?) -> Double? {
    if(diametro == nil || fatias == nil) {
        return nil;
    }

    if(diametro! <= 0 || fatias! < 1) {
        return nil;
    }

    return ( 3.14 * (diametro!/2) ) / Double(fatias!);
}

func maiorFatia(
  diametroA: String, fatiasA: String,
  diametroB: String, fatiasB: String
) -> String {
    // areas
    let fatiaA:Double? = tamanhoFatia(diametro: Double(diametroA), fatias: Int(fatiasA))
    let fatiaB:Double? = tamanhoFatia(diametro: Double(diametroB), fatias: Int(fatiasB))

    // se ambas forem double
    if(fatiaA != nil && fatiaB != nil) {
        if(fatiaA! == fatiaB!) {
            return "Nenhuma fatia é maior";
        }

        if(fatiaA! > fatiaB!) {
            return "Fatia A é maior";
        }
        else {
            return "Fatia B é maior";
        }
    }

    // se ambas forem nil
    if(fatiaA == nil && fatiaB == nil) {
        return "Nenhuma fatia é maior";
    }

    // se uma for nil
    if(fatiaA == nil) {
        return "Fatia B é maior";
    }
    else {
        return "Fatia A é maior";
    }
}
