// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

const std = @import("std");

pub fn main() !void {

    const answer: u32 = 232_792_560;
    
    const start: u32 = 1;
    const end: u32 = 20;

    var current: u32 = end;
    var lowest: u32 = 0;

    while (true) {
        
        var flag: bool = run(start, end, current);

        if (flag) {
            lowest = current;
            break;
        }

        current += 1;
    }   

    std.debug.print("{any}\n",.{answer == lowest});
}

fn run (i: u32, limit: u32, n: u32) bool {
    
    if (i > limit) {
        return true;
    }

    if (n % i != 0) {
        return false;
    }

    return (run(i + 1, limit, n));
}

// nektro
fn range(limit: u32) []const void {
    return @as([*]void, undefined)[0..limit];
}
