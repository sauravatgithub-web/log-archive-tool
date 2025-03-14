# log-archive-tool
This is a basic bash script to create a log-archive-tool which would simply create archive of log files present in /var/log.
This is created on a Debian based Linux system.

This file needs to be placed in the root directory.

# Command to run
./log-archive-tool /var/log

# Output
On execution a new directory will be created in the root directory with name logs-archives.
In that directory each execution will be stored as a folder with name logs-archive-{current_date}-{current_time}

This short code is a solution asked at https://roadmap.sh/projects/log-archive-tool.
