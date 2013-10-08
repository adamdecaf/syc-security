# SQL Injection

Attacks exploiting the javascript and php / backend to gain access / data.

## Example

```php
$name = "loser'; delete from users;";
"select * from users where name='$name'";
// Turns into
"select * from users where name='loser'; delete from users;";
```

## Why?

- To secure systems, fuel egos, ete.
- Can be prevented usually though, just takes work.

## How?

- IDE / text editor
- Proxy / Tamper Data tool (in browser or not)

