AMT status checker for Linux
============================

A simple tool that tells you whether AMT is enabled and provisioned on Linux systems. Requires that the mei_me driver (part of the upstream kernel) be loaded.

Building
--------

Run `make`

Running
-------

```
sudo ./mei-amt-check
```

If run on a system with no AMT, output will look like:

```
Intel AMT: DISABLED
```

If AMT is enabled but not provisioned, output will look like:

```
Intel AMT is present
AMT is unprovisioned
```

In this state, AMT is *not* vulnerable to CVE-2017-5689.

If AMT is enabled and provisioned, output will look like:

```
Intel AMT is present
AMT is provisioned
Flash: 9.5.40
Netstack:	9.5.40
AMTApps:	9.5.40
AMT:	9.5.40
Sku:	8200
VendorID:	8086
Build Number:	1892
Recovery Version:	9.5.40
Recovery Build Num:	1892
Legacy Mode:   False
```

If AMT is enabled and provisioned and the AMT version is between 6.0 and 11.2, and you have not upgraded your firmware, you are vulnerable to CVE-2017-5689. Disable AMT in your system firmware.

This tool is heavily based on mei-amt-version from samples/mei in the Linux source tree and copyright Intel Corporation.
