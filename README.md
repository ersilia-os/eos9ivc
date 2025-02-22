# Antituberculosis activity prediction

Prediction of the activity of small molecules against Mycobacterium tuberculosis. This model has been developed by Ersilia thanks to the data provided by the Seattle Children's (Dr.  Tanya Parish research group). In vitro activity against M. tuberculosis was measured i na single point inhibition assay (10000 molecules) and selected compounds (259) were assayed in MIC50 and MIC90 assays. Cut-offs have been determined according to the researcher's guidance.

## Identifiers

* EOS model ID: `eos9ivc`
* Slug: `antitb-seattle`

## Characteristics

* Input: `Compound`
* Input Shape: `Single`
* Task: `Classification`
* Output: `Compound`
* Output Type: `Float`
* Output Shape: `List`
* Interpretation: Probability of inhibition of M.tb in vitro in the MIC50, MIC90 and whole cell assays at cut-offs 10 and 20 uM and 50%, respectively 

## References

* [Publication](https://pubmed.ncbi.nlm.nih.gov/30650074/)
* [Source Code](https://github.com/ersilia-os/lazy-qsar)
* Ersilia contributor: [GemmaTuron](https://github.com/GemmaTuron)

## Ersilia model URLs
* [GitHub](https://github.com/ersilia-os/eos9ivc)
* [AWS S3](https://ersilia-models-zipped.s3.eu-central-1.amazonaws.com/eos9ivc.zip)
* [DockerHub](https://hub.docker.com/r/ersiliaos/eos9ivc) (AMD64)

## Citation

If you use this model, please cite the [original authors](https://pubmed.ncbi.nlm.nih.gov/30650074/) of the model and the [Ersilia Model Hub](https://github.com/ersilia-os/ersilia/blob/master/CITATION.cff).

## License

This package is licensed under a GPL-3.0 license. The model contained within this package is licensed under a GPL-3.0 license.

Notice: Ersilia grants access to these models 'as is' provided by the original authors, please refer to the original code repository and/or publication if you use the model in your research.

## About Us

The [Ersilia Open Source Initiative](https://ersilia.io) is a Non Profit Organization ([1192266](https://register-of-charities.charitycommission.gov.uk/charity-search/-/charity-details/5170657/full-print)) with the mission is to equip labs, universities and clinics in LMIC with AI/ML tools for infectious disease research.

[Help us](https://www.ersilia.io/donate) achieve our mission!