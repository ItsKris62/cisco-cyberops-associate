# Lab 21.2.11: Encrypting and Decrypting Data using a Hacker Tool

## Part 1: Create and Encrypt Files

Created 6 encrypted ZIP files:
- `file-1.zip` → 1-character password (`B`)
- `file-2.zip` → 2-character password (`R2`)
- `file-3.zip` → 3-character password (`0B1`)
- `file-4.zip` → 4-character password (`Y0Da`)
- `file-5.zip` → 5-character password (`C-3P0`)
- `file-6.zip` → 6-character password (`JarJar`)

Command used:
```bash
zip -e file-1.zip sample-*

fcrackzip -vul 1-6 file-6.zip
PASSWORD FOUND!!!!: pw== JarJar


Answers to Questions
Q: How long does it take to discover the password as length increases?
A: Time increases exponentially. Brute-force attacks try all combinations, so more characters = significantly more time.

Q: How long would a 6-character password take?
A: About 20–30 seconds in this lab. In real attacks, complexity (uppercase, lowercase, symbols) increases time.

Q: How long should a password be to be secure?
A: At least 12 characters, using uppercase, lowercase, numbers, and symbols. Consider passphrases like MyDogLovesPizza!2024.
