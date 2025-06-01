# Network Topology Readme

## Overview

This topology represents a small virtualized network environment used for testing, development and learning purposes. It is hosted on a Windows 11 machine using VirtualBox.

## Components

* **ISP (Internet Service Provider):** Represents the external internet connection.
* **Router:** Connects the internal network to the ISP and routes traffic.
* **Firewall:** Secures the internal network by controlling incoming and outgoing traffic.
* **Host Machine (Windows 11):** The physical computer running VirtualBox.
* **VirtualBox:** Virtualization software hosting the virtual machines.
    * **NAT (Enp0s3):** Provides internet access to VMs but limits direct external access.
    * **Host-only Adapter (Enp0s8):** Enables communication between VMs and the host machine.
* **Ubuntu Server (liaserver - 192.168.56.10):** A virtual server providing the following services:
    * **DHCP:** Dynamically assigns IP addresses to clients.
    * **DNS:** Resolves domain names to IP addresses.
    * **Syslog:** Centralized logging server.
    * **Zabbix:** Monitoring server.
* **Ubuntu Client (liaserver2 - 192.168.56.20):** A virtual client machine configured to:
    * Obtain IP and DNS settings from the DHCP server.
    * Send logs to the central Syslog server.
    * Be monitored by the Zabbix agent.
* **SSH:** Secure Shell communication enabled between the Ubuntu Server and Client.

## Key Features

* **Virtualized Environment:** Utilizes VirtualBox for creating and managing virtual machines.
* **Centralized Services:** The Ubuntu Server provides essential network services.
* **Monitored Client:** The Ubuntu Client is actively monitored by the Zabbix server.
* **Secure Communication:** SSH provides secure communication between virtual machines.
* **Firewall Protection:** The internal network is protected by a firewall.

## Purpose

This setup is designed for:

* Learning network administration concepts.
* Testing software and services in an isolated environment.
* Developing and debugging distributed applications.
