const std = @import("std");

pub fn main () !void {
    
    const limit: usize = 4_000_000;

    var f: usize = 1;
    var s: usize = 1;

    var sum: usize = 0;

    while (sum <= limit) {

        if (f % 2 == 0) {
            sum += f;
        }

        const temp: u32 = f;
        f += s;
        s = temp;
    }
    
    std.debug.print("{any}\n",.{sum});
}
