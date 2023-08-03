
### About Shoreline
The Shoreline platform provides real-time monitoring, alerting, and incident automation for cloud operations. Use Shoreline to detect, debug, and automate repairs across your entire fleet in seconds with just a few lines of code.

Shoreline Agents are efficient and non-intrusive processes running in the background of all your monitored hosts. Agents act as the secure link between Shoreline and your environment's Resources, providing real-time monitoring and metric collection across your fleet. Agents can execute actions on your behalf -- everything from simple Linux commands to full remediation playbooks -- running simultaneously across all the targeted Resources.

Since Agents are distributed throughout your fleet and monitor your Resources in real time, when an issue occurs Shoreline automatically alerts your team before your operators notice something is wrong. Plus, when you're ready for it, Shoreline can automatically resolve these issues using Alarms, Actions, Bots, and other Shoreline tools that you configure. These objects work in tandem to monitor your fleet and dispatch the appropriate response if something goes wrong -- you can even receive notifications via the fully-customizable Slack integration.

Shoreline Notebooks let you convert your static runbooks into interactive, annotated, sharable web-based documents. Through a combination of Markdown-based notes and Shoreline's expressive Op language, you have one-click access to real-time, per-second debug data and powerful, fleetwide repair commands.

### What are Shoreline Op Packs?
Shoreline Op Packs are open-source collections of Terraform configurations and supporting scripts that use the Shoreline Terraform Provider and the Shoreline Platform to create turnkey incident automations for common operational issues. Each Op Pack comes with smart defaults and works out of the box with minimal setup, while also providing you and your team with the flexibility to customize, automate, codify, and commit your own Op Pack configurations.

# Check GPU Statistics
---

GPUs are frequently used to speed up highly parallel processes such as rendering or machine learning applications. This runbook contains commands that check the compute, memory utilization, and other metrics for your GPUs and helps to debug potential issues related to this.

### Parameters
```shell
export NVIDIA_VERSION="PLACEHOLDER"
```

## Debug

### Check the configuration of the graphics card
```shell
sudo lshw -C display
```

### List all NVIDIA GPUs
```shell
nvidia-smi --list-gpus
```

### Displays NVIDIA gpu info, including driver version, number of GPUs, product name, display mode, etc.
```shell
nvidia-smi -q
```

### Display gpu utilization.
```shell
nvidia-smi -q -i 0 -d UTILIZATION -l 1
```

### Display gpu performance.
```shell
nvidia-smi -q -d PERFORMANCE
```

### Display gpu clock information.
```shell
nvidia-smi -q -d CLOCK
```

### Display gpu power information.
```shell
nvidia-smi -q -d POWER
```

### Display gpu memory usage.
```shell
nvidia-smi -q -d MEMORY
```

### Display and constantly refresh all info about the NVIDIA GPU
```shell
watch -n 1 nvidia-smi
```

## Repair

### Update or install NVIDIA driver.
```shell
sudo apt-get install nvidia-driver-${NVIDIA_VERSION}
```