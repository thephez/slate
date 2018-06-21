## GetBlock

<% summary_getBlock="gets a block with a particular header hash from the local block database either as a JSON object or as a serialized block." %>

The `getblock` RPC <%= summary_getBlock%>

>Get a block in raw hex:

```cli
dash-cli -testnet getblock \
            0000000037955fcc39af8b1ae75914ffb422313c0fca7eba96a1ac99c2e57f84 \
            false

0100002011f5719a0a0c4881ff98b4a68c1c828dc3b10f5b51033f5f93d48dbf\
000000004b8e38f197d6ee878e160d2bae3ce05ab898a6252458ec67ce770140\
260397c4dd2ed659a1dd001d00636b5601010000000100000000000000000000\
00000000000000000000000000000000000000000000ffffffff4b02041204dd\
2ed65908fabe6d6d7445746d63506b62572d2d35584853467a765a6748696972\
30657a3a6f6d656e010000000000000017fffff9020000000d2f6e6f64655374\
726174756d2f00000000058028bb13010000001976a914bad55652dffb1af943\
41015c94feea79793442fd88ac40e553b1020000001976a9142b7856de53d4c1\
823090c98f8ad79862842c09b588ac4094dd89000000001976a914c2c29ebc78\
7954ef99d01c5f79115abf7012fb8e88ac4094dd89000000001976a914d7b47d\
4b40a23c389f5a17754d7f60f511c7d0ec88ac4094dd89000000001976a914dc\
3e0793134b081145ec0c67a9c72a7b297df27c88ac00000000
```

*Parameter #1---header hash*

| Name | Type | Required | Description |
|------|------|----------|-------------|
| Header Hash | string (hex) | Required<br>(exactly 1) | The hash of the header of the block to get, encoded as hex in RPC byte order

*Parameter #2---whether to get JSON or hex output*

| Name | Type | Required | Description |
|------|------|----------|-------------|
| Format | boolean | Optional<br>(true or false) | Set to `false` to get the block in serialized block format; set to `true` (the default) to get the decoded block as a JSON object

*Result (if format was `false`)---a serialized block*

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `result` | string (hex)/null | Required<br>(exactly 1 | "The requested block as a serialized block, encoded as hex, or JSON `null` if an error occurred


>Get the same block in JSON:

```cli
dash-cli -testnet getblock \
  0000000037955fcc39af8b1ae75914ffb422313c0fca7eba96a1ac99c2e57f84
```


```json
{
  "hash": "0000000037955fcc39af8b1ae75914ffb422313c0fca7eba96a1ac99c2e57f84",
  "confirmations": 3,
  "size": 377,
  "height": 4612,
  "version": 536870913,
  "merkleroot": "c4970326400177ce67ec582425a698b85ae03cae2b0d168e87eed697f1388e4b",
  "tx": [
    "c4970326400177ce67ec582425a698b85ae03cae2b0d168e87eed697f1388e4b"
  ],
  "time": 1507208925,
  "mediantime": 1507208645,
  "nonce": 1449878272,
  "bits": "1d00dda1",
  "difficulty": 1.155066358813473,
  "chainwork": "000000000000000000000000000000000000000000000000000001c3e86f0f04",
  "previousblockhash": "00000000bf8dd4935f3f03515b0fb1c38d821c8ca6b498ff81480c0a9a71f511",
  "nextblockhash": "0000000028817c7fce55d802f3647640600535a983d00e16076f284ec6cb001b"
}
```

*Result (if format was `true` or omitted)---a JSON block*

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `result` | object/null | Required<br>(exactly 1) | An object containing the requested block, or JSON `null` if an error occurred
| →<br>`hash` |string (hex) |Required<br>(exactly 1) | The hash of this block's block header encoded as hex in RPC byte order.  This is the same as the hash provided in parameter #1
| →<br>`confirmations` | number (int) | Required<br>(exactly 1) | The number of confirmations the transactions in this block have, starting at 1 when this block is at the tip of the best block chain.  This score will be -1 if the the block is not part of the best block chain"
| →<br>`size` | number (int) | Required<br>(exactly 1) | The size of this block in serialized block format, counted in bytes"
| →<br>`height` | number (int) | Required<br>(exactly 1) | The height of this block on its block chain"
| →<br>`version` | number (int) | Required<br>(exactly 1) | This block's version number.  See [block version numbers][section block versions]"
| →<br>`merkleroot` | string (hex) | Required<br>(exactly 1) | The merkle root for this block, encoded as hex in RPC byte order"
| →<br>`tx` | array | Required<br>(exactly 1) | An array containing the TXIDs of all transactions in this block.  The transactions appear in the array in the same order they appear in the serialized block"
| → →<br>TXID | string (hex) | Required<br>(1 or more) | The TXID of a transaction in this block, encoded as hex in RPC byte order"
| →<br>`time` | number (int) | Required<br>(exactly 1) | The value of the *time* field in the block header, indicating approximately when the block was created"
| →<br>`mediantime` | number (int) | Required<br>(exactly 1) | *Added in Bitcoin Core 0.12.0*<br><br>The median block time in Unix epoch time"  
| →<br>`nonce` | number (int) | Required<br>(exactly 1) | The nonce which was successful at turning this particular block into one that could be added to the best block chain"
| →<br>`bits` | string (hex) | Required<br>(exactly 1) | The value of the *nBits* field in the block header, indicating the target threshold this block's header had to pass"
| →<br>`difficulty` | number (real) | Required<br>(exactly 1) | The estimated amount of work done to find this block relative to the estimated amount of work done to find block 0"
| →<br>`chainwork` | string (hex) | Required<br>(exactly 1) | The estimated number of block header hashes miners had to check from the genesis block to this block, encoded as big-endian hex"
| →<br>`previousblockhash` | string (hex) | Optional<br>(0 or 1) | The hash of the header of the previous block, encoded as hex in RPC byte order.  Not returned for genesis block"
| →<br>`nextblockhash` | string (hex) | Optional<br>(0 or 1) | The hash of the next block on the best block chain, if known, encoded as hex in RPC byte order"
