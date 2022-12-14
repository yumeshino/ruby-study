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

class Book
  def initialize
    ptus 'Initialize!!'
  end
end

Book.new

class Book
  attr_accessor :name
  def initialize(name = '不明')
    @name = name
  end
end

book = Book.new
puts book.name
book.name = 'はじめてのRuby'
puts book.name


class Foo
  def self.first_method
    puts 'first'
  end

  class << self
    def second_method
      puts 'second'
    end

    def third_method
      puts 'third'
    end
  end
end

Foo.first_method
Foo.second_method
Foo.third_method

require 'date'

class User
  attr_accessor :name, :birthday

  def initialize(name,birthday)
    @name = name
    @birthday = birthday
  end

  def display_birthday
    @birthday.strtime('%Y年 %m月 %d日')
  end

  def innner_call_displya_birthday
    self.display_birthday
    display_birthday
  end
end

birthday = Date.new(2000,1,1)
user = User.new('sato',birthday)
puts user.display_birthday
puts user.inner_call_display_birthday


class Greeting
  def hell
    puts "こんにちは！#{@name}さん"
  end

  class User < Greeting
    def initialize(name)
      @name = name
    end

    def hello
      puts "Hello,#{@namae}!"
    end

  end

  user1 = User.new('Sato')
  user1.hello

  user2 = User.new('Tanaka')
  user.hello

  module SampleModule
    CONST_NUM = 100

    def const_num
      CONST_NUM
    end
  end

  puts SampleModule::CONST_NUM
  include SampleModule
  puts const_num
  puts CONST_NUM

 
  module SampleModule
    def module_function_sum(a,b)
      a + b
    end

    module_function :module_function_sum
  end

  puts SampleModule.module_function_sum(3,3)

  module SampleModule
    def sum(a,b)
      a + b
    end
  end

  class Sample
    include SampleModule

    def call_sum(a,b)
      sum(a,b)
    end
  end

  sample = Sample.new
  puts sample.sum(1,1)
  puts sample.call_sum(2,2)

  begin
    val = 10 / 0
    puts val
  rescue
    puts '0で割ることはできません'
  end

  begin
    val = 10 / 0
    puts val
  rescue => e
    p e.backtrace
  end

  begin
    hoge
    10 / 0
  rescue ZeroDivisionError => e
    puts '0で割ってはいけません'
  rescue => 
    puts 'その他のエラー'
  end

  puts '終了'

  num = 0

  begin
    p 10 / num
  rescue ZeroDivisionError => e
    p e
    num = 2
    retry
  end

  puts '終了'

  begin
    raise
  rescue => e
    p e
  end

  
 





