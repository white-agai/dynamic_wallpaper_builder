# Dynamic Wallpaper Builder

09:00と18:00に画像が切り替わるダイナミックデスクトップファイルを作成するやつ

## 概要

09:00と18:00に画像が切り替わるダイナミックデスクトップファイルを作成するスクリプトです。
引数に入力されたパスに存在するPNG画像2つを使用してファイルを作成します。

### ダイナミックデスクトップとは？

[ここ](https://support.apple.com/ja-jp/HT207703)参照。

## 要件

下記の条件を満たしている必要があります。

- 環境がmacOS Mojaveである
- [Homebrew](https://brew.sh/index_ja)がインストール済み
    - ターミナルで下記コマンドを実行する
        ```
        $ xcode-select --install 
        $ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        ```
- [ダイナミックデスクトップファイルの生成ツール](https://github.com/mczachurski/wallpapper)がインストール済み
    - ターミナルで下記コマンドを実行する
        ```
        $ sudo xcode-select -s /Applications/Xcode.app/Contents/Developer
        $ brew tap mczachurski/wallpapper
        $ brew install wallpapper
        ```

## 使い方

1. このリポジトリを`git clone`する

    ```
    $ git clone https://github.com/white-agai/dynamic_wallpaper_builder
    ```

2. ビルドスクリプトを実行する

    ```
    $ cd dynamic_wallpaper_builder
    $ ./build.sh (09:00-18:00の間に表示したいPNG画像のパス) (それ以外の時間に表示したいPNG画像のパス)
    ```

3. 生成されたダイナミックデスクトップファイルを`~/Pictures`にコピーする

    ```
    $ cp dynamic.heic ~/Pictures/
    ```

4. [システム環境設定]->[デスクトップとスクリーンセーバ]から壁紙を変更する

    [このあたり](https://support.apple.com/ja-jp/HT207703)参照。
