#!/usr/bin/python3

import enum

class Tool(enum.Enum):
    KEIL = "Arm Keil MDK"
    ATLASSIAN = "Atlassian Jira/Confluence/Bitbucket"
    JENKINS = "Jenkins CI"
    SPRING = "Spring Framework"
    DOT_NET = ".NET Framework"
    VISUAL_STUDIO = "Microsoft Visual Studio"
