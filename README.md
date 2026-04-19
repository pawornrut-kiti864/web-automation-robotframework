# 🚀 QA Automation Project (Robot Framework + CI/CD)

## 📌 Overview

This project demonstrates **end-to-end web test automation** using Robot Framework, integrated with a **CI/CD pipeline** to ensure fast feedback and high-quality software delivery.

The pipeline is designed using a **real-world QA strategy**:

* ⚡ Smoke tests for quick validation
* 🔁 Regression tests for full system coverage
* 🤖 Automated execution via CI/CD

---

## 🧪 Tech Stack

* Robot Framework (UI Automation)
* SeleniumLibrary
* Python 3.11
* GitHub Actions (CI/CD)
* Pabot (Parallel Execution)

---

## 📁 Project Structure

```
robot_project/
│
├── tests/
│   ├── login_test.robot
│   ├── cart_test.robot
│   └── checkout_test.robot
│
├── keywords/
│   └── common_keywords.robot
│
├── resources/
│   └── test_data.robot
│
├── config/
│   └── config.robot
│
└── .github/workflows/
    └── ci.yml
```

---

## ⚙️ CI/CD Pipeline Strategy

### 🔹 1. Smoke Tests (Fast Feedback)

* Triggered on:

  * Push to `develop`
  * Pull Request
* Runs only critical test cases (`smoke` tag)
* Provides **quick validation (~1–2 minutes)**

```bash
robot -i smoke tests/
```

---

### 🔹 2. Regression Tests (Full Coverage)

* Triggered on:

  * Scheduled run (daily)
  * Manual trigger (GitHub Actions)
* Runs all test cases in parallel using Pabot
* Ensures **full system validation**

```bash
pabot --processes 3 tests/
```

---

### 🔹 3. Manual Execution

Testers can manually trigger the pipeline and select:

* `smoke`
* `regression`

via GitHub Actions UI

---

## 🏷️ Test Tagging Strategy

| Tag        | Purpose                     |
| ---------- | --------------------------- |
| smoke      | Critical business flows     |
| regression | Full system validation      |
| login      | Authentication tests        |
| cart       | Shopping cart functionality |
| checkout   | Payment flow                |

---

## 📊 Test Reports

* Generated automatically after each run
* Includes:

  * `report.html`
  * `log.html`
  * `output.xml`

Reports are available in **GitHub Actions Artifacts**

---

## ⚡ Key Features

* Reusable keyword-driven framework
* Data-driven test execution
* Parallel execution with Pabot
* CI/CD integration for continuous testing
* Tag-based test selection

---

## 🎯 Benefits

* 🚀 Faster feedback cycle (Smoke tests)
* 🔍 Improved test coverage (Regression tests)
* ⚙️ Automated quality checks on every change
* 📈 Scalable test execution

---

## ▶️ How to Run Locally

```bash
pip install -r requirements.txt
robot tests/
```

Run specific tests:

```bash
robot -i smoke tests/
```

Run parallel:

```bash
pabot --processes 3 tests/
```

---

## 💡 Future Improvements

* Allure Dashboard integration
* Slack notifications for test results
* AI-generated test cases
* Self-healing locators

---

## 👩‍💻 Author

QA Automation Engineer with focus on:

* Automation Testing
* CI/CD Integration
* AI-assisted QA
