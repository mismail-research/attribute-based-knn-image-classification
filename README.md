# Attribute-Based KNN Image Classification

This repository contains the MATLAB implementation of the Attribute-Based KNN approach for image classification using handcrafted features.

## Files
- `KNN_Classifier.m`: Script for executing KNN classification.
- `features_dataset.xlsx`: Dataset of handcrafted attributes (color, shape, texture, pattern) used for classification experiments.
- `LICENSE`: Copyright and usage rights.
- `README.md`: Project description and usage guide.

## Usage
1. Open MATLAB.
2. Ensure `features_dataset.xlsx` is in the same directory as `KNN_Classifier.m`.
3. Run:
   ```matlab
   KNN_Classifier
   ```

### Reproducing Experiments
- Modify `k` values, distance metrics (Euclidean, Cityblock, Cosine, Correlation), or classification rules in `KNN_Classifier.m` to replicate variations described in the paper.
- Refer to the methodology section of the paper for parameter settings used in experiments.

## License
This project is licensed under the MIT License. See the LICENSE file for details.
