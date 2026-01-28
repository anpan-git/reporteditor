#!/bin/bash

# 使い方: ./new_report.sh [フォルダ名]
# VSCodeのタスクからも呼び出されます。

FOLDER_NAME=$1

# 未入力チェック
if [ -z "$FOLDER_NAME" ]; then
    echo "エラー: フォルダ名が入力されていません。"
    exit 1
fi

# フォルダが存在するかチェック
if [ -d "$FOLDER_NAME" ]; then
    echo "エラー: フォルダ '$FOLDER_NAME' は既に存在します。"
    exit 1
fi

# フォルダ作成
mkdir -p "$FOLDER_NAME"

# テンプレートファイルをコピー
if [ -f ".system/.templates/main.tex" ]; then
    cp ".system/.templates/main.tex" "$FOLDER_NAME/main.tex"
    echo "成功: フォルダ '$FOLDER_NAME' を作成し、テンプレートを配置しました。"
    
    # 作成したファイルを自動で開くためのヒント（VSCodeターミナルでのみ有効）
    echo "エディタで開くにはここをクリック: $FOLDER_NAME/main.tex"
else
    touch "$FOLDER_NAME/main.tex"
    echo "警告: テンプレートが見つからないため、空の 'main.tex' を作成しました。"
fi