# Rose Attack

Four Vms:

* Victim
* Legit Traffic
* Attacker Firewall
* Attacker Source

Use the source and attacker firewall to send lots of fragmented packets to overflow the victim

## TODO

* Setup a legit traffic source that hits the webserver for pages.
* Setup attacker-firewall to forward packets over to the victim and fragment certain packets
* Setup attacker to be able to send packets to the victim via the firewall
