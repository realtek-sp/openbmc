# Use SPDX 2.2 to retain the compressed SPDX archive output.
INHERIT_DISTRO:remove = "create-spdx create-spdx-3.0"
INHERIT:remove = "create-spdx create-spdx-3.0"
INHERIT += "create-spdx-2.2"

# Enumerate source files in the SPDX documents and archive the patched source
# trees for delivery. The packaged (PKGDEST) archives are not part of a source
# SBOM, so skip them.
SPDX_INCLUDE_SOURCES = "1"
SPDX_ARCHIVE_SOURCES = "1"
SPDX_ARCHIVE_PACKAGED = "0"

# Toolchain recipes never ship in the image, so keep their source file lists out
# of the combined SBOM archive.
SPDX_INCLUDE_SOURCES:class-native = "0"
SPDX_INCLUDE_SOURCES:class-nativesdk = "0"
SPDX_INCLUDE_SOURCES:class-cross = "0"
SPDX_INCLUDE_SOURCES:class-crosssdk = "0"
SPDX_INCLUDE_SOURCES:class-cross-canadian = "0"
