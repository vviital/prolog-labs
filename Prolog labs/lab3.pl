countSum(0, 0).
countSum(X, Acc) :- Val is X mod 10, Y is X div 10, countSum(Y, NAcc), Acc is NAcc + Val, !.

update(Input, Output, X, X) :- Output is Input + 1, !.
update(Input, Input, X, Y) :- X \= Y.

countNumber(L, L, NeedSum, Acc) :- countSum(L, SumDigits), update(0, Acc, SumDigits, NeedSum), !.
countNumber(L, R, NeedSum, Acc) :- 
	R > L,
	NewR is R - 1, 
	countNumber(L, NewR, NeedSum, NAcc), 
	countSum(R, SumDigits),
	update(NAcc, Acc, SumDigits, NeedSum).
	

solve(L1, L1, L2, R2, Acc) :- 
	countSum(L1, Sum), 
	countNumber(L2, R2, Sum, Acc), !.

solve(L1, R1, L2, R2, Acc) :- 
	R1 > L1,
	NewR1 is R1 - 1,
	solve(L1, NewR1, L2, R2, NAcc),
	countSum(R1, Sum),
	countNumber(L2, R2, Sum, Count),
	Acc is NAcc + Count.
	
solve(Res) :- solve(100, 999, 0, 999, Res).

%
%#include <iostream>
%#include <sstream>
%#include <fstream>
%#include <iomanip>
%#include <string>
%#include <algorithm>
%#include <cmath>
%#include <ctime>
%#include <vector>
%#include <stack>
%#include <map>
%#include <set>
%#include <queue>
%#include <cstring>
%#include <bitset>
%#include <cstdio>
%#include <cstdlib>
%#include <cassert>
%
%
%using namespace std;
%
%int count(int x) {
%    int ans = 0;
%    while(x) ans += x % 10, x /= 10;
%    return ans;
%}
%void solve() {
%    int a = 100, b = 999;
%    int ans = 0;
%    int need = 15;
%    for(int i = a; i <= b; ++i) {
%        int cur = count(i);
%        if (cur == need) 
%            ans++;
%    }
%    cout << ans << "\n";
%}
%
%bool check(int x) {
%    int l = x / 1000;
%    int r = x % 1000;
%    return count(l) == count(r);
%}
%
%void count() {
%    int ans = 0;
%    for(int i = 1e+5; i < 1e+6; ++i) {
%        ans += check(i);
%    }
%    cout << ans << "\n";
%
%    cout << fixed << setprecision(15) << clock() * 1. / CLOCKS_PER_SEC;
%}
%
%int main() {
%    count();
%    return 0;
%}
