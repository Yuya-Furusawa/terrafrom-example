# terrafrom-example

"hacker news clone"をデプロイするためのAWSリソースをTerraformを使って作成する

### 作るリソース
- ネットワーク関連
  - VPC
  - サブネット
  - インターネットゲートウェイ
  - ルートテーブル
- サーバー関連
  - EC2サーバー
  - セキュリティグループ
  - ロードバランサー
- IAM関連
  - IAMユーザ
  - IAMロール
  - IAMポリシー
- ECS関連
  - クラスタ
  - サービス
  - タスク定義