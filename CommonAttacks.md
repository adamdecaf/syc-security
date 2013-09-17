# System Security

## Packet Watch
- ICMP: Internet Control Message Protocol
- Used for reporting error conditions and issuing and responding to request

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

## TCP Dump

```shell
  tcpdump -x -s 0 'tcp[13] & 64 == 64' # filter packets with E flag set.
  tcpdump -x -s 0 'tcp[13] > 63'       # high nibble filter
```

## Rose Attack

- Send the victim many packets that are only missing small portions
  of the whole packet. (Slightly fragmented upon reassembly)
- We can forge the source address and ports because no one will reassemble
  this packet, ever.
- Legit traffic still comes in, even during the attack
- Two attacker systems are connected to each other, where one is a 
  firewall that passes everything through, except for a really small mtu
- Firewall System: MTU=1000, will drop one fragment (iptables)
- Attcker will bombard the victim with packets, fragmented and dropped


### Links
- http://digital.net/~gandalf/rose.c
- http://www.revsys.com/writings/quicktips/nat.html
- http://digital.net/~gandalf/Rose_Frag_Attack_Explained.htm


```bash
echo 1 > /proc/sys/net/ipv4/ip_forward
/sbin/iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
/sbin/iptables -A FORWARD -i eth0 -o eth1 -m state --state RELATED,ESTABLISHED -j ACCEPT
/sbin/iptables -A FORWARD -i eth1 -o eth0 -j ACCEPT
```

```bash
# Lower MTU of interface
ifconfig eth1 mtu 1000
```


### How to

- Check the fragmented bit and which packet to drop via iptables
- http://www.stearns.org/doc/iptables-u32.v0.1.7.html
- http://en.wikipedia.org/wiki/IPv4_header#Flags

