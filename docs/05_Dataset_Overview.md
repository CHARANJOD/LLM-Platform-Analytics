# Dataset Overview

## Dataset Name

LLM System Ops Production Telemetry Dataset

---

## Dataset Source

- **Platform:** Hugging Face
- **Author:** Tarek Masryo
- **License:** CC BY 4.0
- **Dataset Type:** Synthetic Enterprise Telemetry Dataset

---

## Dataset Description

The dataset represents enterprise-style telemetry data generated from a Large Language Model (LLM) platform. It captures user interactions, sessions, prompt information, and user summaries. The data is organized into multiple related tables, making it suitable for SQL, Python, and Power BI analytics.

Although the dataset is synthetic, it is designed to closely resemble real-world production telemetry and is suitable for educational and portfolio projects.

---

## Dataset Files

### 1. llm_system_interactions.csv

This is the primary fact table that stores every interaction between users and the LLM platform. It includes request details, response metrics, latency, cost, token usage, feedback, and operational information.

---

### 2. llm_system_sessions_summary.csv

This table contains session-level information. Each record represents one user session and summarizes activity such as total requests, session duration, failures, and overall performance.

---

### 3. llm_system_users_summary.csv

This table stores user-level information such as account details, subscription tier, total usage, activity, and engagement.

---

### 4. llm_system_prompts_lookup.csv

This is a lookup (dimension) table containing prompt metadata, use cases, categories, and configuration information used by interactions.

---

## Dataset Relationships

The dataset follows a relational database structure.

users_summary
│
└── sessions_summary
│
└── interactions
│
└── prompts_lookup

---

## Primary Keys

- user_id
- session_id
- interaction_id
- prompt_id

---

## Foreign Keys

- session.user_id → users.user_id
- interactions.user_id → users.user_id
- interactions.session_id → sessions.session_id
- interactions.prompt_id → prompts.prompt_id

---

## Why This Dataset?

This dataset was selected because it directly supports the project objectives of analyzing user engagement, product adoption, operational performance, and platform cost optimization. Its multi-table relational structure enables comprehensive business analysis using SQL, Python, and Power BI.