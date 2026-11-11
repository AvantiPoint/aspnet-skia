# ASP.NET Core with Skia native dependencies

Base images for ASP.NET Core applications that use SkiaSharp on Linux. Images
include the native font, graphics, image codec, and ICU libraries and enable
.NET globalization support.

## Supported tags

All tags use the `ghcr.io/avantipoint/aspnet-skia` image repository and support
`linux/amd64` and `linux/arm64`.

| .NET version | Operating system | Tags |
| --- | --- | --- |
| 10 | Ubuntu 24.04 (Noble) | `10.0-noble`, `10.0`, `10` |
| 11 | Ubuntu 26.04 (Resolute) | `11.0-resolute`, `11.0`, `11`, `latest` |

.NET 10 keeps its existing Dockerfile and tags so current consumers can remain
on Noble. .NET 11 uses Microsoft's stable `11.0-resolute` ASP.NET image; Microsoft
does not publish an `11.0-noble` image. `latest` follows .NET 11 and changes the
OS as well as the .NET version. Use an explicit version/OS tag when upgrading
needs to be deliberate.

.NET 9 is no longer built or refreshed. Existing published .NET 9 packages are
not deleted by this change.

## Build and publish

Pull requests build both image variants for both architectures without logging
in to GHCR or pushing images. Publishing runs only on `master`: for changes to
the Dockerfiles or workflow, the weekly Monday 05:00 UTC refresh, or a manual
workflow dispatch on `master`. Builds pull the current upstream base image so
security updates are included.

To validate locally without publishing (requires Docker Buildx and support for
both architectures, such as Docker Desktop or configured QEMU):

```sh
docker buildx build --pull --platform linux/amd64,linux/arm64 -f aspnet-skia.10.0-noble.Dockerfile .
docker buildx build --pull --platform linux/amd64,linux/arm64 -f aspnet-skia.11.0-resolute.Dockerfile .
```
