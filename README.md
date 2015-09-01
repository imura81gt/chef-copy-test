# chef-copy-test

## 何を確かめたか



```
file "/root/grub.conf.#{digit}" do
  content IO.read('/etc/grub.conf')
  action :create
  notifies :restart, 'service[apache2]', :delayed
end
```

ファイルに更新がなければ再起動されないことを確認したかった


## 確認方法


```
$ chef exec kitchen converge
```
を２回実行して、２回目は再起動されないことを確認した。

## おまけ（test-kitchen）

test
```
$ chef exec kitchen verify
```

終わったら破棄
```
$ chef exec kitchen destroy
```

