## GetGovernanceInfo

<% summary_getGovernanceInfo="returns an object containing governance parameters." %>

The `getgovernanceinfo` RPC <%= summary_getGovernanceInfo %>

>Example from Dash Core 0.12.3

```cli
dash-cli -testnet getgovernanceinfo
```

*Parameters: none*

>Result:

```json
{
  "governanceminquorum": 1,
  "masternodewatchdogmaxseconds": 7200,
  "sentinelpingmaxseconds": 7200,
  "proposalfee": 5.00000000,
  "superblockcycle": 24,
  "lastsuperblock": 82704,
  "nextsuperblock": 82728,
  "maxgovobjdatasize": 16384
}
```

*Result---information about the governance system*

| Name | Type | Required | Description |
|------|------|----------|-------------|
| `result` | object | Required<br>(exactly 1) | Information about the governance system
| →<br>`governanceminquorum` | number (int) | Required<br>(exactly 1) | The absolute minimum number of votes needed to trigger a governance action
| →<br>`masternode`<br>`watchdogmaxseconds` | number (int) | Required<br>(exactly 1) | Sentinel watchdog expiration time in seconds
| →<br>`sentinel`<br>`pingmaxseconds` | number (int) | Required<br>(exactly 1) | *Added in Dash Core 0.12.3*<br><br> Sentinel ping expiration time in seconds
| →<br>`proposalfee` | number (int) | Required<br>(exactly 1) | The collateral transaction fee which must be paid to create a proposal in Dash
| →<br>`superblockcycle` | number (int) | Required<br>(exactly 1) | The number of blocks between superblocks
| →<br>`lastsuperblock` | number (int) | Required<br>(exactly 1) | The block number of the last superblock
| →<br>`nextsuperblock` | number (int) | Required<br>(exactly 1) | The block number of the next superblock
| →<br>`maxgovobjdatasize` | number (int) | Required<br>(exactly 1) | *Added in Dash Core 0.12.2.2*<br><br>The maximum governance object data size in bytes
