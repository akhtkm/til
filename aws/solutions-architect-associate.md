# 弾力性に優れたアーキテクチャの設計

## ストレージ

### EBS

- 汎用SSD
  - バランス型
- プロビジョンド IOPS SSD
  - IOPSが高く，トランザクションワークロード向け，コストも高い
- スループット最適化HDD
  - 大量のログ処理などで使用する
- Cold HDD
  - 大量のデータベースなどのバックアップで使用する

# 疎結合化メカニズム

- Amazon Simple Queue Service
  - Web -> Order -> App のように密結合の場合，Order/AppがダウンしただけでWebも巻き添えになる
  - Web -> (Queue) <- Order -> App のようにQueueを挟むことで，Web と Order/App を疎結合化できる

- Elastc Load Balancing
  - 負荷分散を挟むことで コンポーネント間の接点をまとめ，疎結合化する
  - Auto Scaleも合わせて検討する
