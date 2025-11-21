# Model pretrained parameters

These models have been trained using the [LazyQSAR package](https://github.com/ersilia-os/lazy-qsar)
Upon 3-fold crossvalidation on train test splits (80-20%) with balanced classes, we obtain the following performance:


| **Model**       | **Data** | **Frac Actives (%)** | **AUROC ± STDev** |
|-----------------|----------|------------------|-------------------|
| wcs_bin70         | 10002   | 1.52   |  0.81 ± 0.02 |
| mic50_bin10         | 259   | 25.48   |  0.81 ± 0.06 |
| mic90_bin10         | 259   | 15.83   |  0.84 ± 0.01 |