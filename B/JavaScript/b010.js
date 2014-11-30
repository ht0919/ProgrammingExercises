process.stdin.resume();
process.stdin.setEncoding('utf8');
process.stdin.on('data', function (chunk) {

    var center = 55;
    var eleven = 11;
    var XA = new Array(eleven);
    var XB = new Array(eleven);
    var tmp = [];
    var a,b,pass,num,flg,i;

    var lines = chunk.toString().split('\n');
    var s = lines[0].replace(/(^\s+)|(\s+$)/g, "").split(" ");
    var T = s[0];
    var U = Number(s[1]);

    tmp = lines[1].replace(/(^\s+)|(\s+$)/g, "").split(" ");
    for (i=0; i<eleven; i++) { XA[i] = Number(tmp[i]); }
    tmp = lines[2].replace(/(^\s+)|(\s+$)/g, "").split(" ");
    for (i=0; i<eleven; i++) { XB[i] = Number(tmp[i]); }

    if (T == "A") {
        XB = XB.sort(function(a,b){ return a -b; });
        b = XB[9];
        pass = XA[U-1];
        num = 1;
        flg = false;
        for (i=0; i<eleven; i++) {
            a = XA[i];
            if (a>=center && a>b && a>pass) {
                console.log(num);
                flg = true;
            }
            num += 1;
        }
        if (flg === false) { console.log("None"); }
    } else {
        XA = XA.sort(function(a,b){ return a -b; });
        a = XA[1];
        pass = XB[U-1];
        num = 1;
        flg = false;
        for (i=0; i<eleven; i++) {
            b = XB[i];
            if (b<=center && b<a && b<pass) {
                console.log(num);
                flg = true;
            }
            num += 1;
        }
        if (flg === false) { console.log("None"); }
    }
});
