const std = @import("std");

pub fn main () !void {

    const limit: usize = 10001;

    var count: usize = 0;
    var n: usize = 1;

    while(count < limit) {

        n += 1;
        if (is_prime(n)) count += 1;
    }

    std.debug.print("{any}\n",.{n});
}

pub fn range (len: usize) []const void {
    return @as([*]void, undefined)[0..len];
}

pub fn is_prime (n: usize) bool {

    if (n < 2) return false;

    for (range((n/2) + 1)) |_,i| {
        if (i < 2) continue;    
        if (n % i == 0) return false;
    }

    return true;
}