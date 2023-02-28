const std = @import("std");

pub fn main () !void {
    
    const limit: usize = 1000;
    var sum: usize = 0;

    for(range(limit)) |_,i| {

        if (i % 3 == 0) {sum += i;}
        else {if (i % 5 == 0) sum += i;}
    }

    std.debug.print("{any}\n",.{sum});
}

pub fn range (len: usize) []const void {
    return @as([*]void, undefined)[0..len];
}
