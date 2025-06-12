FROM python:3.10-slim

# ワーキングディレクトリを作成
WORKDIR /app

# requirements.txt を先にコピーしてキャッシュ効率アップ
COPY requirements.txt /app/requirements.txt

# 依存パッケージをインストール
RUN pip install --no-cache-dir -r /app/requirements.txt

# 残りのアプリケーションコードをコピー
COPY . /app

# デフォルトコマンドはbash起動
CMD ["bash"]
