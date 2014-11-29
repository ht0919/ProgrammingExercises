process.stdin.resume();
process.stdin.setEncoding('utf8');
process.stdin.on('data', function (chunk) {

    var max = 0;
    var incom = new Array(1000);
    var lines = new Array(1000);
    var line  = new Array(1000);

    lines = chunk.toString().split('\n');
    var s = lines[0].replace(/(^\s+)|(\s+$)/g, "").split(" ");
    var N = Number(s[0]);
    var M = Number(s[1]);
    if (M>0 && N>0) {
        for (var i=0; i<M; i++) {
            var sum = 0;
            line = lines[i+1].replace(/(^\s+)|(\s+$)/g, "").split(" ");
            for (var j=0; j<N; j++) {
                sum += Number(line[j]);
            }
            incom[i] = sum;
        }
        for (i=0; i<M; i++) {
            if (incom[i]>0) { max += incom[i]; }
        }
    }
    console.log(max);
});
