"The ten pillars of pragmatic Kubernetes deployments with Octopus" is a journey from an empty Kubernetes cluster and blank Octopus instance to a best practise DevOps pipeline ready to scale your enterprise deployments, and ongoing maintenance.

This book is built as an [EPUB](https://github.com/OctopusDeploy/TenPillarsK8s/releases/latest/download/tenpillarsk8s.epub) or [PDF](https://github.com/OctopusDeploy/TenPillarsK8s/releases/latest/download/tenpillarsk8s.pdf) available from the [releases](https://github.com/OctopusDeploy/TenPillarsK8s/releases) page.

A paperback copy of the book can be bought on [Amazon](https://www.amazon.com.au/dp/B0916MQ7XZ/ref=cm_sw_em_r_mt_dp_G3FG6HJQ612HMH89321H).

[Calibre](https://calibre-ebook.com/) is a good multiplatform epub reader.

## Build process

There are two build scripts in the `scripts` directory: `buildk8s.sh` and `build-k8skdp.sh`. Each script has an associated Jekyll config file.

`buildk8s.sh` is used to build the epub distributed though GitHub and Kindle.

`build-k8skdp.sh` is used to build the epub that can be used as the basis for the print book. It resizes the images so they print correctly.
