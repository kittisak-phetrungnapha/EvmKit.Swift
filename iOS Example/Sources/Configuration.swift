import EvmKit
import Foundation
import HsToolKit

class Configuration {
    static let shared = Configuration()

    let minLogLevel: Logger.Level = .error

    let chain: Chain = .soneium
    let rpcSource: RpcSource = .http(urls: [URL(string: "https://rpc.soneium.org")!], auth: nil)
    let transactionSource: TransactionSource = TransactionSource(
        name: "soneium.blockscout.com",
        type: .etherscan(apiBaseUrl: "https://api.soneium.blockscout.com", txBaseUrl: "https://soneium.blockscout.com", apiKeys: ["apiKey"])
    )

    let defaultsWords = "apart approve black  comfort steel spin real renew tone primary key cherry"
    let defaultsWatchAddress = "0xd1D441c2bB9341aFB370d5A0C4C66589a16c4d3F"
}
