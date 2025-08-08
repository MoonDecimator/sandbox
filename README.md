# sandbox

This repository contains a PowerShell script for creating sandbox files.

## 使い方

このリポジトリには、サンドボックスファイルを作成するためのPowerShellスクリプトが含まれています。

### 実行方法

1.  **PowerShellを開く**
    - WindowsでPowerShellを開きます。
2.  **スクリプトの実行**
    - `create_sandbox_file.ps1` があるディレクトリに移動し、以下のコマンドを実行します。
    ```powershell
    .\create_sandbox_file.ps1
    ```
    - **注意:** PowerShellの実行ポリシーによっては、スクリプトの実行がブロックされる場合があります。その場合は、まず以下のコマンドを実行して実行ポリシーを変更する必要があります。
    ```powershell
    Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
    ```

### スクリプトの動作

- このスクリプトは、`sandboxYYYYMMDD.md`という名前のファイルを作成します（`YYYYMMDD`は現在の日付です）。
- 同じ名前のファイルが既に存在する場合、スクリプトは `sandboxYYYYMMDD-1.md`、`sandboxYYYYMMDD-2.md` のように、末尾に連番を付けて新しいファイルを作成しようとします。
- 連番は「-9」まで対応しており、それ以上のファイルは作成されません。
- ファイルが作成されると、スクリプトは終了する前にユーザーに入力を求めます。
