// 

import Foundation


struct WaterManager {
    let targerWaterMl: Int = 2000
    private(set) var currentWaterMl: Int = 0
    
    var targetCompletionRate: Float {
        return Float(currentWaterMl) / Float(targerWaterMl)
    }
    
    mutating func addWater(ml: Int) {
        currentWaterMl += ml
    }
}
