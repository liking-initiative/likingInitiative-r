# likingInitiative: the Liking Rating Database in R

Subjective liking ratings from published decision-making studies.

## Details

Data is read from versioned release files and cached locally, so a
pinned version returns the same rows however long from now, and analyses
keep working when the web service does not.

Two things to get right:

- **Cross-study comparisons must use `normalized_rating`.** Response
  scales differ between studies (0-4, 1-100, 1-870, willingness-to-pay
  in dollars), so raw `rating` values are not comparable.
  `normalized_rating` is
  `(rating - scale_min) / (scale_max - scale_min)` and always lies in
  0-1.

- **Subject ids are unique only within a dataset.** Subject `"12"` in
  two datasets is two different people; key on `dataset_code` and
  `subject_id` together.

## See also

Useful links:

- <https://liking-initiative.github.io/likingInitiative-r/>

- <https://github.com/liking-initiative/likingInitiative-r>

- Report bugs at
  <https://github.com/liking-initiative/likingInitiative-r/issues>

## Author

**Maintainer**: Kianté Fernandez <kiantefernan@gmail.com> \[copyright
holder\]
