var _ = require('lodash-node');

var numbers = _.range(1000);
var filtered = _.filter(numbers, function (x) {return x%5==0 || x%3==0;});
var sum = _.reduce(filtered, function (sum, num) {return sum+num;});

console.log(sum);
