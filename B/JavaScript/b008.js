var incom = [];
var lines = [];
var line  = [];
process.stdin.resume();
process.stdin.setEncoding('utf8');
process.stdin.on('data', function (chunk) {
    lines = chunk.toString().split('\n');
    var s = lines[0].replace(/(^\s+)|(\s+$)/g, "").split(" ");
    var N = Number(s[0]);
    var M = Number(s[1]);
    var max = 0;
    if (M>0 && N>0) {
        for (var i=0; i<M; i++) {
            var sum = 0;
            line = lines[i+1].replace(/(^\s+)|(\s+$)/g, "").split(" ");
            line.forEach(function(num) {
                sum += Number(num);
            });
            incom.push(sum);
        }
        incom.forEach (function(num) {
            if (num>0) { max += num; }
        });
    }
    console.log(max);
});
