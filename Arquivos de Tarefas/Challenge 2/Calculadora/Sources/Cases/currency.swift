import Foundation
import FoundationNetworking // :3

/// Verifies the validity of a currency code in accordance to the ISO 4217 standard
/// - Parameter currencyCode: The currency code
/// - Returns: true if valid, false if not
func VerifyCodeValidity(currencyCode: String) -> Bool {
    let alphabet = "ABCDEFGHIJKLMONPQRSTUVWXYZ"
    let code = currencyCode.uppercased()

    if code.count > 3 || code.count < 3 {
        return false
    } // todo codigo tem 3 letras

    for char in code {
        if !alphabet.contains(char) {
            return false
        }
    } // verificar se tá tudo em letra comum maiuscula

    return true // se nada deu problema então tá de boa
}

// negocios da troca lá
struct ExchangeRateTable: Codable {
    var date:String
    var usd:[String:Double]
}

func GetExchangeRate(currencyCode: String) -> (Double, Bool) {
    var teste:Data
    GetJsonFromURL { result in
        switch result {
            case .success(let data):
                print("aqui dá erro")
                // teste = data // mutation of captured var 'teste' in concurrently-executing code
            case .failure(let error):
                print("teste erro")
        }
    }
    return (0.0, true)
}

fileprivate func GetJsonFromURL(completion: @escaping @Sendable (Result<Data,Error>) -> Void) {
    let url = URL(string: "https://cdn.jsdelivr.net/npm/@fawazahmed0/currency-api@latest/v1/currencies/usd.json")

    guard url != nil else {
        // jogar um erro aqui, wip (URL)
        return
    }

    let unwrappedUrl = url!

    let task = URLSession(configuration: .default).dataTask(with: unwrappedUrl) { (data, response, error) in
        if let error = error {
            completion(.failure(error))
        }
        if let data = data {
            completion(.success(data))
        }
    }
    task.resume()
}
