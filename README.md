# 📘 Dockerized LaTeX Environment Template

Docker (Dev Containers) を利用した、レポート・論文執筆のための LaTeX 統合環境テンプレートです。
環境構築の手間をゼロにし、GUI 操作によるフォルダ管理と強力なビルド環境を即座に提供します。

## ✨ 特徴

* **環境構築不要**: Docker があれば、OS を問わず同じ LaTeX 環境が手に入ります。
* **GUI タスク操作**: コマンド操作なしで、ボタン一つで「新規レポート作成」が可能です。
* **クリーンなディレクトリ**: 設定ファイルやスクリプトは `.system` フォルダに集約され、ルートディレクトリは成果物だけに保たれます。
* **日本語対応**: LuaLaTeX + latexmk 構成により、日本語文書を標準でサポートしています。
* **強力な編集機能**: VS Code の拡張機能（自動整形、スペルチェック、プレビュー同期）がプリインストールされています。

## 📦 前提条件

この環境を利用するには、以下のソフトウェアが必要です。

* [Docker Desktop](https://www.docker.com/products/docker-desktop/)
* [Visual Studio Code](https://code.visualstudio.com/)
* VS Code 拡張機能: [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## 🚀 導入手順 (Getting Started)

このリポジトリは **GitHub Template** として設計されています。

1.  GitHub ページ右上の **[Use this template]** ボタンをクリックし、**[Create a new repository]** を選択します。
2.  任意のリポジトリ名（例: `programming-languages4`）を入力してリポジトリを作成します。
3.  作成したリポジトリをローカルにクローンします。
4.  VS Code でフォルダを開きます。
5.  右下の通知、または左下の緑色のマークをクリックし、**[Reopen in Container]** を選択します。
    * *初回起動時は Docker イメージのビルドに数分かかります。*

## 📝 使い方

### 1. 新規レポートの作成
新しい課題やチャプターに取り掛かる際は、専用のコマンドでフォルダを作成します。
#### GUI操作の場合
1.  VS Code 一番下に目を凝らします
2.  **「📄 新規レポート作成」** ボタンをクリックします。
3.  画面上部に入力ボックスが表示されるので、**フォルダ名**（例: `assignment01`）を入力して Enter を押します。
4.  テンプレートが含まれた新しいフォルダが自動生成されます。
#### コマンド打つ場合
1. ターミナル開く
2. 
    ```bash
    gen 作りたいディレクトリ名
    ```
3. できる

### 2. 執筆とビルド
作成されたフォルダ内の `main.tex` を編集します。

* **ビルド**: ファイルを保存 (`Ctrl + S` / `Cmd + S`) すると、自動的にビルドが実行されます。
* **プレビュー**: 右上のタブメニューから「View PDF」アイコンをクリックすると、右側に PDF プレビューが表示されます。
* **出力**: 生成された PDF ファイルは、各プロジェクトフォルダ内の `out/` ディレクトリに出力されます。

## 📝 テンプレートの編集
テンプレート (`.system/templates/main.tex`) を編集すると毎回自分の名前とか打たなくて楽です。
ここを一度設定しておけば、**すべての新規レポートに自動で反映**されます。

* **毎回書く必要がなくなります**:
    * 自分の名前 (`\author{...}`)
    * 学籍番号
    * よく使うパッケージ（数式、画像、ソースコード表示など）
    * レポートの表紙デザイン
* **編集するファイル**: `.system/templates/main.tex`

## 📂 ディレクトリ構成

成果物を見やすくするため、設定ファイルやシステムファイルは隠蔽または別フォルダに隔離されています。

```text
.
├── .devcontainer/      # コンテナ定義 (Dockerfile, devcontainer.json)
├── .vscode/            # エディタ設定 (tasks.json 等)
├── .system/            # システム設定 (スクリプト、テンプレート、latexmkrc)
├── sample/             # サンプル
├──.gitignore           
└── README.md