const std = @import("std");

pub fn main() !void {
    
}

pub fn range(len: usize) []const void {
    return @as([*]void, undefined)[0..len];
}