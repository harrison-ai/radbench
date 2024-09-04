![RadBench Logo](docs/resources/logo_font_azure.png)
# RadBench: Radiology Benchmark Framework

[![Documentations](https://img.shields.io/badge/Documentations-blue?style=flat)](https://harrison-ai.github.io/radbench/)

## Overview

RadBench is a radiology benchmark framework developed by [Harrison.ai](https://harrison.ai/). It is designed to evaluate the performance of Harrison.ai's foundational radiology model, `harrison.rad.1`, against other competitive models in the field. The framework employs a rigorous evaluation methodology across three distinct datasets to ensure the models are thoroughly assessed for clinical relevance, accuracy, and case comprehension. These datasets are:

1. [**RadBench Dataset**](docs/datasets/radbench.md): A new visual question-answering dataset designed by Harrison.ai to benchmark radiology models.

2. [**VQA-RAD Dataset**](docs/datasets/vqa-rad.md): A visual question-answering dataset for radiology, available at [Nature Datasets](https://www.nature.com/articles/sdata2018251).

3. [**Fellowship of the Royal College of Radiologists (FRCR) 2B Examination**](docs/datasets/frcr.md): Curated for the Fellowship of the Royal College of Radiologists (FRCR) Rapids 2B exam, obtained from third parties to ensure fairness in our evaluation process.



# mkdocs dev

To launch mkdocs locally, follow these instructions:

1. Create a Python environment:
```bash
python3 -m venv .venv
. .venv/bin/activate
```

2. Install the dependencies:
```bash
make install
```

3. Start the serving endpoint:
```bash
make serve
```
