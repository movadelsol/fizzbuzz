# require_relative '../fizzbuzz' # fizzbuzz.rb を読み込む

RSpec.describe "Fizzbuzz" do
  # テスト対象のインスタンスを生成（fizzbuzz.rbにFizzbuzzクラスがある場合）
  let(:fizzbuzz) { Fizzbuzz.new }

  context 'normal number' do
    it { expect(fizzbuzz.calculate(1)).to eq 1 }
    it { expect(fizzbuzz.calculate(2)).to eq 2 }
  end

  context 'Fizz number' do
    it { expect(fizzbuzz.calculate(3)).to eq 'fizz' }
    it { expect(fizzbuzz.calculate(6)).to eq 'fizz' }
  end

  context 'Buzz number' do
    it { expect(fizzbuzz.calculate(5)).to eq 'buzz' }
    it { expect(fizzbuzz.calculate(10)).to eq 'buzz' }
  end

  context 'FizzBuzz number' do
    it { expect(fizzbuzz.calculate(15)).to eq 'fizzbuzz' }
  end
end