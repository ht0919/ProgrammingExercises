process.stdin.resume();
process.stdin.setEncoding('utf8');
process.stdin.on('data', function (chunk) {
    var lines = chunk.toString().split('\n');
    var s = lines[0].replace(/(^\s+)|(\s+$)/g, "").split(" ");
    var a = Number(s[0]);
    var b = Number(s[1]);
    var c = Number(s[2]);
    var total = a + b + c;
    var limit = 8 * 60 + 59;
    var start = limit - total;
    var start_a = start + a;
    var N = Number(lines[1]);
    for (var i=0; i<N; i++) {
        s = lines[i+2].replace(/(^\s+)|(\s+$)/g, "").split(" ");
        var h = Number(s[0]);
        var m = Number(s[1]);
        var train = h * 60 + m;
        if (train > start_a) { break; }
        start = train - a;
    }
    var hh = Math.floor(start / 60);
    var mm = start % 60;
    console.log(("0"+hh).slice(-2)+":"+("0"+mm).slice(-2));
});
