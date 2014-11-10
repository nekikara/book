#! /usr/bin/env ruby
# coding: utf-8

######### block ##########

# 繰り返し以外に用いられるブロック
def write_with_lock
  File.open 'time.txt', 'w' do |f|
    f.flock File::LOCK_EX

    yield f
    f.flock File::LOCK_UN
  end
end

write_with_lock do |f|
  f.puts.Time.now
end

### キーワード引数
### 仮引数の順序
### alias: メソッドに別名を付ける
# Karnel#pはデバッグ用
# NOT p.110~114
