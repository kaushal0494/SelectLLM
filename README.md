# SelectLLM: Query-Aware Efficient Selection Algorithm for Large Language Models

📌 **Accepted at ACL 2025 (Findings)**  
📄 [Download PDF](https://arxiv.org/abs/2408.08545)  
🧠 *Kaushal Kumar Maurya, *KV Aditya Srivatsa, Ekaterina Kochmar

#### *Equal contribution
---

## Overview

**SelectLLM** is a query-aware algorithm that efficiently selects a lightweight subset of LLMs to respond to each query, overcoming the limitations of individual models. It achieves strong performance while significantly reducing inference latency on challenging reasoning benchmarks such as GSM8K and MMLU.

This repository contains the official implementation of the paper accepted at **ACL 2025 (Findings)**.

---

## 🔧 Getting Started

### 1. **LLM Response Generation**

To generate responses from multiple large language models:

- Navigate to the `llm_sampling/` folder.
- Run the following command:

```bash
bash llm_sampling.sh
```

This step generates the raw outputs from all the LLMs for a given set of input queries.

> 📓 **Note**: The `dev_notebook/` folder contains a collection of development notebooks for preprocessing input questions and postprocessing model responses. These are not essential for the main pipeline but can be used for experimentation and customization.

---

### 2. **Multi-label Classifier Training and Prediction**

To train and evaluate the multi-label classifier that predicts which LLMs should be selected:

- Navigate to the `classifier_training_prediction/` folder.
- Run the following command:

```bash
bash multi-label-classifier.sh
```

This step trains a multi-label classifier that learns to map input queries to a suitable subset of LLMs.

---

### 3. **Policy-Based Selection of LLMs**

To apply selection policies based on classifier predictions and generate the final LLM subset for inference:

- Open and run the notebook:

```bash
selection_policies/SelectLLM_policy.ipynb
```

This step evaluates different policies (e.g., greedy selection, top-k, budget-aware selection) to balance performance and computational efficiency.

---

## 📂 Repository Structure

```
.
├── llm_sampling/                   # Scripts for LLM response generation
├── dev_notebook/                  # Notebooks for preprocessing and postprocessing
├── classifier_training_prediction/ # Multi-label classifier training and prediction
├── selection_policies/           # Policy application on classifier outputs
└── README.md                      # Project overview and instructions
```

---

## 📌 Citation

If you find this work useful, please consider citing:

```bibtex
@inproceedings{maurya2025selectllm,
  title     = {SelectLLM: Query-Aware Efficient Selection Algorithm for Large Language Models},
  author    = {Kaushal Kumar Maurya and KV Aditya Srivatsa and Ekaterina Kochmar},
  booktitle = {Findings of the Association for Computational Linguistics: ACL 2025},
  year      = {2025}
}
```

---
