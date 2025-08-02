#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <syslog.h>

int main (int argc, char *argv[]) {
    // argv - program name, writefile, writestr
    // Open syslog
    openlog(argv[0], LOG_PID, LOG_USER);

    // Check if the number of arguments is correct
    // argc also includes the program name itself
    if (argc != 3) {
        // printf("Usage: %s <writefile> <writestr>\n", argv[0]);
        syslog(LOG_ERR, "Usage: %s <writefile> <writestr>\n", argv[0]);
        return 1;
    }

    FILE *file = fopen(argv[1], "w");
    if (file == NULL) {
        // printf("Error opening file\n");
        syslog(LOG_ERR, "Error opening file %s", argv[1]);
        return 1;
    }
    syslog(LOG_DEBUG, "Writing %s to %s", argv[2], argv[1]);
    fprintf(file, "%s", argv[2]);
    fclose(file);

    closelog();
    return 0;
}