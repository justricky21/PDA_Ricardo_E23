var Calculator = require('../../public/js/calculator.js')
var assert = require('assert')

describe('calculator', function () {
  beforeEach(function () {
    calculator = new Calculator()
  });

  // unit

  it('can add two numbers', function() {
    calculator.previousTotal = 1;
    calculator.add(2);
    assert.equal(3, calculator.runningTotal);
  })

  it('can subtract two numbers', function() {
    calculator.previousTotal = 2;
    calculator.subtract(1);
    assert.equal(1, calculator.runningTotal);
  })

  it('can multiply two numbers', function() {
    calculator.previousTotal = 2;
    calculator.multiply(2);
    assert.equal(4, calculator.runningTotal);
  })

  it('can divide two numbers', function() {
    calculator.previousTotal = 4;
    calculator.divide(2);
    assert.equal(2, calculator.runningTotal);
  })

  // integration
  
  it('should be able to concatenate multiple number button clicks', function() {
    calculator.numberClick(1);
    calculator.numberClick(2);
    calculator.numberClick(3);
    assert.equal(123, calculator.runningTotal);
  })

  it('should be able to chain multiple operations together', function() {
    calculator.runningTotal = 1;
    calculator.operatorClick('+');
    calculator.numberClick(1);
    calculator.operatorClick('-');
    calculator.numberClick(1)
    calculator.operatorClick('=')
    assert.equal(1, calculator.runningTotal);
  })

  it('should be able to clear the running total without affecting the calculation', function() {
    calculator.runningTotal = 1;
    calculator.operatorClick('+');
    calculator.numberClick(1);
    calculator.clearClick();
    calculator.numberClick(1);
    calculator.operatorClick('=');
    assert.equal(2, calculator.runningTotal);
  })
});