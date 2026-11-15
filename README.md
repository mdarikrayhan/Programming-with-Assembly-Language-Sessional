# Programming with Assembly Language Sessional

8086 assembly programs for **CSE-3222 Programming with Assembly Language Sessional**, a lab course in the B.Sc. in CSE at BAUET (Bangladesh Army University of Engineering & Technology), written in 2023. Each program is a small DOS program that reads from the keyboard and prints with `INT 21h`, written and run in the emu8086 emulator.

## Contents

| Program | What it does |
| --- | --- |
| [Problem_01.asm](Problem_01.asm) | Reads one key (a digit) and prints it back on a new line |
| [Problem_02.asm](Problem_02.asm) | Asks for a name, reads it into a buffer and prints it back |
| [Problem_03.asm](Problem_03.asm) | Adds two single digits whose sum is below 10 |
| [Problem_04.asm](Problem_04.asm) | Subtracts one single digit from another (the result must not be negative) |
| [Problem_05.asm](Problem_05.asm) | Adds three single digits whose sum is below 10 |
| [Problem_06.asm](Problem_06.asm) | Adds two single digits and prints a two-digit sum when it reaches 10 or more |
| [Problem_07.asm](Problem_07.asm) | Prints 0 to 9 on one line with a `LOOP` |
| [Problem_08.asm](Problem_08.asm) | Prints 0 to 9, one per line |
| [Problem_09.asm](Problem_09.asm) | Prints a to z, one per line |
| [Problem_10.asm](Problem_10.asm) | Prints A to Z, one per line |
| [Problem_11.asm](Problem_11.asm) | Converts a lowercase letter to uppercase |
| [Problem_12.asm](Problem_12.asm) | Converts an uppercase letter to lowercase |
| [Problem_13.asm](Problem_13.asm) | Prints the larger of two single digits |
| [Problem_14.asm](Problem_14.asm) | Prints the largest of three single digits |
| [Problem_15.asm](Problem_15.asm) | Reads three class-test marks (one digit each) and prints PASS if their average is at least 3, otherwise FAIL |

## Getting started

The programs use the `.model small` layout and DOS `INT 21h` services, so they need a DOS environment. They were written for emu8086:

1. Install emu8086 from its publisher.
2. Open a `.asm` file and click **Emulate**.
3. Click **Run** and type the input in the emulator's screen window.

Numbers are read one key at a time as single digits, with no Enter between them. For example, `Problem_03.asm` prints `7` after you type `3` then `4`.

## Author

Md Arik Rayhan — [mdarikrayhan.com](https://mdarikrayhan.com)

## License

MIT. See [LICENSE](LICENSE).
