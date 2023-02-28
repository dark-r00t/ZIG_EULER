const std = @import("std");

pub fn main () !void {

    const start: usize = 1;
    const end: usize = 20;

    var lowest: usize = 0;
    var count: usize = end;

    while(true) {

        var flag: bool = true;

        for(range(end + 1)) |_,i| {
            if (i < start) continue;

            if(count % i != 0) {
                flag = false;
                break;
            }
        }

        if (flag) {
            lowest = count;
            break;
        }

        count += 1;
    }

    std.debug.print("{any}\n",.{lowest});
}

pub fn range(len: usize) []const void {
    return @as([*]void, undefined)[0..len];
}