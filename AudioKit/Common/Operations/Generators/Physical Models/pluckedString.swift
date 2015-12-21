//
//  pluckedString.swift
//  AudioKit For iOS
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright © 2015 AudioKit. All rights reserved.
//

import Foundation

extension AKOperation {

    /** pluckedString: Physical model of a plucked string - Based on Karplus-Strong algorithm
     - returns: AKOperation
     - Parameter frequency: Variable frequency. Values less than the lowest frequency will be doubled until it is greater than or equal to lowestFrequency. (Default: 110, Minimum: 0, Maximum: 22050)
     - Parameter position: Point of pluck. Expects value in the rnage of 0-1. A value of 0 is no initial pluck.  (Default: 0.2, Minimum: 0, Maximum: 1)
     - Parameter pickupPosition: Proportion along the string to sample the input. Expects a value in the range of 0-1. (Default: 0.2, Minimum: 0, Maximum: 1)
     - Parameter reflectionCoefficent: Coeffecient of reflection, indicating lossiness and rate of decay. Must be between 0 and 1, but not 0 and 1 themselves. (Default: 05, Minimum: 0, Maximum: 1)
     - Parameter amplitude: Amplitude (Default: 1, Minimum: 0, Maximum: 1)
     - Parameter lowestFrequency: Sets the initial frequency. This frequency is used to allocate all the buffers needed for the delay. This should be the lowest frequency you plan on using. (Default: 110)
     */
    public static func pluckedString(
        frequency frequency: AKParameter = 110,
        position: AKParameter = 0.75,
        pickupPosition: AKParameter = 0.75,
        reflectionCoefficent: AKParameter = 0.05,
        amplitude: AKParameter = 1,
        lowestFrequency: Double = 110
        ) -> AKOperation {
            return AKOperation("\(position) \(frequency) \(amplitude) \(pickupPosition) \(reflectionCoefficent) \(lowestFrequency) pluck ")
    }
}

/** pluckedString: Physical model of a plucked string - Based on Karplus-Strong algorithm
- returns: AKOperation
- Parameter frequency: Variable frequency. Values less than the lowest frequency will be doubled until it is greater than or equal to lowestFrequency. (Default: 110, Minimum: 0, Maximum: 22050)
- Parameter position: Point of pluck. Expects value in the rnage of 0-1. A value of 0 is no initial pluck.  (Default: 0.2, Minimum: 0, Maximum: 1)
- Parameter pickupPosition: Proportion along the string to sample the input. Expects a value in the range of 0-1. (Default: 0.2, Minimum: 0, Maximum: 1)
- Parameter reflectionCoefficent: Coeffecient of reflection, indicating lossiness and rate of decay. Must be between 0 and 1, but not 0 and 1 themselves. (Default: 05, Minimum: 0, Maximum: 1)
- Parameter amplitude: Amplitude (Default: 1, Minimum: 0, Maximum: 1)
- Parameter lowestFrequency: Sets the initial frequency. This frequency is used to allocate all the buffers needed for the delay. This should be the lowest frequency you plan on using. (Default: 110)
*/
public func pluckedString(
    frequency frequency: AKParameter = 110,
    position: AKParameter = 0.2,
    pickupPosition: AKParameter = 0.2,
    reflectionCoefficent: AKParameter = 0.05,
    amplitude: AKParameter = 1,
    lowestFrequency: Double = 110
    ) -> AKOperation {
        return AKOperation.pluckedString(frequency: frequency, position: position, pickupPosition: pickupPosition, reflectionCoefficent: reflectionCoefficent, amplitude: amplitude, lowestFrequency: lowestFrequency)
}