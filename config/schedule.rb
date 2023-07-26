# Rails.rootを使用するために環境設定を読み込む
require File.expand_path(File.dirname(__FILE__) + '/environment')

# cronを実行する環境変数をセット
set :environment, ENV['RAILS_ENV'] || :development

# cronのログの吐き出し場所
set :output, "#{Rails.root}/log/cron.log"

# zshが設定されている場合はSHELLをzshにする
if ENV['SHELL'].include?('zsh')
  env :SHELL, '/bin/zsh'
elsif
  env :SHELL, '/bin/bash'
end

# ジョブを実行するシェルをzshにする
set :job_template, "$SHELL -l -c ':job'"

# 定期実行したい処理を記載
every :minute do
  rake 'sample:output_log'
end
