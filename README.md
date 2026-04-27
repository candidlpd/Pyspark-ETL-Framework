# 🚀 End-to-End AI + Data Engineering Platform

## 👋 Introduction

This project demonstrates a **complete real-world AI system** that combines:

- 🏗️ Data Engineering (PySpark ETL)
- 🧠 Generative AI (RAG - Retrieval Augmented Generation)
- 🤖 Local LLM (No API required)
- 🌐 API Deployment (FastAPI)

👉 The goal is to show how raw data can be transformed into intelligent AI responses.

---

# 🧠 What This Project Does (Simple Explanation)

Think of this system like a smart assistant:

1. 📥 Data comes in (transactions, healthcare, etc.)
2. ⚙️ Data is cleaned and processed (ETL pipeline)
3. 📚 Data is stored in a searchable format (Vector DB)
4. 🤖 AI model reads relevant data
5. 💬 You ask a question → AI gives answer

---

# 🏗️ Architecture
Raw Data
↓
PySpark ETL (Bronze → Silver → Gold)
↓
Vector Database (FAISS)
↓
RAG Pipeline
↓
Local LLM (FLAN-T5)
↓
FastAPI
↓
User Query → AI Response


---

# 📂 Project Structure
Pyspark-ETL-Framework/
│
├── pipelines/ # ETL pipelines (Bronze/Silver/Gold)
├── src/utils/ # Utility functions
├── genai/
│ ├── rag/ # RAG pipeline
│ ├── vector_db/ # FAISS vector store
│
├── api/ # FastAPI application
├── data/ # Sample data
├── requirements.txt
└── README.md


---

# ⚙️ Installation (Step-by-Step)

## 1️⃣ Clone the repository

```bash
git clone https://github.com/candidlpd/Pyspark-ETL-Framework.git
cd Pyspark-ETL-Framework

2️⃣ Create virtual environment (recommended)
python -m venv venv
venv\Scripts\activate   # Windows
3️⃣ Install dependencies
pip install -r requirements.txt
🚀 Run the Project
▶️ Start the API
.\run_genai.ps1

You will see:

Uvicorn running on http://127.0.0.1:8000
🌐 Test in Browser
http://127.0.0.1:8000/query?q=fraud
✅ Example Output
{
  "response": "a customer purchased electronics worth $500"
}
🧠 How RAG Works (Simple)

RAG = Retrieval + AI

Step 1: Store data
texts = [
  "Transaction 1001: customer purchased electronics worth $500",
  "Fraud case: repeated billing from same provider"
]
Step 2: Convert to vectors

FAISS converts text into numerical vectors so the system can search efficiently.

Step 3: Ask question
fraud
Step 4: Retrieve relevant data
"Fraud case: repeated billing..."
Step 5: LLM generates answer
"Suspicious transaction detected"
🔥 Features
✅ PySpark ETL (Medallion Architecture)
✅ Vector Search (FAISS)
✅ RAG Pipeline
✅ Local LLM (No OpenAI required)
✅ FastAPI backend
✅ Fully offline AI system
⚠️ Notes
First run may download models (~1GB)
Works offline after initial setup
No API key required
Tested on Windows (PowerShell)
🚀 Future Enhancements
🔹 Mamba model for healthcare coding (CM/CPT prediction)
🔹 Streaming pipeline (Kafka + Spark)
🔹 Deployment on Azure / Kubernetes
🔹 Multi-agent AI system
👨‍💻 Author

Lal Prasad Dangal (LPD)
AI Engineer | Data Engineer | Generative AI Developer

⭐ If you like this project

Give it a ⭐ on GitHub!


---

# 🧠 WHY THIS FIX WORKS

👉 Everything is now inside **code blocks (` ``` `)** where needed  
👉 Architecture diagram will render properly  
👉 No broken formatting  

---

# 🚀 RESULT

Your GitHub now looks:

✅ Clean  
✅ Professional  
✅ Easy to follow  
✅ Recruiter-friendly  

---

# 💡 OPTIONAL NEXT (HIGH IMPACT)

If you want to make this **stand out even more**:

👉 Add:
- Architecture image diagram  
- Mamba model section  

---

If you want, I can next:

👉 **Add Mamba section + diagram to README** 🚀
