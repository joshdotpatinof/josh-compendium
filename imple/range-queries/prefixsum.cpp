// written by josh.patinof
#include <bits/stdc++.h>
using namespace std;

using ll = long long;
#define fast_io ios_base::sync_with_stdio(false); cin.tie(NULL);

// @snippet-start:prefix-sum
vector<int> prefix_sum(vector<int> &arr){
    int n = arr.size();
    vector<int> pref(n + 1);

    pref[0] = 0;

    for (int i = 1; i <= n; ++i){
        pref[i] = pref[i - 1] + arr[i - 1];
    }
    return pref;
}
// @snippet-end:prefix-sum

void solve() {
    // example 
    vector<int> arr = {1, 2, 3};

    vector<int> res = prefix_sum(arr);
    for (auto x : res){
        cout << x << " ";
    }
    cout << endl;
    int a, b;
    a = 1; b = 3;
    int sum_of_a_to_b = res[b] - res[a-1];
    // 1-indexed to deal with bounding errors
    cout << sum_of_a_to_b << endl; // sum[a, b] = pref[b] - pref
}

int main() {
    fast_io;
    //int t = 1;
    //cin >> t;
    //while (t--) {
    solve();
    //}
    return 0;
}