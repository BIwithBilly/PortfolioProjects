# 🛒 Amazon Price Tracker & Web Scraper

This Python-based automation tool monitors Amazon product prices in real-time. By combining web scraping with automated alerting, it helps users track price volatility and receive instant notifications when a product hits a target price point.

## 🌟 Star Features
* **Automated Data Extraction:** Uses `BeautifulSoup4` to parse complex Amazon HTML and extract product metadata (Titles, Prices, Timestamps).
* **Historical Price Tracking:** Automatically appends data to a local `AmazonWebScraperDataset.csv` to build a time-series record of price changes over time.
* **Smart Alerts:** Configured with `smtplib` to trigger automated email notifications when a price drops below a user-defined threshold.
* **Human-Mimicry Headers:** Implements custom `User-Agent` headers to ensure the scraper interacts with the site reliably and avoids being flagged as a basic bot.

---

## 🛠️ Tech Stack & Libraries
- **Python 3.x**
- **Requests:** For handling HTTP requests and session management.
- **BeautifulSoup4:** For DOM traversal and data parsing.
- **Pandas:** For data structuring and CSV manipulation.
- **Smtplib:** For SMTP-based email automation.

---

## 🚀 Getting Started

### 1. Prerequisites
You will need to install the following dependencies:
```pip install requests beautifulsoup4 pandas```

### 2. Configuration (Email Alerts)
To use the email notification feature, update the `send_mail()` function in the `.ipynb` file with your credentials:
# Replace with your details
server = smtplib.SMTP_SSL('smtp.gmail.com', 465)
server.login('YourEmail@gmail.com', 'YourAppPassword')

> **Note:** For Gmail, you must use an **App Password** rather than your standard account password for security.

### 3. Usage
Simply input the URL of the Amazon product you wish to track into the `URL` variable and run the main execution loop. The script is designed to run on a timer (e.g., every 24 hours) to check for updates.

---

## 📉 Example Output
The data is saved in a structured CSV format:
| Title | Price | Date |
| :--- | :--- | :--- |
| Funny Got Data MIS Data Systems T-Shirt | 16.99 | 2024-05-20 |
| Funny Got Data MIS Data Systems T-Shirt | 15.50 | 2024-05-21 |

---

## ⚖️ Disclaimer
This project is for **educational purposes only**. Please refer to Amazon's `robots.txt` and Terms of Service regarding automated data collection. Always include a delay between requests to avoid putting unnecessary load on their servers.
