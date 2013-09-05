# System Security

## Grading

- Midterm, Final, Project
-  128      128     144   = 400

## Packet Watch
- ICMP: Internet Control Message Protocol
- Used for reporting error conditions and issuing and responding to requests

## Common Attacks
- Win NT would redirect icmp redirect packets to itself.
- Smurf Attack: ICMP echo req sent to broadcast address.
   - All hosts reply to spoofed source. Use a bigger payload each time.
- Tribe Flood Network (TFN)
   - Another DOS attack that uses ICMP. (But with DDOS)
   - cert.org IN-99-07. Attack is done/started with ICMP echo reply
- Loki
   - Uses ICMP as a tunneling protocol for a convert channel.
   - Loki2 supports unencrpted, xor, and blowfish encryption
   - phrack.com issue 49 article 6

## Homework
- Prepate similarity and difference lists between TFN and trinoo. 
   - Bring to class, how are they similar/different?
- Lookup Loki2 and the project iodine, similaries and differences
   - for thursday

## TCP
- Three-way handshake
- FIN teardown process (not a three-way teardown)

## FIN Scans
- nmap -sF, rfc793, closed ports should respond with a reset/ack
- listening ports should not respond  (try this)

## Frag and Jolt2
- Certain win98, NT, and 2000 boxes will freak out when they dont
  get the initial 0 offset fragment. 
- Send it packets with high fragment parts
- Jolt2 - send it fragments close from the end (buf overflow)

## Teardrop
- Leave a hole in the middle of a fragmented packet, give it overlapping
  data for what is already there

## Land Attack
- Trying to get a packet inside a network so it stays in the network
  causing harm

## Backscatter
- RFC 1122 dictates that icmp error messages can not generate another 
  icmp error message. 
- Forged source address as your address.

## TCP Anomalous Flag Combinations
- SFP (SYN, FIN, PUSH) on Win98 gladly responds with SA (Syn ACK)
- But SFP makes no sense 

## Echo-Chargen Loop 
- Echo port - 7, chargen - 19
- Packet is forged to bounce between victims echo and chargen ports.

## WinNuke
- First packet has URG flag set. Then a RST is sent and it would BSOD. 

