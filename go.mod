module github.com/hashicorp/vault

require (
	cloud.google.com/go v0.34.0
	contrib.go.opencensus.io/exporter/ocagent v0.4.2 // indirect
	github.com/Azure/azure-sdk-for-go v24.0.0+incompatible
	github.com/Azure/go-autorest v11.3.1+incompatible
	github.com/NYTimes/gziphandler v1.0.1
	github.com/SAP/go-hdb v0.13.2
	github.com/SermoDigital/jose v0.0.0-20180104203859-803625baeddc
	github.com/aliyun/alibaba-cloud-sdk-go v1.50.9+incompatible
	github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da
	github.com/armon/go-proxyproto v0.0.0-20180202201750-5b7edb60ff5f
	github.com/armon/go-radix v1.0.0
	github.com/asaskevich/govalidator v0.0.0-20180720115003-f9ffefc3facf
	github.com/aws/aws-sdk-go v1.16.19
	github.com/boombuler/barcode v1.0.0 // indirect
	github.com/briankassouf/jose v0.0.0-20180619214549-d2569464773f // indirect
	github.com/centrify/cloud-golang-sdk v0.0.0-20180119173102-7c97cc6fde16 // indirect
	github.com/chrismalek/oktasdk-go v0.0.0-20181212195951-3430665dfaa0
	github.com/cockroachdb/cockroach-go v0.0.0-20181001143604-e0a95dfd547c
	github.com/coreos/etcd v3.3.11+incompatible
	github.com/coreos/go-oidc v2.0.0+incompatible // indirect
	github.com/coreos/go-semver v0.0.0-20180108230905-e214231b295a
	github.com/denisenkom/go-mssqldb v0.0.0-20190111225525-2fea367d496d
	github.com/dimchansky/utfbom v1.1.0 // indirect
	github.com/duosecurity/duo_api_golang v0.0.0-20190107154727-539434bf0d45
	github.com/elazarl/go-bindata-assetfs v0.0.0-20180223160309-38087fe4dafb
	github.com/fatih/color v1.7.0
	github.com/fatih/structs v1.1.0
	github.com/fullsailor/pkcs7 v0.0.0-20180613152042-8306686428a5
	github.com/gammazero/deque v0.0.0-20180920172122-f6adf94963e4 // indirect
	github.com/gammazero/workerpool v0.0.0-20181230203049-86a96b5d5d92 // indirect
	github.com/ghodss/yaml v0.0.0-20180820084758-c7ce16629ff4
	github.com/go-errors/errors v0.0.0-20180813162953-d98b870cc4e0
	github.com/go-ldap/ldap v3.0.0+incompatible
	github.com/go-sql-driver/mysql v1.4.1
	github.com/gocql/gocql v0.0.0-20181124151448-70385f88b28b
	github.com/gogo/protobuf v1.2.0 // indirect
	github.com/golang/protobuf v0.0.0-20181022202325-d7fc20193620
	github.com/golang/snappy v0.0.0-20180518054509-2e65f85255db
	github.com/google/go-github/v21 v21.0.0
	github.com/google/gofuzz v0.0.0-20170612174753-24818f796faf // indirect
	github.com/googleapis/gax-go v2.0.2+incompatible // indirect
	github.com/gorhill/cronexpr v0.0.0-20180427100037-88b0669f7d75 // indirect
	github.com/hashicorp/consul v1.4.0
	github.com/hashicorp/errwrap v1.0.0
	github.com/hashicorp/go-cleanhttp v0.5.0
	github.com/hashicorp/go-gcp-common v0.0.0-20180425173946-763e39302965
	github.com/hashicorp/go-hclog v0.0.0-20190109152822-4783caec6f2e
	github.com/hashicorp/go-immutable-radix v1.0.0
	github.com/hashicorp/go-memdb v0.0.0-20181108192425-032f93b25bec
	github.com/hashicorp/go-multierror v1.0.0
	github.com/hashicorp/go-plugin v0.0.0-20181212150838-f444068e8f5a
	github.com/hashicorp/go-retryablehttp v0.0.0-20180718195005-e651d75abec6
	github.com/hashicorp/go-rootcerts v0.0.0-20160503143440-6bb64b370b90
	github.com/hashicorp/go-sockaddr v0.0.0-20190103214136-e92cdb5343bb
	github.com/hashicorp/go-syslog v0.0.0-20170829120034-326bf4a7f709
	github.com/hashicorp/go-uuid v1.0.0
	github.com/hashicorp/go-version v1.1.0
	github.com/hashicorp/golang-lru v0.5.0
	github.com/hashicorp/hcl v0.0.0-20180906183839-65a6292f0157
	github.com/hashicorp/nomad v0.8.7
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
	github.com/hashicorp/vault-plugin-secrets-kv v0.0.0-20190115203747-edbfe287c5d9
	github.com/influxdata/influxdb v1.7.3
	github.com/influxdata/platform v0.0.0-20190111200105-98469bf07613 // indirect
	github.com/jackc/pgx v3.3.0+incompatible // indirect
	github.com/jeffchao/backoff v0.0.0-20140404060208-9d7fd7aa17f2 // indirect
	github.com/jefferai/jsonx v0.0.0-20160721235117-9cc31c3135ee
	github.com/joyent/triton-go v0.0.0-20190112182421-51ffac552869
	github.com/json-iterator/go v0.0.0-20180914014843-2433035e5132 // indirect
	github.com/keybase/go-crypto v0.0.0-20181127160227-255a5089e85a
	github.com/kr/pretty v0.1.0
	github.com/kr/text v0.1.0
	github.com/lib/pq v1.0.0
	github.com/marstr/guid v1.1.0 // indirect
	github.com/mattn/go-colorable v0.0.0-20180310133214-efa589957cd0
	github.com/michaelklishin/rabbit-hole v0.0.0-20180814192559-54e00efceb23
	github.com/mitchellh/cli v1.0.0
	github.com/mitchellh/copystructure v1.0.0
	github.com/mitchellh/go-homedir v1.0.0
	github.com/mitchellh/go-testing-interface v1.0.0
	github.com/mitchellh/hashstructure v1.0.0 // indirect
	github.com/mitchellh/mapstructure v1.1.2
	github.com/mitchellh/reflectwalk v1.0.0
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/ncw/swift v1.0.43
	github.com/oklog/run v1.0.0
	github.com/patrickmn/go-cache v0.0.0-20180815053127-5633e0862627
	github.com/pierrec/lz4 v0.0.0-20181005164709-635575b42742
	github.com/pkg/errors v0.8.1
	github.com/posener/complete v1.2.1
	github.com/pquerna/cachecontrol v0.0.0-20180517163645-1555304b9b35 // indirect
	github.com/pquerna/otp v1.1.0
	github.com/ryanuber/columnize v0.0.0-20170703205827-abc90934186a
	github.com/ryanuber/go-glob v0.0.0-20170128012129-256dc444b735
	github.com/samuel/go-zookeeper v0.0.0-20180130194729-c4fab1ac1bec
	github.com/tyrannosaurus-becks/aliyun-oss-go-sdk v0.0.0-20180615125516-36bf7aa2f916
	github.com/ugorji/go/codec v0.0.0-20181209151446-772ced7fd4c2 // indirect
	go.etcd.io/etcd v3.3.11+incompatible
	golang.org/x/crypto v0.0.0-20190103213133-ff983b9c42bc
	golang.org/x/net v0.0.0-20190110200230-915654e7eabc
	golang.org/x/oauth2 v0.0.0-20190115181402-5dab4167f31c
	golang.org/x/sys v0.0.0-20190115152922-a457fd036447
	golang.org/x/time v0.0.0-20181108054448-85acf8d2951c
	google.golang.org/api v0.1.0
	google.golang.org/grpc v1.18.0
	gopkg.in/asn1-ber.v1 v1.0.0-20181015200546-f715ec2f112d // indirect
	gopkg.in/mgo.v2 v2.0.0-20180705113604-9856a29383ce
	gopkg.in/square/go-jose.v2 v2.2.2 // indirect
	k8s.io/api v0.0.0-20181221193117-173ce66c1e39 // indirect
	k8s.io/apimachinery v0.0.0-20190111195121-fa6ddc151d63 // indirect
	k8s.io/klog v0.1.0 // indirect
	layeh.com/radius v0.0.0-20190109000448-e6d9fd7a048a
)
