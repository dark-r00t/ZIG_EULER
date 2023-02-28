const std = @import("std");

pub fn main() !void {

    const end = 100;

    var sum_of_squares: usize = 0;
    var square_of_sums: usize = 0;

    for(range(end + 1)) |_,i| {
        sum_of_squares += i*i;
        square_of_sums += i;
    }

    square_of_sums *= square_of_sums;

    const difference: usize = square_of_sums - sum_of_squares;

    std.debug.print("{any}\n",.{difference});
}

pub fn range(len: usize) []const void {
    return @as([*]void, undefined)[0..len];
}