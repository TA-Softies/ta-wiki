# NoLoAD Environment Setup Guide

## Overview

This guide provides instructions for setting up NoLoAD to login to Domain Accounts without requiring local admin credentials.

## Prerequisites

- A Mac computer
- A working internet connection

## Installation Steps

### Step 0: Ensure Device can connect to the Domain Controller.

1. Make sure Device is on the "IOT" WiFi or is connected through LAN cable.
1.1. Verify connection by tracing a connection to or resolving `techlab.apiit.edu.my`
2. If unable to resolve, make sure DNS is set to `10.61.20.33`

### Step 1: Download and Install the Latest Release of NoLoAD

1. Download the latest release of [NoLoAD](https://files.nomad.menu/NoMAD-Login-AD.pkg)
2. Open and install the downloaded package

### Step 2: Install the Configuration file

1. Get the config file from [here](../../assets/NoLoAD/TL04-06_NoLoAD.mobileconfig)

### Step 3: Set-up the Lockscreen Assets

1. Get the [Zip file](../../assets/NoLoAD/LoginScreen.zip)
2. Extract and move the images to `/Library/LoginScreen`
3. Ensure all users can access by giving *Read and Write* permissions for **All Users** through the Info panel

## Post Setup Steps

### Verify Installation

1. Log out of the Current User and see if the New Login screen pops up.
2. Try to login with a Domain account on the `TECHLAB` domain.

### Access the Application

The application should now be running at:
- Web UI: http://localhost:8080
- API: http://localhost:8080/api

### Troubleshooting Common Issues

- **Connection refused errors**: Make sure Docker containers are running
- **Authentication fails**: Verify VPN connection is active
- **Missing dependencies**: Run `./gradlew dependencies` to check

### Next Steps

Proceed to the [Development Workflow Guide](./development-workflow.md) for instructions on making changes to the project.