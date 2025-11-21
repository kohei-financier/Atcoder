// 問題
// https://atcoder.jp/contests/abc085/tasks/abc085_c
#include <iostream>
using namespace std;
int main(void){
    int N, Y;
    cin >> N >> Y;
    
    int ares = -1, bres = -1, cres = -1;
    
    for (int a=0; a<=N; ++a) {
      for (int b=0; b<=N; ++b) {
        int c = N-a-b;
        
        if (c<0 || c>N) {
          continue;
        }
        
        if (10000*a+5000*b+1000*c == Y) {
          ares = a;
          bres = b;
          cres = c;
        }
      }
    }
    
    cout << ares << " " << bres << " " << cres << endl;
}
