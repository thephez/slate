
## AbandonTransaction

<% summary_abandonTransaction="marks an in-wallet transaction and all its in-wallet descendants as abandoned. This allows their inputs to be respent." %>

*Added in Bitcoin Core 0.12.0*

The `abandontransaction` RPC <%= summary_abandonTransaction %>

*Parameter #1---a transaction identifier (TXID)*

>Abandons the transaction on your node.

```cli
dash-cli abandontransaction fa3970c341c9f5de6ab13f128cbfec58d732e736a505fe32137ad551c799ecc4
```

| Name | Type | Required | Description |
|------|------|----------|-------------|
| TXID | string (hex) | Required<br>(exactly 1) | The TXID of the transaction that you want to abandon.  The TXID must be encoded as hex in RPC byte order

*Result---`null` on success*

>Result (no output from `dash-cli` because result is set to `null`).

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `result` | null | Required<br>(exactly 1) | JSON `null` when the transaction and all descendants were abandoned

*See also*

* [Some other RPC](#getblock): Link to somewhere
