import re


def getInt(string, default = 0):
    if len(string) == 0:
        return default
    
    return int(string)

def safeEscapeString(str: str):
    return str.replace('"','\\"')