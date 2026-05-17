# 🪐 Saturn: Legacy Script Analysis

<p align="center">
  <img src="https://img.shields.io/badge/Environment-Kali%20Linux-blueviolet?style=for-the-badge&logo=kali-linux&logoColor=white" alt="Kali Linux Badge">
  <img src="https://img.shields.io/badge/Target-Windows%20XP-blue?style=for-the-badge&logo=windows&logoColor=white" alt="Windows Badge">
  <img src="https://img.shields.io/badge/Status-Defanged%20/%20Obsolescent-red?style=for-the-badge" alt="Status Badge">
  <img src="https://img.shields.io/badge/License-MIT-green?style=for-the-badge" alt="License Badge">
</p>

---

## 📋 Overview

Welcome to **Saturn**. This repository is dedicated to the historical research and technical breakdown of legacy automation scripts (`.bat`) commonly found in early-2000s systems. 

> [!NOTE]
> This project breaks down how vintage Windows NT command structures functioned, why they are entirely obsolete on modern infrastructure, and how current OS security frameworks handle them.

---

## 🔍 Technical Breakdown of `sat.bat`

The script executes in three distinct phases. Below is a structured analysis of its mechanics:

| Execution Phase | Intended Action | Modern OS Behavior | Security Barrier |
| :--- | :--- | :--- | :--- |
| **1. Registry Wipe** | Delete `.exe` & `.dll` associations in `HKCR` | Fails immediately with `Access Denied` error | **UAC & Integrity Levels** (Requires TrustedInstaller) |
| **2. Boot Sabotage** | Strip attributes and delete `ntldr` / `boot.ini` | Fails; files do not exist on modern machines | **UEFI & BCD Architecture** (Legacy boot files are dead) |
| **3. Disruption** | Trigger a rapid forced system shutdown (`shutdown -s -t 7`) | Gracefully powers down or restarts the machine | **Native OS Function** (No structural damage caused) |

---

## 🛠️ Code Mechanics Deep-Dive

### 🛡️ Phase 1: File Association Destruction
```batch
START reg delete HKCR/.exe
START reg delete HKCR/.dll
The Goal: Disables the OS from knowing how to launch any application or system executable.



💾 Phase 2: Core Boot Deletion
Code snippet
attrib -r -s -h c:\ntldr
del c:\ntldr
The Goal: Break the operating system's ability to initialize on the next reboot.


🧪 Laboratory Environment
Analysis Host: Kali Linux 2026.x

Target Profile: Windows NT 5.1 Architecture Simulation

Artifact Integrity: Defanged via signature mismatch and environment incompatibility.

📜 License
This project is open-source and maintained under the MIT License.
