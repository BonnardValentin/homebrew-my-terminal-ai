#!/usr/bin/env python3
import sys


def nlp_processing(command):
    if "hello" in command.lower():
        return "Hello, World!"
    return f"I don't understand: {command}"


def main():
    if len(sys.argv) > 1:
        command = " ".join(sys.argv[1:])
        if command.startswith("!!"):
            print(nlp_processing(command[2:].strip()))
        else:
            print("This is not an AI command.")
    else:
        print("Usage: !! <command>")


if __name__ == "__main__":
    main()
