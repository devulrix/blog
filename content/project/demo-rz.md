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

[![Intel NUCs](http://uhtec.com/img/dc-nuc.jpg)]
