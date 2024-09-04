![RadBench Logo](../resources/logo_font_azure.png)

# RadBench Dataset

RadBench dataset is collation of clinically relevant Radiology specific visual questions and answers (VQA) based on plain film X-ray. This VQA dataset is clinically comprehensive, covering 3 or more questions per medical imaging. The radiology images for this set are sourced from [Medpix](https://medpix.nlm.nih.gov/home) and [Radiopaedia](https://radiopaedia.org/). RadBench is curated by medical doctors with expertise in relevant fields who interpret these images as part of their clinical duties. 


![RadBench Overview](/resources/radbench_overview.jpg)

## Overview

The [RadBench dataset](https://github.com/harrison-ai/radbench/blob/main/data/radbench/radbench.csv) is formatted similarly to VQA-Rad[@Lau2018;] to ensure ease of use by Medical/Radiology communities. Some key differences are:

* **Rich set of possible answers**: The closed questions of the RadBench dataset have a set of possible answers explicitly defined.
* **Level of correctness**: The set of possible answers for given question is also ordered in terms of relative correctness. This is done to account for the fact that some options can be more incorrect than others. This ordering also helps with differential diagnosis.
* **Multi-turn Questionnaire**: Questions are ordered per case by specificity - meaning that if evaluated in the same context, they should be asked in that order. For example, "Is there a fracture in the study?" should be asked prior to "Which side is the fracture on?" as the second question implies the answer to the first.


## Why RadBench?

There has been a growing concern within computer vision and deep learning (CV & DL) communities that we have started to overfit popular existing benchmarks, such as ImageNet [@abs-2006-07159].
We share this concern and worry that Radiology foundation models perhaps are also starting to overfit on VQA-Rad [@Lau2018]. Besides, existing Radiology VQA datasets have several shortcomings:

* Some datasets have automatically generated questions and answers from existing noisy labels extracted from radiology reports. This leads to unnatural and ambiguous questions which cannot be adequately answered given the image. For instance:
    * This question `In the given Chest X-Ray, is cardiomegaly present in the upper? (please answer yes/no)` (dataset source: ProbMed)[@ProbMed2024] is anatomically impossible to answer as cardiomegaly is not divided into `upper` and `lower`. 
    * Likewise, in SLAKE [@SLAKE2021] dataset,  given the image `xmlab470/source.jpg`, question `Where is the brain non-enhancing tumor?` is asked. However the image is an axial non-contrast T2 MRI of the brain whereby answering the question of 'non-enhancing tumor' is not possible. The answer for this question is also given as `Upper Left Lobe` which is not a valid anatomical region in the brain. This should be answered as `anterior left frontal lobe`. 
* Some existing datasets have been curated by non-medical specialists, leading to questions which may be less relevant to everyday clinical work and pathology.
* Existing datasets do not include more than one image per question, whereas in radiology many studies do include more than one view. Having only one image does not allow us to evaluate the model for its ability of comparing multiple images at once, which is a very clinically relevant task.
* Existing datasets do not specify the context in which the images should be used. This is relevant to RadBench as more than one image can be used in a single question. In RadBench, the `<i>` token is used to denote the location of an image in relation to the surrounding words (more specifically tokens). This allows specific references to the images in the question e.g. "the first study" or "the second study". As a result multi-turn comparison questions can now be asked.  
* Existing datasets are not selected for clinically challenging cases where the pathology is visually subtle or rare. RadBench specifically selects a wide range of pathology in different anatomical parts with the intention of including challenging cases.  




## Acknowledgements

We thank [Medpix](https://medpix.nlm.nih.gov/home) and [Radiopaedia](https://radiopaedia.org/) and their respective editorial teams and contributors specially NIH, Frank Gaillard, Andrew Dixon, and other Radiopaedia.org contributors for creating such a rich library of cases to test radiology expertise. 
