FROM python:3.9-slim

# ワーキングディレクトリを設定
WORKDIR /app

# todo_appユーザーとグループを作成
RUN groupadd -r todo_app && useradd --no-log-init -r -g todo_app todo_app

# インストール
RUN apt-get update && apt-get install -y vim

# 依存関係のインストール
COPY container_todo/requirements.txt requirements.txt
RUN pip install -r requirements.txt

# アプリケーションのコードをコピー
COPY app/ .

# ユーザーをtodo_appに切り替え
USER todo_app

