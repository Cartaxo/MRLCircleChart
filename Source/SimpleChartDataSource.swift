//
//  SimpleChartDataSource.swift
//  Pods
//
//  Created by Marek Lisik on 27/08/16.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import Foundation

/**
 Convenience implementation of `ChartDataSource` that can be initialized with a `[Number]` and will create segments
 */
open class NumberChartDataSource: ChartDataSource {
  open var segments: [ChartSegment]
  open var maxValue: Double

  /**
   Designated initializer for `NumberChartDataSource`
   
   - parameter items: an array of `Number`-conforming numeric types
   - parameter maxValue: the initial maximum reference value for the chart segments angle calculations
   */
  public init(items: [Double], maxValue: Double) {
    self.segments = items.map {
      return ChartSegment(value: $0, description: "$0")
    }
    self.maxValue = maxValue
  }
}
