//
//  dcBlock.swift
//  AudioKit For iOS
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright © 2015 AudioKit. All rights reserved.
//

import Foundation

extension AKOperation {

    /** dcBlock: A DC blocking filter. - Implements the DC blocking filter Y[i] = X[i] - X[i-1] + (igain * Y[i-1])  Based
 on work by Perry Cook.

     - returns: AKOperation
     */
    public mutating func dcBlock() {
        self = self.dcBlocked()
    }

    /** dcBlocked: A DC blocking filter. - Implements the DC blocking filter Y[i] = X[i] - X[i-1] + (igain * Y[i-1])  Based
     on work by Perry Cook.

     - returns: AKOperation
     */
    public func dcBlocked() -> AKOperation {
        return AKOperation("\(self) dcblk ")
    }
}
