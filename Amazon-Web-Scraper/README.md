# Amazon Web Scraper Project

## Overview
This project is a Python-based web scraper designed to monitor product prices on Amazon. It automates the process of checking prices and can be configured to send email notifications when a price drops below a certain threshold.

## Features
* **Automated Data Extraction:** Uses BeautifulSoup to parse HTML and extract product titles and prices.
* **Data Storage:** Automatically saves captured data into a CSV file for long-term tracking.
* **Price Monitoring:** Includes logic to compare current prices against target price points.

## Tools Used
* **Python**
* **BeautifulSoup4**
* **Pandas**
* **smtplib** (for email alerts)
