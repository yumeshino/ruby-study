value = 5

symbol = case value
            when 1
              :one
            when 2
              :two
            when 3
              :three
            when 4
              :four
            when 5
              :five
            else
              :other
          end

puts symbol

value = 11

symbol = case value
            when 1..5
              :low
            when 6..10
              :high
            else
              :invalid
          end

puts symbol


value = 'りんご'

symbol = case value
            when 'りんご','なし','キウイ','もも'
              '果物'
            when 'キャベツ','トマト','ねぎ'
              '野菜'
            else
              '該当なし'
          end

puts symbol

def yield_test(&proc)
  proc.call(1,2)
end

puts yield_test { |a,b| a + b }


def yield_test
  if block_given?
    yield
  else
    puts 'ブロックが渡されませんでした'
  end
end

yield_test { puts 'ブロックを渡しました' }

yield_test




