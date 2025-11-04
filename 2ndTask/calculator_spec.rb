require_relative "calculator"

RSpec.describe Calculator do
  it "проверяет значение константы PI" do
    expect(Calculator::PI).to eq(3.14159)
  end

  it "проверяет работу метода add" do
    calc = Calculator.new
    expect(calc.add(2, 3)).to eq(5)
  end
end
