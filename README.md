# Antituberculosis activity prediction

Prediction of the activity of small molecules against Mycobacterium tuberculosis. This model has been developed by Ersilia thanks to the data provided by the Seattle Children's (Dr.  Tanya Parish research group). In vitro activity against M. tuberculosis was measured in a single point inhibition assay (10000 molecules) and selected compounds (259) were assayed in MIC50 and MIC90 assays. Cut-offs have been determined according to the researcher's guidance.

This model was incorporated on 2023-11-24.

## Information
### Identifiers
- **Ersilia Identifier:** `eos9ivc`
- **Slug:** `anti-mtb-seattle`

### Domain
- **Task:** `Annotation`
- **Subtask:** `Activity prediction`
- **Biomedical Area:** `Tuberculosis`
- **Target Organism:** `Mycobacterium tuberculosis`
- **Tags:** `M.tuberculosis`, `Antimicrobial activity`, `MIC90`, `Tuberculosis`

### Input
- **Input:** `Compound`
- **Input Dimension:** `1`

### Output
- **Output Dimension:** `5`
- **Output Consistency:** `Fixed`
- **Interpretation:** Probability of inhibition of M.tb in vitro in the MIC50, MIC90 and whole cell assays at cut-offs 10 and 20 uM and 50%, respectively 

Below are the **Output Columns** of the model:
| Name | Type | Direction | Description |
|------|------|-----------|-------------|
| mic50_10um | float | high | Classification score for the minimum inhibitory concentration (MIC) of the compound that inhibits 50% of the Mtb population at 10um |
| mic50_20um | float | high | Classification score for the minimum inhibitory concentration (MIC) of the compount that inhibits 50% of the Mtb population at 20um |
| mic90_10um | float | high | Classification score for the minimum inhibitory concentration (MIC) of the compound that inhibits 90% of the Mtb population at 10um |
| mic90_20um | float | high | Classification score for the minimum inhibitory concentration (MIC) of the compound that inhibits 90% of the Mtb population at 20um |
| wcs_50_percent | float | high | Classification score for the whole cell screen (WCS) 50% inhibition concentration |


### Source and Deployment
- **Source:** `Local`
- **Source Type:** `Internal`
- **DockerHub**: [https://hub.docker.com/r/ersiliaos/eos9ivc](https://hub.docker.com/r/ersiliaos/eos9ivc)
- **Docker Architecture:** `AMD64`
- **S3 Storage**: [https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos9ivc.zip](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos9ivc.zip)

### Resource Consumption


### References
- **Source Code**: [https://github.com/ersilia-os/lazy-qsar](https://github.com/ersilia-os/lazy-qsar)
- **Publication**: [https://pubmed.ncbi.nlm.nih.gov/30650074/](https://pubmed.ncbi.nlm.nih.gov/30650074/)
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
