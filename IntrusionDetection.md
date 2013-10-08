# Intrustion Detection Systems

## Examples in _real life_

 - Car Alarms
 - Fire Alarms
 - House Alarms
 - Surveillance Systems

## Why?

  - Stop Service Mappings
  - Port Scans
  - TCP Stack Scans
  - Deep packet inspection
  - Provide warnings to network administrator

## Worry about false alarms

  - False Positives
  - False Negatives

## Efficiency of IDS Systems

  - Accuracy: Don't mess up
  - Performance: Takes a lot of RAM, bro
  - Fault Tolerance: Resistance to attacks
  - Timeliness: Prompt alerts between attacks and notification.

## Signature Based IDS

  - Match traffic with signatures
    - sql injections
    - Large packets
    - more than n SYN packets to a host in k seconds
  - Starts to grow to a large database
  - Becomes slow or bogged down at times.
  - Blind to unknown attacks

## Anomaly Detection IDS

  - Observe traffic during normal operation
  - Create a statistical network profile
  - Look for statistically significant traffic patterns and respond
  - Doesn't rely on known attacks

## IDS Evasion

  - Attackers are familiar with popular IDS systems
  - Port scans over long periods of time
  - Leverage fragmentation timeouts and design
  - Causes IDS's to have large buffers
  - Send fragmented packers with malformed data (bad checksum)

