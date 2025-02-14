//
// MockBaragaDelegate.swift
//
// Copyright (c) 2020 Soojin Ro (https://github.com/nsoojin)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

import Foundation
@testable import Baraba

class MockBarabaDelegate: BarabaDelegate {
    var numberOfScrollStarts: Int = 0
    var numberOfScrollStops: Int = 0
    var error: Error?
    
    func barabaDidStartScrolling(_ baraba: Baraba) {
        numberOfScrollStarts += 1
    }
    
    func barabaDidStopScrolling(_ baraba: Baraba) {
        numberOfScrollStops += 1
    }
    
    func baraba(_ baraba: Baraba, didFailWithError error: Error) {
        self.error = error
    }
}

class EmptyBarabaDelegate: BarabaDelegate {
    
}
