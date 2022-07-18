//
//  CustomKeyboardTests.swift
//  CustomKeyboardTests
//
//  Created by 이경민 on 2022/07/15.
//

import XCTest
@testable import CustomKeyboard

class CustomKeyboardTests: XCTestCase {
    var viewModel: KeyboardViewModel!
    typealias Buffer = (chosung: Chosung?, jungsung: Jungsung?, jongsung: Jongsung?)
    
    override func setUpWithError() throws {
        viewModel = KeyboardViewModel()
    }
    
    override func tearDownWithError() throws {
        viewModel = nil
    }
    
    //    func test_동() {
    //        let expected = """
    //청춘의없는바이며이상은위하여끓는구하기시들어있다그들의끓는인생을주는눈에고행을것이다부패를있는열매를그것은가는교향악이다그들은사라지지가치를그와있는자신과소리다이것은봄바람이다청춘에서만얼마나밝은방황하였으며말이다
    //"""
    //        let buffers: [Buffer] = [
    //            (.ㅊ, nil, .ㅊ),
    //            (nil, .ㅓ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (.ㅊ, nil, .ㅊ),
    //            (nil, .ㅜ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅡ, nil),
    //            (nil, .ㅣ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅓ, nil),
    //            (.ㅂ, nil, .ㅂ),
    //            (.ㅅ, nil, .ㅅ),
    //            (.ㄴ, nil, .ㄴ),
    //            (nil, .ㅡ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㅂ, nil, .ㅂ),
    //            (nil, .ㅏ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅣ, nil),
    //            (.ㅁ, nil, .ㅁ),
    //            (nil, .ㅕ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅣ, nil),
    //            (.ㅅ, nil, .ㅅ),
    //            (nil, .ㅏ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅡ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅜ, nil),
    //            (nil, .ㅣ, nil),
    //            (.ㅎ, nil, .ㅎ),
    //            (nil, .ㅏ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅕ, nil),
    //            (.ㄲ, nil, .ㄲ),
    //            (nil, .ㅡ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (.ㅎ, nil, .ㅎ),
    //            (.ㄴ, nil, .ㄴ),
    //            (nil, .ㅡ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㄱ, nil, .ㄱ),
    //            (nil, .ㅜ, nil),
    //            (.ㅎ, nil, .ㅎ),
    //            (nil, .ㅏ, nil),
    //            (.ㄱ, nil, .ㄱ),
    //            (nil, .ㅣ, nil),
    //            (.ㅅ, nil, .ㅅ),
    //            (nil, .ㅣ, nil),
    //            (.ㄷ, nil, .ㄷ),
    //            (nil, .ㅡ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅓ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅣ, nil),
    //            (.ㅆ, nil, .ㅆ),
    //            (.ㄷ, nil, .ㄷ),
    //            (nil, .ㅏ, nil),
    //            (.ㄱ, nil, .ㄱ),
    //            (nil, .ㅡ, nil),
    //            (.ㄷ, nil, .ㄷ),
    //            (nil, .ㅡ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅡ, nil),
    //            (nil, .ㅣ, nil),
    //            (.ㄲ, nil, .ㄲ),
    //            (nil, .ㅡ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (.ㅎ, nil, .ㅎ),
    //            (.ㄴ, nil, .ㄴ),
    //            (nil, .ㅡ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅣ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㅅ, nil, .ㅅ),
    //            (nil, .ㅐ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅡ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (.ㅈ, nil, .ㅈ),
    //            (nil, .ㅜ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (nil, .ㅡ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㄴ, nil, .ㄴ),
    //            (nil, .ㅜ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅔ, nil),
    //            (.ㄱ, nil, .ㄱ),
    //            (nil, .ㅗ, nil),
    //            (.ㅎ, nil, .ㅎ),
    //            (nil, .ㅐ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅡ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (.ㄱ, nil, .ㄱ),
    //            (nil, .ㅓ, nil),
    //            (.ㅅ, nil, .ㅅ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅣ, nil),
    //            (.ㄷ, nil, .ㄷ),
    //            (nil, .ㅏ, nil),
    //            (.ㅂ, nil, .ㅂ),
    //            (nil, .ㅜ, nil),
    //            (.ㅍ, nil, .ㅍ),
    //            (nil, .ㅐ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (nil, .ㅡ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅣ, nil),
    //            (.ㅆ, nil, .ㅆ),
    //            (.ㄴ, nil, .ㄴ),
    //            (nil, .ㅡ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅕ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (.ㅁ, nil, .ㅁ),
    //            (nil, .ㅐ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (nil, .ㅡ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (.ㄱ, nil, .ㄱ),
    //            (nil, .ㅡ, nil),
    //            (.ㄱ, nil, .ㄱ),
    //            (nil, .ㅓ, nil),
    //            (.ㅅ, nil, .ㅅ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅡ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㄱ, nil, .ㄱ),
    //            (nil, .ㅏ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (nil, .ㅡ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㄱ, nil, .ㄱ),
    //            (nil, .ㅛ, nil),
    //            (.ㅎ, nil, .ㅎ),
    //            (nil, .ㅑ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅏ, nil),
    //            (.ㄱ, nil, .ㄱ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅣ, nil),
    //            (.ㄷ, nil, .ㄷ),
    //            (nil, .ㅏ, nil),
    //            (.ㄱ, nil, .ㄱ),
    //            (nil, .ㅡ, nil),
    //            (.ㄷ, nil, .ㄷ),
    //            (nil, .ㅡ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅡ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㅅ, nil, .ㅅ),
    //            (nil, .ㅏ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (nil, .ㅏ, nil),
    //            (.ㅈ, nil, .ㅈ),
    //            (nil, .ㅣ, nil),
    //            (.ㅈ, nil, .ㅈ),
    //            (nil, .ㅣ, nil),
    //            (.ㄱ, nil, .ㄱ),
    //            (nil, .ㅏ, nil),
    //            (.ㅊ, nil, .ㅊ),
    //            (nil, .ㅣ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (nil, .ㅡ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (.ㄱ, nil, .ㄱ),
    //            (nil, .ㅡ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅗ, nil),
    //            (nil, .ㅏ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅣ, nil),
    //            (.ㅆ, nil, .ㅆ),
    //            (.ㄴ, nil, .ㄴ),
    //            (nil, .ㅡ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㅈ, nil, .ㅈ),
    //            (nil, .ㅏ, nil),
    //            (.ㅅ, nil, .ㅅ),
    //            (nil, .ㅣ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㄱ, nil, .ㄱ),
    //            (nil, .ㅗ, nil),
    //            (nil, .ㅏ, nil),
    //            (.ㅅ, nil, .ㅅ),
    //            (nil, .ㅗ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (nil, .ㅣ, nil),
    //            (.ㄷ, nil, .ㄷ),
    //            (nil, .ㅏ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅣ, nil),
    //            (.ㄱ, nil, .ㄱ),
    //            (nil, .ㅓ, nil),
    //            (.ㅅ, nil, .ㅅ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅡ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㅂ, nil, .ㅂ),
    //            (nil, .ㅗ, nil),
    //            (.ㅁ, nil, .ㅁ),
    //            (.ㅂ, nil, .ㅂ),
    //            (nil, .ㅏ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (nil, .ㅏ, nil),
    //            (.ㅁ, nil, .ㅁ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅣ, nil),
    //            (.ㄷ, nil, .ㄷ),
    //            (nil, .ㅏ, nil),
    //            (.ㅊ, nil, .ㅊ),
    //            (nil, .ㅓ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (.ㅊ, nil, .ㅊ),
    //            (nil, .ㅜ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅔ, nil),
    //            (.ㅅ, nil, .ㅅ),
    //            (nil, .ㅓ, nil),
    //            (.ㅁ, nil, .ㅁ),
    //            (nil, .ㅏ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅓ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (.ㅁ, nil, .ㅁ),
    //            (nil, .ㅏ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (nil, .ㅏ, nil),
    //            (.ㅂ, nil, .ㅂ),
    //            (nil, .ㅏ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (.ㄱ, nil, .ㄱ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅡ, nil),
    //            (.ㄴ, nil, .ㄴ),
    //            (.ㅂ, nil, .ㅂ),
    //            (nil, .ㅏ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (.ㅎ, nil, .ㅎ),
    //            (nil, .ㅗ, nil),
    //            (nil, .ㅏ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (.ㅎ, nil, .ㅎ),
    //            (nil, .ㅏ, nil),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅕ, nil),
    //            (.ㅆ, nil, .ㅆ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅡ, nil),
    //            (.ㅁ, nil, .ㅁ),
    //            (nil, .ㅕ, nil),
    //            (.ㅁ, nil, .ㅁ),
    //            (nil, .ㅏ, nil),
    //            (.ㄹ, nil, .ㄹ),
    //            (.ㅇ, nil, .ㅇ),
    //            (nil, .ㅣ, nil),
    //            (.ㄷ, nil, .ㄷ),
    //            (nil, .ㅏ, nil),
    //        ]
    //
    //        buffers.forEach { buffer in
    //            viewModel.didTapKeyboardButton(buffer: buffer)
    //        }
    //
    //        XCTAssertEqual(expected, viewModel.result.value)
    //    }
    
    func test_동이아닐경우() {
        let expected = "빢께삐온따"
        let buffers: [Buffer] = [
            (.ㅃ, nil, .ㅂ),
            (nil, .ㅏ, nil),
            (.ㄲ, nil, .ㄲ),
            (.ㄲ, nil, .ㄲ),
            (nil, .ㅔ, nil),
            (.ㅃ, nil, .ㅂ),
            (nil, .ㅣ, nil),
            (.ㅇ, nil, .ㅇ),
            (nil, .ㅗ, nil),
            (.ㄴ, nil, .ㄴ),
            (.ㄸ, nil, .ㄷ),
            (nil, .ㅏ, nil),
        ]
        buffers.forEach { buffer in
            viewModel.didTapKeyboardButton(buffer: buffer)
        }
        
        XCTAssertEqual(expected, viewModel.result.value)
    }
    
    func test_지웠다쓰는경우() {
        make()
        viewModel.isRemovePhoneme = true
        let expected = "없어없다없을"
//        viewModel.result.value = expected
        (0..<3).forEach { _ in
            viewModel.didTapBack()
        }
        [(.ㅇ, nil, .ㅇ),(nil, .ㅡ, nil),(.ㄹ, nil, .ㄹ)].forEach { buffer in
            viewModel.didTapKeyboardButton(buffer: buffer)
        }
        
        XCTAssertEqual(expected, viewModel.result.value)
    }
    
    func test_지우는경우() {
        make()
        viewModel.isRemovePhoneme = true
        let expected = "없어없다없"
//        viewModel.result.value = expected
        (0..<3).forEach { _ in
            viewModel.didTapBack()
        }
        
        XCTAssertEqual(expected, viewModel.result.value)
    }
    
    //viewModel에 기본 데이터를 만드는 함수
    func make() {
        let buffers: [Buffer] = [
            (.ㅇ, nil, .ㅇ),
            (nil, .ㅓ, nil),
            (.ㅂ, nil, .ㅂ),
            (.ㅅ, nil, .ㅅ),
            (.ㅇ, nil, .ㅇ),
            (nil, .ㅓ, nil),
            (.ㅇ, nil, .ㅇ),
            (nil, .ㅓ, nil),
            (.ㅂ, nil, .ㅂ),
            (.ㅅ, nil, .ㅅ),
            (.ㄷ, nil, .ㄷ),
            (nil, .ㅏ, nil),
            (.ㅇ, nil, .ㅇ),
            (nil, .ㅓ, nil),
            (.ㅂ, nil, .ㅂ),
            (.ㅅ, nil, .ㅅ),
            (.ㅇ, nil, .ㅇ),
            (nil, .ㅡ, nil),
            (.ㄹ, nil, .ㄹ)
        ]
        buffers.forEach { buffer in
            viewModel.didTapKeyboardButton(buffer: buffer)
        }
        
        print(viewModel.result.value)
    }
}
