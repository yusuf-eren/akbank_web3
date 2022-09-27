// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Enum {
    enum Status {
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Cancelled
    }
    Status public status1;

    struct Order {
        address buyer;
        Status status1;
    }

    Order[] public orders;

    function get1() external view returns (Status) {
        return status1;
    }

    function set1(Status _statusx) external {
        status1 = _statusx;
    }

    function ship() external {
        status1 = Status.Shipped;
    }

    function reset() external {
        delete status1;
    }
}
