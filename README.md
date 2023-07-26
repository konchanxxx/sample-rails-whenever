# README

gem whenever のサンプルアプリケーション

# Command

```sh
# タスク更新
$ make update

# タスク削除
$ make clear

# タスク確認
$ make list
```

# Usage

つまづきポイントとその解消方法について記載

1. 以下のエラーが出たのでgemを更新

```
Could not find date-3.3.3 in any of the sources
Run `bundle install` to install missing gems.
```

```sh
bundle update date
```

2. zsh環境では動作しないので修正する必要がある

bashで実行してrbenvなどの設定が読み込まれなかったりするのでzshが設定されている場合はzshで実行するようにschedule.rbを変更する
```rb
...
# SHELLを実行環境で利用しているものを指定するようにする
env :SHELL, ENV['SHELL'] || '/bin/bash'
...
```

~/.zshrcでもrbenvを初期化するようにしておく
```sh
...
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
...
```
