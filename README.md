# String Calculator TDD Kata

**String Calculator** implemented in Ruby using **Test-Driven Development (TDD)** principles

## Requirements

* Ruby (>= 2.7)
* Bundler (for dependency management)

## Installation

1. Clone the repository:
```bash
git clone https://github.com/Harshal111111/String_Calculator.git
cd String_Calculator
```

2. Install dependencies:
```bash
bundle install
```

3. Initialize RSpec (if needed):
```bash
rspec --init
```

## Running Tests

To run the test:

```bash
rspec
```

## Usage

```ruby
require './lib/string_calculator'

calculator = StringCalculator.new
puts calculator.add("")           # => 0  
puts calculator.add("1")          # => 1  
puts calculator.add("1,2,3")      # => 6  
puts calculator.add("1\n2,3")     # => 6  
puts calculator.add("//;\n1;2")   # => 3  
```

## Development Approach

* **Red**: Write a failing test for the new feature
* **Green**: Implement minimal code to make the test pass
* **Refactor**: Clean up the code while maintaining test coverage

## Example Inputs and Outputs

* `""` → `0` (Empty string returns 0)
* `"1"` → `1` (Single number returns itself)
* `"1,5"` → `6` (Sum of two comma-separated numbers)
* `"1\n2,3"` → `6` (Handles new lines between numbers)
* `"//;\n1;2"` → `3` (Supports custom delimiters)
* `"1,-2,3"` → **Error** (Throws exception for negative numbers)
* `"1,-2,-3"` → **Error** (Lists all negative numbers in the error message)