import AudioKit

public let throttleUgen =
AKCustomUgen(name: "throttle", argTypes: "ff") { ugen, stack, userData in
    let maxChangePerSecond = stack.popFloat()
    let maxChange = maxChangePerSecond / Float(AKSettings.sampleRate)

    let destValue = stack.popFloat()
    var nextValue = destValue

    if let prevValue = userData.flatMap({ $0 as? Float }) {
        let change = destValue - prevValue
        if abs(change) > maxChange {
          nextValue = prevValue + (change > 0 ? maxChange : -maxChange)
        }
    }
    userData = nextValue
    stack.push(nextValue)
}
