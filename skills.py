#!/usr/bin/python3

import enum

class TableEntry():
    def __init__(self, name, proficiency):
        self.name = name
        self.proficiency = proficiency

class Skill(enum.Enum):
    C_CPP = TableEntry("C/C++", 90)
    PYTHON = TableEntry("Python", 90)
    JAVA = TableEntry("Java", 90)
    BASH_SHELL = TableEntry("Bash Shell", 70)
    GIT = TableEntry("Git", 70)
    ANDROID = TableEntry("Android", 50)
    MATLAB = TableEntry("Matlab", 10)
