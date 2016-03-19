#import <Foundation/Foundation.h>

static void print(NSString*str) {
  [(NSFileHandle*)[NSFileHandle fileHandleWithStandardOutput]
    writeData: [str dataUsingEncoding: NSUTF8StringEncoding]];
}

static int getArr(NSMutableArray*arr,int pos) {
  return [[arr objectAtIndex:pos] integerValue];
}

static void setArr(NSMutableArray*arr,int val,int pos) {
    [arr removeObjectAtIndex:pos];
    [arr insertObject:@(val) atIndex:pos];
}

// 分が60以上の場合に時間を繰り上げる関数
static void timeAdj(NSMutableArray*hm) {
  int hm0,hm1;
  hm1 = getArr(hm, 1);
  if (hm1 > 59) {
    hm0 = getArr(hm, 0);
    setArr(hm,(hm0 + hm1 / 60),0);
    setArr(hm,(hm1 % 60),1);
  }
}

int main(void) {

  NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];

  NSInteger offset = 0;
  int st0,st1,et0,et1,tmp1,tmp2;

  // All data read
  NSString *readdata = [[[NSString alloc]
    initWithData:[[NSFileHandle fileHandleWithStandardInput]
    readDataToEndOfFile] encoding:NSUTF8StringEncoding] autorelease];
  // Separate line
  NSArray *lines = [readdata componentsSeparatedByString:@"\n"];

  NSInteger n = [[lines objectAtIndex:offset++] integerValue];
  NSMutableArray *st = [NSMutableArray arrayWithObjects:@10,@0,nil]; // 開始時刻(時,分)
  NSMutableArray *et = [NSMutableArray arrayWithObjects:@10,@0,nil]; // 終了時刻(時,分)
  BOOL lunch = NO;

  for (int i=0; i<n; i++) {
    // データ入力(名前 時間[分])
    NSArray *tmp = [[lines objectAtIndex:offset++] componentsSeparatedByString:@" "];
    NSString *name = [tmp objectAtIndex:0];
    NSInteger minutes = [[tmp objectAtIndex:1] integerValue];
    // 終了時刻の設定
    setArr(et, getArr(st,0), 0);
    setArr(et, getArr(st,1)+minutes, 1);
    timeAdj(et);
    // 終了時刻が12:01以降なら昼休みを取る
    et0 = getArr(et,0);
    et1 = getArr(et,1);
    if (lunch == NO && et0 >= 12 && et1 >= 1) {
      // 開始時刻の更新
      st1 = getArr(st,1);
      st1 += 50; // すでに10分休憩しているので50分を足す
      setArr(st,st1,1);
      timeAdj(st);
      // 終了時刻の更新
      st0 = getArr(st,0);
      setArr(et,st0,0);
      st1 = getArr(st,1);
      et1 = st1 + minutes;
      setArr(et,et1,1);
      timeAdj(et);
      lunch = YES; // 昼休みは1回だけなのでフラグをONにする
    }

    st0 = getArr(st,0);
    st1 = getArr(st,1);
    et0 = getArr(et,0);
    et1 = getArr(et,1);
    NSString *str = [NSString stringWithFormat:
      @"%02d:%02d - %02d:%02d %@\n", st0,st1,et0,et1,name];
    print(str);

    // 休憩を10分取って次の開始時刻を更新
    et1 = getArr(et,1);
    et1 += 10;
    setArr(et,et1,1);
    timeAdj(et);

    et0 = getArr(et,0);
    setArr(st,et0,0);
    et1 = getArr(et,1);
    setArr(st,et1,1);
  }

  [pool release];
  return 0;
}
