Expand Online Development Assessment Program
--------------------------------------------

# Level 3 Assessment

## 1. Introduction

At Expand Online we work on a variety of projects to keep improving the services we can offer to clients.
Most of the projects are SEA/SEO related, but they don't always have to be. We also have projects concerning our invoicing and reporting proceses.
We have a high standard when it comes to the code we produce and want to make sure that candidate developers meet or exceed our expectations during the recruitment process.
This is the so called "Level 3 Assessment", given to candidate Senior/Lead developers. Please read the requirements below for all the details.

We don't necessarily care how you achieve a solution to meet the given requirements, the most important thing is that you can translate it to a working concept.
Obviously your code shouldn't be too sloppy, but it's not our primary concern for this assessment.

There is no set timeframe or limit to the amount of code you write, but try to keep it simple.
Of course, it can be too simple: this assessment is meant as a showcase of what you are capable of.

## 2. Prerequisites

In order to take this assessment there are a few prerequisites. Getting these installed/configured is the first part of your assessment, but it shouldn't be too complicated.

- A working [Vagrant](http://docs.vagrantup.com/v2/installation/index.html) installation (version 1.5+ required) using [VirtualBox](https://www.virtualbox.org/wiki/Downloads) as provider
- An OS with x64 architecture support (contact us if you still have an i386 architecture or if you're unsure)
- The base box for Vagrant (using `vagrant up` inside this directory should start downloading and initializing it)
- A proper amount of coffee, energy drink or whatever keeps you going... :)

## 3. Requirements

There is a small database dump in the repository containing some data for keywords in a certain AdWords campaign.
Import this dump, it should create 3 tables with some dummy data.

You are required to build a command-line utility that takes 3 arguments:

1. The id of the AdWords campaign to parse
2. The primary date (Date X)
3. The secondary date (Date Y)

Given that the user entered a valid and active campaign id, the utility should write a CSV file containing the following information:

1. The amount of clicks, impressions and conversions on date X for each keyword in the campaign seperately.
2. The amount of clicks, impressions and conversions on date Y for each keyword in the campaign seperately.
3. The difference between date X and date Y for all those keyword properties (clicks, impressions and conversions)
   For example, if keyword #12 had 27 clicks on date X and 55 clicks on date Y, the click difference would be 28.

The CSV file should be easily importable into a spreadsheet application like Microsoft Excel.