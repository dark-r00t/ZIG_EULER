const std = @import("std");

pub fn main() !void {
    var permutation_count: u32 = 1;
    const target_permutation: u32 = 1_000_000;

    var digits = [_]u8{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
    //    var digits: [10]u8 = undefined;
    //    for (digits) |*item, i| {
    //        item.* = @intCast(u8, i);
    //    }

    while (permutation_count < target_permutation) {
        permutation_count += 1;
        if (!next_permutation(&digits)) { // passed as address so the values are mutable
            break;
        }
    }

    const answer: []const u8 = digits[0..10];
    std.debug.print("The answer is: {any}\n", .{answer});
}

fn next_permutation(digits: *[10]u8) bool {
    var i: usize = 9;
    while (i > 0 and digits[i - 1] >= digits[i]) {
        i -= 1;
    }

    if (i == 0) {
        return false;
    }

    var j: usize = 9;
    while (digits[j] <= digits[i - 1]) {
        j -= 1;
    }

    swap(digits, i - 1, j);

    j = 9;
    while (i < j) {
        swap(digits, i, j);
        i += 1;
        j -= 1;
    }

    return true;
}

fn swap(digits: *[10]u8, i: usize, j: usize) void {
    var temp: u8 = digits[i];
    digits[i] = digits[j];
    digits[j] = temp;
}