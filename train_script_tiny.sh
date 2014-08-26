#!/bin/bash
for ntrees in 10; do
  for wsize in 80; do
    for targetwidth in 640; do
      for usenormals in 0; do
      ./bin/pcl_face_trainer -ntrees ${ntrees} -forest_fn ../forest_tiny_meters_imagewidth${targetwidth}_ntrees${ntrees}_wsize${wsize}_usenormals${usenormals}.txt -n_features 1000 -directory /storage/biwi_pcl_flat_tiny -use_normals ${usenormals} -num_images 3000 -wsize ${wsize} -target_width ${targetwidth}
      done
    done
  done
done
