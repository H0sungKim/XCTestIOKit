# XCTestIOKit
A lightweight XCTest extension to easily mock standard input and assert standard output in Swift.

## Usage

```swift
func testGreeting() {
    assertIO(input: "Swift", expected: "Hello, Swift!") {
        let name = readLine() ?? ""
        print("Hello, \(name)!")
    }
}
```

![](/Docs/example.png)

## Setup Guideline (Korean)

XCTestIOKit을 사용한 코딩 테스트 프로젝트 세팅 한국어 가이드라인은 아래 링크를 참고해 주십시오.

https://velog.io/@hosungkim/XCTestIOKit