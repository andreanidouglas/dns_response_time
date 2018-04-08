# Test the best DNS for you

Use this tool to test the best DNS server for you: 

1. just make the script executable:

```bash
chmod +x dns_time.sh
```

2. execute the script. if needed redirect the output for further analisys

```bash
./dns_time.sh > dns_test.txt
```

## Requirements 

This tool uses `dig` to evaluate the dns response time. For this, you may require additional packages to your standard Linux installation

* Debian/Ubuntu:
`apt install dnsutils`

* Fedora (rpm):
`yum install bind-utils` 

* Arch/Manjaro:
`pacman -S bind-tools`

## Optional

If you require, you can change the server list by modifying the `servers.txt` file or changing the `domains.txt` file for new or changing domains.
