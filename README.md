# FastAPI Project

This is a template for a FastAPI project with MySQL database setup, sample API endpoints, and basic service implementation.

## Project Structure

- `app`: Main directory containing the FastAPI application code.
  - `api`: Directory for API routers.
    - `router.py`: Main router to include all API routers.
    - `sample.py`: Sample API endpoints.
  - `info`: Directory for application configuration.
    - `appconfig.py`: Application configuration file (empty by default).
  - `models`: Directory for database models and database setup.
    - `database.py`: Database setup and connection code.
  - `services`: Directory for service implementations.
    - `sample_service.py`: Basic service implementation for sample API endpoints.
  - `utils`: Directory for utility modules (empty by default).
  - `main.py`: Main FastAPI application file.
- `tests`: Directory containing test cases.
  - `test_main.py`: Test cases for the main FastAPI application.
- `docs`: Directory for project documentation (empty by default).
- `.env`: Environment variables configuration file.
- `README.md`: Project README file.
- `requirements.txt`: File containing project dependencies.

## Usage

### Setup

1. Create a virtual environment:

```bash
python3 -m venv fastapi-env
source fastapi-env/bin/activate
```

Step1 : Provide the script with suitable permission

``` chmod +x /in/the/path/of/schema.sh  ```

Step 2 : RUN the sh file 

``` ./schema.sh```

The script will automatically create the necessary folders and files, establishing the boilerplate for your FastAPI project.

## Getting Started
After running the shell script and setting up the folder structure, you can start developing your FastAPI project right away. Refer to the generated main.py file and the provided examples in each folder to understand how to structure your code and create API endpoints efficiently.

Feel free to contribute to this project by opening issues or pull requests.


# FastAPI プロジェクト

これは、MySQLデータベースのセットアップ、サンプルAPIエンドポイント、基本的なサービスの実装を含むFastAPIプロジェクトのテンプレートです。

## プロジェクトの構造

- app`： FastAPI アプリケーションコードを含むメインディレクトリ。
  - api`： API ルータのディレクトリ。
    - `router.py`： 全ての API ルータを含むメインルータ。
    - `sample.py`： サンプル API エンドポイント。
  - info`： アプリケーションの設定を行うディレクトリ。
    - `appconfig.py`: アプリケーションの設定ファイル： アプリケーションの設定ファイル (デフォルトは空)
  - models`： データベースモデルとデータベースのセットアップを行うディレクトリ。
    - `database.py`： データベースのセットアップと接続コード。
  - services`： サービス実装用のディレクトリ。
    - sample_service.py`： サンプル API エンドポイントの基本的なサービス実装。
  - utils`： ユーティリティモジュールのディレクトリ (デフォルトは空)。
  - `main.py`： メインの FastAPI アプリケーションファイル。
- `tests`: テストケース： テストケースを含むディレクトリ。
  - `test_main.py`： メインの FastAPI アプリケーションのテストケース。
- docs`： プロジェクトのドキュメントを格納するディレクトリ (デフォルトは空)。
- `.env`: 環境変数の設定ファイル： 環境変数の設定ファイル。
- `README.md`: プロジェクト README ファイル： プロジェクトの README ファイル。
- `requirements.txt`： プロジェクトの依存関係を含むファイル。

## 使用方法

### セットアップ

1. 仮想環境を作成する：

bash
python3 -m venv fastapi-env
ソース fastapi-env/bin/activate
```

Step1 : スクリプトに適切なパーミッションを与える。

chmod +x /in/the/path/of/schema.shを実行する。

ステップ2 : shファイルを実行する 

``` ./schema.sh``

スクリプトは自動的に必要なフォルダーとファイルを作成し、FastAPI プロジェクトのボイラープレートを確立します。

## スタート
シェルスクリプトを実行し、フォルダ構造を設定したら、すぐに FastAPI プロジェクトの開発を開始できます。生成された main.py ファイルと各フォルダ内の提供された例を参照して、コードを構造化し、API エンドポイントを効率的に作成する方法を理解してください。

issueやpull requestを開くことで、このプロジェクトに自由に貢献できます。

DeepL.com（無料版）で翻訳しました。
