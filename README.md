# storms_and_kelp

This will serve as a hub for this analysis. Below is description of the data available for this study. The main working/operating file will be "draft_analysis". Further files will be added as needed. The various output formats (word, pdf, html), are also provided in the repo. 

This data consists of beach-cast morphometric measurements that were recorded before and after two storms in 2017; at various sites around the Cape Peninsula. Solitary and clusters of Ecklonia maximia beach-cast were measured before and after the storms at several beaches around the Peninsula. No Rocky shores were sampled. Only freshly washed up individuals were sampled, and in the case of clusters the longest (largest) individual was sampled only. All measurements were recorded using a standard tape measure. The stipe length was measured from just above the holdfast to just below the primary blade and stipe circumference was measured from just above the holdfast. For the primary blade, the width was the widest part of the blade, and the primary length was the longest part of the blade. If the individual measured had an intact holdfast attached, negligible of size, the assignment was TRUE. If no holdfast was attached, the assignment was FALSE. In addition to the holdfast assignment, to differentiate between solitary and multiple individuals, the assignments YES and NO were used. The category YES indicated there was more than one individual attached, and NO indicated a solitary individual. 

The units for the relevant measurements in the "stormcast_data" file are as follows:

stipe length | cm (Measured from just above the holdfast to just below the primary blade)
stipe circumference | mm (Measured just above the holdfast)
primary length | cm (Measured along the longest part of the primary blade)
primary width | cm (Measured along the widest part of the primary blade)
holdfast | TRUE/FALSE (If holdfast is still attached the assignment is TRUE, if not FALSE)
cluster | YES/NO (If the holdfast has more than one kelp individual on it the assignment is YES, if not then NO)

