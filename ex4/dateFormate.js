const moment = require('moment');
const today = moment();
console.log(today.format());
console.log(today.format("ddd, hA"));
console.log(today.format("[Today is] dddd"));
console.log(today.format('YYYY MM DD'));
console.log(today.format('DD.MM.YYYY HH:mm'));
console.log(
    "Today is " +
    today.format('dddd, MMMM Do YYYY, h:mm:ss a')
);