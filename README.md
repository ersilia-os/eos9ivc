# Antituberculosis activity prediction

Predicts activity of small molecules against Mycobacterium tuberculosis across three related readouts. Ersilia trained LazyQSAR classifiers on data shared by Tanya Parishs group, 10,002 compounds in a single-point whole-cell screen (active at 70% inhibition) and 259 followed up in MIC50 and MIC90 assays (active at 10 uM). Five-fold out-of-fold validation gives AUROC 0.87, 0.87 and 0.84. Outputs are ranks against 50,000 drug-like molecules. Whole-cell readouts fold in permeability and efflux as well as target engagement, and point at no target.

This model was incorporated on 2023-11-24.
Last packaged on 2026-11-23.

## Information
### Identifiers
- **Ersilia Identifier:** `eos9ivc`
- **Slug:** `anti-mtb-seattle`

### Domain
- **Task:** `Annotation`
- **Subtask:** `Activity prediction`
- **Biomedical Area:** `Tuberculosis`
- **Target Organism:** `Mycobacterium tuberculosis`
- **Tags:** `Antimicrobial activity`, `MIC90`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `3`
- **Output Consistency:** `Fixed`
- **Interpretation:** Rank of predicted Mycobacterium tuberculosis inhibition (70% whole-cell growth inhibition; MIC50 and MIC90 at 10 uM) against 50,000 drug-like molecules; 0.65 is better than 99% of them.

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| wcs_70percent_rank | float | high | Rank score of the compound's predicted Mycobacterium tuberculosis growth inhibition of at least 70% in a whole-cell screen, calibrated against a reference library of 50K drug-like molecules so that 0.65 is better than 99% of them. Recommended threshold: 0.65. |
| mic50_10um_rank | float | high | Rank score of the compound's predicted Mycobacterium tuberculosis inhibition at an IC50 cut-off of 10 uM, calibrated against a reference library of 50K drug-like molecules so that 0.65 is better than 99% of them. Recommended threshold: 0.65. |
| mic90_10um_rank | float | high | Rank score of the compound's predicted Mycobacterium tuberculosis inhibition at an IC90 cut-off of 10 uM, calibrated against a reference library of 50K drug-like molecules so that 0.65 is better than 99% of them. Recommended threshold: 0.65. |


### Source and Deployment
- **Source:** `Local`
- **Source Type:** `Internal`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos9ivc](https://hub.docker.com/r/ersiliaos/eos9ivc)
- **Docker Architecture:** `AMD64`, `ARM64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos9ivc.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos9ivc.zip)
- **Apptainer**: [https://models-sif.s3.eu-north-1.amazonaws.com/eos9ivc_v3.sif](https://models-sif.s3.eu-north-1.amazonaws.com/eos9ivc_v3.sif)

### Resource Consumption
- **Model Size (Mb):** `19`
- **Environment Size (Mb):** `6954`
- **Image Size (Mb):** `3285.21`

**Computational Performance (seconds):**
- 10 inputs: `32.91`
- 100 inputs: `26.93`
- 10000 inputs: `318.98`

### References
- **Source Code**: [https://github.com/ersilia-os/lazy-qsar](https://github.com/ersilia-os/lazy-qsar)
- **Publication**: [https://doi.org/10.1371/journal.pone.0205479](https://doi.org/10.1371/journal.pone.0205479)
- **Publication Type:** `Peer reviewed`
- **Publication Year:** `2019`
- **Ersilia Contributor:** [GemmaTuron](https://github.com/GemmaTuron)

### License
This package is licensed under a [GPL-3.0](https://github.com/ersilia-os/ersilia/blob/master/LICENSE) license. The model contained within this package is licensed under a [GPL-3.0-or-later](LICENSE) license.

**Notice**: Ersilia grants access to models _as is_, directly from the original authors, please refer to the original code repository and/or publication if you use the model in your research.


## Use
To use this model locally, you need to have the [Ersilia CLI](https://github.com/ersilia-os/ersilia) installed.
The model can be **fetched** using the following command:
```bash
# fetch model from the Ersilia Model Hub
ersilia fetch eos9ivc
```
Then, you can **serve**, **run** and **close** the model as follows:
```bash
# serve the model
ersilia serve eos9ivc
# generate an example file
ersilia example -n 3 -f my_input.csv
# run the model
ersilia run -i my_input.csv -o my_output.csv
# close the model
ersilia close
```

## About Ersilia
The [Ersilia Open Source Initiative](https://ersilia.io) is a tech non-profit organization fueling sustainable research in the Global South.
Please [cite](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff) the Ersilia Model Hub if you've found this model to be useful. Always [let us know](https://github.com/ersilia-os/ersilia/issues) if you experience any issues while trying to run it.
If you want to contribute to our mission, consider [donating](https://www.ersilia.io/donate) to Ersilia!
