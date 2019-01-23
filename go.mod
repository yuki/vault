module github.com/hashicorp/vault

go 1.12

require (
	cloud.google.com/go v0.35.1
	dmitri.shuralyov.com/app/changes v0.0.0-20181114035150-5af16e21babb // indirect
	dmitri.shuralyov.com/service/change v0.0.0-20190119025054-42f2f11cf6af // indirect
	git.apache.org/thrift.git v0.12.0 // indirect
	github.com/Azure/azure-sdk-for-go v21.2.0+incompatible
	github.com/Azure/go-ansiterm v0.0.0-20170929234023-d6e3b3328b78
	github.com/Azure/go-autorest v11.1.1+incompatible
	github.com/DataDog/datadog-go v0.0.0-20180822151419-281ae9f2d895
	github.com/Jeffail/gabs v1.1.1
	github.com/Microsoft/go-winio v0.4.11
	github.com/NYTimes/gziphandler v1.0.1
	github.com/Nvveen/Gotty v0.0.0-20120604004816-cd527374f1e5
	github.com/SAP/go-hdb v0.13.1
	github.com/SermoDigital/jose v0.9.1
	github.com/Shopify/sarama v1.20.1 // indirect
	github.com/aliyun/alibaba-cloud-sdk-go v0.0.0-20181012121943-c5825d35a94a
	github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da
	github.com/armon/go-proxyproto v0.0.0-20180202201750-5b7edb60ff5f
	github.com/armon/go-radix v1.0.0
	github.com/asaskevich/govalidator v0.0.0-20180720115003-f9ffefc3facf
	github.com/aws/aws-sdk-go v1.15.59
	github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973
	github.com/bgentry/speakeasy v0.1.0
	github.com/boombuler/barcode v0.0.0-20180809052337-34fff276c74e
	github.com/briankassouf/jose v0.0.0-20180619214549-d2569464773f
	github.com/cenkalti/backoff v2.1.0+incompatible
	github.com/centrify/cloud-golang-sdk v0.0.0-20180119173102-7c97cc6fde16
	github.com/chrismalek/oktasdk-go v0.0.0-20180910152513-c38de6febf6b
	github.com/circonus-labs/circonus-gometrics v2.2.4+incompatible
	github.com/circonus-labs/circonusllhist v0.1.1
	github.com/cockroachdb/cockroach-go v0.0.0-20181001143604-e0a95dfd547c
	github.com/containerd/continuity v0.0.0-20181027224239-bea7585dbfac
	github.com/coreos/etcd v3.3.11+incompatible // indirect
	github.com/coreos/go-oidc v2.0.0+incompatible
	github.com/coreos/go-semver v0.2.0
	github.com/coreos/go-systemd v0.0.0-20181031085051-9002847aa142
	github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f
	github.com/denisenkom/go-mssqldb v0.0.0-20181014144952-4e0d7dc8888f
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/dimchansky/utfbom v1.0.0
	github.com/docker/go-connections v0.4.0
	github.com/docker/go-units v0.3.3
	github.com/duosecurity/duo_api_golang v0.0.0-20181024123116-92fea9203dbc
	github.com/elazarl/go-bindata-assetfs v1.0.0
	github.com/fatih/color v1.7.0
	github.com/fatih/structs v1.1.0
	github.com/fullsailor/pkcs7 v0.0.0-20180613152042-8306686428a5
	github.com/gammazero/deque v0.0.0-20180920172122-f6adf94963e4
	github.com/gammazero/workerpool v0.0.0-20180920155329-48371c973101
	github.com/ghodss/yaml v1.0.0
	github.com/go-errors/errors v0.0.0-20180813162953-d98b870cc4e0
	github.com/go-ini/ini v1.39.0
	github.com/go-ldap/ldap v2.5.1+incompatible
	github.com/go-logfmt/logfmt v0.4.0 // indirect
	github.com/go-sql-driver/mysql v1.4.0
	github.com/go-test/deep v1.0.1
	github.com/gocql/gocql v0.0.0-20181117210152-33c0e89ca93a
	github.com/gogo/protobuf v1.2.0
	github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b
	github.com/golang/groupcache v0.0.0-20181024230925-c65c006176ff // indirect
	github.com/golang/lint v0.0.0-20181217174547-8f45f776aaf1 // indirect
	github.com/golang/protobuf v1.2.0
	github.com/golang/snappy v0.0.0-20180518054509-2e65f85255db
	github.com/google/go-github/v21 v21.0.0
	github.com/google/go-querystring v1.0.0
	github.com/google/gofuzz v0.0.0-20170612174753-24818f796faf
	github.com/google/pprof v0.0.0-20190109223431-e84dfd68c163 // indirect
	github.com/google/uuid v1.1.0
	github.com/googleapis/gax-go v2.0.2+incompatible
	github.com/gopherjs/gopherjs v0.0.0-20181103185306-d547d1d9531e // indirect
	github.com/gorhill/cronexpr v0.0.0-20180427100037-88b0669f7d75
	github.com/gorilla/websocket v1.4.0 // indirect
	github.com/gregjones/httpcache v0.0.0-20181110185634-c63ab54fda8f // indirect
	github.com/grpc-ecosystem/go-grpc-middleware v1.0.0
	github.com/grpc-ecosystem/grpc-gateway v1.7.0 // indirect
	github.com/hailocab/go-hostpool v0.0.0-20160125115350-e80d13ce29ed
	github.com/hashicorp/consul v1.4.0
	github.com/hashicorp/errwrap v1.0.0
	github.com/hashicorp/go-cleanhttp v0.5.0
	github.com/hashicorp/go-gcp-common v0.0.0-20180425173946-763e39302965
	github.com/hashicorp/go-hclog v0.0.0-20181001195459-61d530d6c27f
	github.com/hashicorp/go-immutable-radix v1.0.0
	github.com/hashicorp/go-memdb v0.0.0-20181108192425-032f93b25bec
	github.com/hashicorp/go-msgpack v0.0.0-20150518234257-fa3f63826f7c
	github.com/hashicorp/go-multierror v1.0.0
	github.com/hashicorp/go-plugin v0.0.0-20181030172320-54b6ff97d818
	github.com/hashicorp/go-retryablehttp v0.5.0
	github.com/hashicorp/go-rootcerts v1.0.0
	github.com/hashicorp/go-sockaddr v0.0.0-20180320115054-6d291a969b86
	github.com/hashicorp/go-syslog v0.0.0-20170829120034-326bf4a7f709
	github.com/hashicorp/go-uuid v1.0.0
	github.com/hashicorp/go-version v1.0.0
	github.com/hashicorp/golang-lru v0.5.0
	github.com/hashicorp/hcl v1.0.0
	github.com/hashicorp/memberlist v0.1.0
	github.com/hashicorp/nomad v0.0.0-20181015203749-7b1753bd9a48
	github.com/hashicorp/raft v1.0.0
	github.com/hashicorp/serf v0.8.1
	github.com/hashicorp/vault-plugin-auth-alicloud v0.0.0-20181109180636-f278a59ca3e8
	github.com/hashicorp/vault-plugin-auth-azure v0.0.0-20181207232528-4c0b46069a22
	github.com/hashicorp/vault-plugin-auth-centrify v0.0.0-20180816201131-66b0a34a58bf
	github.com/hashicorp/vault-plugin-auth-gcp v0.0.0-20181210200133-4d63bbfe6fcf
	github.com/hashicorp/vault-plugin-auth-jwt v0.0.0-20181031195942-f428c7791733
	github.com/hashicorp/vault-plugin-auth-kubernetes v0.0.0-20181130162533-091d9e5d5fab
	github.com/hashicorp/vault-plugin-secrets-ad v0.0.0-20181109182834-540c0b6f1f11
	github.com/hashicorp/vault-plugin-secrets-alicloud v0.0.0-20181109181453-2aee79cc5cbf
	github.com/hashicorp/vault-plugin-secrets-azure v0.0.0-20181207232500-0087bdef705a
	github.com/hashicorp/vault-plugin-secrets-gcp v0.0.0-20180921173200-d6445459e80c
	github.com/hashicorp/vault-plugin-secrets-gcpkms v0.0.0-20181212182553-6cd991800a6d
	github.com/hashicorp/vault-plugin-secrets-kv v0.0.0-20181219175933-9dbe04db0e34
	github.com/hashicorp/yamux v0.0.0-20181012175058-2f1d1f20f75d
	github.com/influxdata/influxdb v1.7.1
	github.com/influxdata/platform v0.0.0-20181208014635-df0b08454316
	github.com/jackc/pgx v0.0.0-20181010125647-20eaa7963b9d
	github.com/jeffchao/backoff v0.0.0-20140404060208-9d7fd7aa17f2
	github.com/jefferai/jsonx v0.0.0-20160721235117-9cc31c3135ee
	github.com/jmespath/go-jmespath v0.0.0-20180206201540-c2b33e8439af
	github.com/joyent/triton-go v0.0.0-20180628001255-830d2b111e62
	github.com/json-iterator/go v0.0.0-20180914014843-2433035e5132
	github.com/keybase/go-crypto v0.0.0-20181031135447-f919bfda4fc1
	github.com/konsorten/go-windows-terminal-sequences v1.0.1
	github.com/kr/pretty v0.1.0
	github.com/kr/text v0.1.0
	github.com/lib/pq v1.0.0
	github.com/marstr/guid v0.0.0-20170427235115-8bdf7d1a087c
	github.com/mattn/go-colorable v0.0.9
	github.com/mattn/go-isatty v0.0.4
	github.com/mattn/go-runewidth v0.0.4 // indirect
	github.com/matttproud/golang_protobuf_extensions v1.0.1
	github.com/michaelklishin/rabbit-hole v0.0.0-20180814192559-54e00efceb23
	github.com/microcosm-cc/bluemonday v1.0.2 // indirect
	github.com/miekg/dns v1.0.15
	github.com/mitchellh/cli v1.0.0
	github.com/mitchellh/copystructure v1.0.0
	github.com/mitchellh/go-homedir v1.0.0
	github.com/mitchellh/go-testing-interface v1.0.0
	github.com/mitchellh/hashstructure v1.0.0
	github.com/mitchellh/mapstructure v1.1.2
	github.com/mitchellh/reflectwalk v1.0.0
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd
	github.com/modern-go/reflect2 v1.0.1
	github.com/ncw/swift v0.0.0-20181011155031-6f907bcc698f
	github.com/oklog/run v1.0.0
	github.com/olekukonko/tablewriter v0.0.1 // indirect
	github.com/opencontainers/go-digest v1.0.0-rc1
	github.com/opencontainers/image-spec v1.0.1
	github.com/opencontainers/runc v0.1.1
	github.com/openzipkin/zipkin-go v0.1.5 // indirect
	github.com/ory-am/common v0.0.0-20180502075326-1a6879dc80f2
	github.com/ory/dockertest v3.3.2+incompatible
	github.com/patrickmn/go-cache v2.1.0+incompatible
	github.com/pborman/uuid v1.2.0
	github.com/pierrec/lz4 v2.0.5+incompatible
	github.com/pkg/errors v0.8.1
	github.com/posener/complete v1.1.1
	github.com/pquerna/cachecontrol v0.0.0-20180517163645-1555304b9b35
	github.com/pquerna/otp v1.1.0
	github.com/prometheus/client_golang v0.9.2
	github.com/prometheus/client_model v0.0.0-20190115171406-56726106282f
	github.com/prometheus/common v0.1.0
	github.com/prometheus/procfs v0.0.0-20190117184657-bf6a532e95b1
	github.com/russross/blackfriday v2.0.0+incompatible // indirect
	github.com/ryanuber/columnize v0.0.0-20170703205827-abc90934186a
	github.com/ryanuber/go-glob v0.0.0-20170128012129-256dc444b735
	github.com/samuel/go-zookeeper v0.0.0-20180130194729-c4fab1ac1bec
	github.com/satori/go.uuid v1.2.0
	github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529
	github.com/shurcooL/go v0.0.0-20190121191506-3fef8c783dec // indirect
	github.com/shurcooL/gofontwoff v0.0.0-20181114050219-180f79e6909d // indirect
	github.com/shurcooL/highlight_diff v0.0.0-20181222201841-111da2e7d480 // indirect
	github.com/shurcooL/highlight_go v0.0.0-20181215221002-9d8641ddf2e1 // indirect
	github.com/shurcooL/home v0.0.0-20190120230144-cf17a69b0cc5 // indirect
	github.com/shurcooL/htmlg v0.0.0-20190120222857-1e8a37b806f3 // indirect
	github.com/shurcooL/httpfs v0.0.0-20181222201310-74dc9339e414 // indirect
	github.com/shurcooL/issues v0.0.0-20190119024938-0d39520a96b7 // indirect
	github.com/shurcooL/issuesapp v0.0.0-20181229001453-b8198a402c58 // indirect
	github.com/shurcooL/notifications v0.0.0-20181111060504-bcc2b3082a7a // indirect
	github.com/shurcooL/octicon v0.0.0-20181222203144-9ff1a4cf27f4 // indirect
	github.com/shurcooL/reactions v0.0.0-20181222204718-145cd5e7f3d1 // indirect
	github.com/shurcooL/sanitized_anchor_name v1.0.0 // indirect
	github.com/shurcooL/webdavfs v0.0.0-20181215192745-5988b2d638f6 // indirect
	github.com/sirupsen/logrus v1.3.0
	github.com/stretchr/testify v1.3.0 // indirect
	github.com/tmc/grpc-websocket-proxy v0.0.0-20190109142713-0ad062ec5ee5 // indirect
	github.com/tv42/httpunix v0.0.0-20150427012821-b75d8614f926
	github.com/ugorji/go v1.1.1
	github.com/urfave/cli v1.20.0 // indirect
	go.etcd.io/etcd v0.0.0-20190122191915-de8e29e71ccf // indirect
	go.opencensus.io v0.19.0
	go.uber.org/atomic v1.3.2
	go.uber.org/multierr v1.1.0
	go.uber.org/zap v1.9.1
	go4.org v0.0.0-20181109185143-00e24f1b2599 // indirect
	golang.org/x/build v0.0.0-20190118222844-a865ae32defd // indirect
	golang.org/x/crypto v0.0.0-20190123085648-057139ce5d2b
	golang.org/x/exp v0.0.0-20190123073158-f1c91bc264ca // indirect
	golang.org/x/net v0.0.0-20190119204137-ed066c81e75e
	golang.org/x/oauth2 v0.0.0-20190115181402-5dab4167f31c
	golang.org/x/sys v0.0.0-20190123074212-c6b37f3e9285
	golang.org/x/text v0.3.1-0.20180807135948-17ff2d5776d2
	golang.org/x/time v0.0.0-20181108054448-85acf8d2951c
	golang.org/x/tools v0.0.0-20190123183629-85a87a81a9ff // indirect
	google.golang.org/api v0.1.0
	google.golang.org/appengine v1.4.0
	google.golang.org/genproto v0.0.0-20190123001331-8819c946db44
	google.golang.org/grpc v1.18.0
	gopkg.in/asn1-ber.v1 v1.0.0-20170511165959-379148ca0225
	gopkg.in/cheggaaa/pb.v1 v1.0.27 // indirect
	gopkg.in/inf.v0 v0.9.1
	gopkg.in/mgo.v2 v2.0.0-20180705113604-9856a29383ce
	gopkg.in/ory-am/dockertest.v2 v2.2.3
	gopkg.in/ory-am/dockertest.v3 v3.3.2
	gopkg.in/square/go-jose.v2 v2.1.9
	gopkg.in/yaml.v2 v2.2.2
	honnef.co/go/tools v0.0.0-20190123122826-072eb0b8b7d5 // indirect
	k8s.io/api v0.0.0-20181014053814-bbf5c193d86c
	k8s.io/apimachinery v0.0.0-20181015213631-60666be32c5d
	layeh.com/radius v0.0.0-20181013123817-3e49d2115636
	sourcegraph.com/sqs/pbtypes v1.0.0 // indirect
)
