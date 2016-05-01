---
author:
  #description: Writer of stuff
  email: blog@uhtec.com
  github: https://github.com/devulrix
  image: /img/avatar-64x64.jpg
  name: Ulrich
  twitter: https://twitter.com/DevUlrix
  website: http://uhtec.com/
cardbackground: '#263238'
cardheaderimage: /img/demodz-header.jpg
cardthumbimage: /img/demodz-card.jpg
categories:
- project
date: 2016-02-29T20:15:51+01:00
description: A demo DC consisting of 3 Intel NUCs.
repo: https://github.com/devulrix/demo-rz
tags:
- docker
- demo-dc
- project
-
title: Data Center in a Box
#web: http://github.com/
---

My Data Center in a Box project is aimed at being able to run a small DC simulation at home or at a customer side. I use it to run workshops both internally and externally. In a lot of cases you want to test a new software/technique without the burden to utilize your own hardware or to reconfigure existing hardware. Another motivation for me where customer engagements, where you are not allowed to access an external resource like a cloud to do some demoing.

In the following, I'll describe the components of our DC and give an example configuration for our Docker workshops. Over time we found another use for our DC, we do [Online Meetups](http://www.meetup.com/de-DE/Everything-as-code-Online-Meetup) with [YouTube Live Streaming](https://www.youtube.com/channel/UC4d2lgIJa9FhQeVqUaFx1BQ).

## Hardware
The DC consists of 3 different hardware components. The basis is formed by 3 Intel NUCs NUC5i5RYH.

![Intel NUCs](http://uhtec.com/img/dc-nuc.jpg)

* CPU: Intel Core i5 1.6 Ghz
* RAM: 16 GB DDR3L
* Storage: Samsung M.2 256 GB, SAMSUNG 850 EVO 2.5" 120GB

The 3 Intel NUCs represent the servers in your DC. We use the M.2 as the primary storage. The 2.5" SSD is used for the operating systems and the data that is needed to run/boot the systems.

The network is build with the TP-Link TL-SG1016DE. We use 16 Ports so we can have up to 12 participants in our workshops that can actually do hands-on exercises.

![TP-Link switch](http://uhtec.com/img/dc-switch.jpg)

The final component of our DC is my laptop. IT is used as the master node for the DC and runs all basic DC services like, DHCP, DNS, LDAP ...

![Lenovo Laptop](http://uhtec.com/img/dc-laptop.jpg)

* CPU: Intel Core i7 2.7 Ghz
* RAM: 32 GB DDR3L
* Storage: Samsung SSD 256 GB

As of this writing the Laptop is running OpenSUSE Leap 42.1. If you're interested in the detailed setup of the master node have a look at the [GitHub repo](https://github.com/devulrix/demo-rz).

## Docker Setup

In this section I will give you a short overview of how we setup the nodes for our Docker simulations. All software versions mentioned are the ones used as of this writing. If there's a newer version. We will update the component.

![DC Docker Setup](http://uhtec.com/img/dc-docker-setup.png)

As described earlier, the laptop is the master node for our DC and provides all DC related services (DHCP, LDAP, ...). We run Centos 7.2 bare metal on the 3 NUCs. We build a [ScaleIO 2.0](http://emc.com/getscaleio) cluster utilizing the M.2 storage in the nodes. We run the Docker 1.11 daemon on each node. To be able to utilize the ScaleIO storage with our Docker containers we use the [Rex-Ray 0.3.3](http://rexray.readthedocs.io/en/stable/) volume driver. To build a cluster out of the 3 NUCs we run [Apache Mesos 0.28](http://mesos.apache.org/) on top of it.
