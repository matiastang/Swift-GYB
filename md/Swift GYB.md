# Swift GYB

[Swift GYB](http://www.cocoachina.com/articles/28967)
[Swift GYB](https://nshipster.cn/swift-gyb/)
[Currency.swift.gyb](https://github.com/Flight-School/Money/blob/master/Sources/Money/Currency.swift.gyb)

## 安装GYB

GYB不是标准Xcode工具链的一部分，因此您无法找到它xcrun。相反，您可以使用Homebrew下载它：
```
$ brew install nshipster/formulae/gyb
```
或者，您可以下载源代码并使用chmod命令生成gyb可执行文件（macOS上的默认安装应该能够运行gyb）：
```
$ wget https://github.com/apple/swift/raw/master/utils/gyb
$ wget https://github.com/apple/swift/raw/master/utils/gyb.py
$ chmod +x gyb
```
如果你走这条路线，一定要将它们移动到可以从Xcode项目访问的地方，但要将它们与源文件分开（例如，Vendor项目根目录下的目录）。

## 在Xcode中使用GYB

在 Xcode 中，点击 project navigator 中蓝色的项目文件图标，选择项目中正在使用的 target，并去到「Build Phases」面板。在面板顶部，你可以找到一个可以点击的 + 符号，用来增加新的编译阶段。选择「Add New Run Script Phase」，并将下面的代码输入编辑器：
```
find . -name '*.gyb' |                                               \
    while read file; do                                              \
        ./path/to/gyb --line-directive '' -o "${file%.gyb}" "$file"; \
    done
```
```
find . -name '*.gyb' |                                               \
    while read file; do                                              \
        /usr/local/Cellar/gyb/2019-01-18/bin/gyb --line-directive '' -o "${file%.gyb}" "$file"; \
    done
```
*注意*请确保 GYB 编译阶段放置在「Compile Sources」之前。

现在当你编译你的项目时，任何文件扩展名为 .swift.gyb 的文件会被 GYB 执行并产出 .swift 文件，之后与项目中其他的代码一起编译。