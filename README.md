# Antituberculosis activity prediction

Predicts whether a compound stops Mycobacterium tuberculosis growing, reporting three related readouts from a whole-cell screen. Ollinger and colleagues at the Infectious Disease Research Institute developed the high-throughput assay behind the data, measuring growth inhibition directly in bacteria rather than against an isolated target. Whole-cell activity captures permeability and efflux alongside target engagement, but gives no indication of which target is being hit.

This model was incorporated on 2023-11-24.Last packaged on 2026-08-07.

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
- **Interpretation:** Probability of Mycobacterium tuberculosis inhibition in the MIC50, MIC90 and whole-cell assays.

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| wcs_70percent | float | high | Probability of Mtb growth inhibition at a whole cell screen (WCS) at 70% |
| mic50_10um | float | high | Probability of Mtb growth inhibition at an MIC50 of 10 um |
| mic90_10um | float | high | Probability of Mtb growth inhibition at an MIC90 of 10 um |


### Source and Deployment
- **Source:** `Local`
- **Source Type:** `Internal`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos9ivc](https://hub.docker.com/r/ersiliaos/eos9ivc)
- **Docker Architecture:** `AMD64`, `ARM64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos9ivc.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos9ivc.zip)

### Resource Consumption
- **Model Size (Mb):** `7`
- **Environment Size (Mb):** `5841`
- **Image Size (Mb):** `5877.77`

**Computational Performance (seconds):**
- 10 inputs: `35.27`
- 100 inputs: `39.28`
- 10000 inputs: `886.25`

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
