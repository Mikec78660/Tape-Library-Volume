Tape Library as a Volume
What is it?

This repo attempts to create a single mountable volume of a tape library. Using the fuse file system and a separate cache and meta data directory an entire tape library will be mounted as a single volume to the OS.
Inspiration:

This repo is based on the repo https://github.com/BDT-GER/SWIFT-TLC. I had used a portion of the repo and it worked great but unfortunately doesn't seem to be maintained anymore and it is written for very old libries and python versions. So this is my attempt to adapt it to Debian 13 and python3.10 and use the ltfs software from this repo https://github.com/LinearTapeFileSystem/ltfs.
Get involved:

I am not a programmer and will be relying heavily on AI for this project. I welcome any and all help and feedback!
Road Map:

Get a basic file system working using the 4 drives in my msl4048 tape library all mounted with ltfs.

Add the ability to mount all the tapes in the library and send mt commands to access tapes that are not currently loaded.

Add the meta directory to allow all the files in the library to be browsed even when they are not mounted with a user definable size to be stored.

Add the cache directory as a buffer for files being written to or read from tape. Add logic to allow a drive to be reserved for reading.

Add logic that will automatically move all contents of a tape to a new tape and reformat the original tape when a user definable amount of data has been deleted from the tape.

The goal is to use the ZFS file system to build the volume. The cache and special volumes being the cache and meta volumes. I don't know if this is possible but would be great if it is.
Contact:
