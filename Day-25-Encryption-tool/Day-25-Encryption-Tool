#!/usr/bin/env python3

import string

ALPHABET = string.ascii_letters + string.digits + string.punctuation + " "

def caesar_encrypt(text, shift):
    result = []
    for ch in text:
        if ch in ALPHABET:
            idx = ALPHABET.index(ch)
            new_idx = (idx + shift) % len(ALPHABET)
            result.append(ALPHABET[new_idx])
        else:
            result.append(ch)
    return "".join(result)

def caesar_decrypt(text, shift):
    return caesar_encrypt(text, -shift)

def main():
    print("=== Simple Encryption / Decryption Tool (Caesar Cipher) ===")
    print("1) Encrypt")
    print("2) Decrypt")
    choice = input("Choose an option (1/2): ").strip()

    if choice not in ("1", "2"):
        print("Invalid choice. Exiting.")
        return

    message = input("Enter your message: ")
    try:
        shift = int(input("Enter numeric key (e.g. 3): "))
    except ValueError:
        print("Key must be a number. Exiting.")
        return

    if choice == "1":
        output = caesar_encrypt(message, shift)
        print("\n[+] Encrypted message:")
    else:
        output = caesar_decrypt(message, shift)
        print("\n[+] Decrypted message:")

    print(output)

if __name__ == "__main__":
    main()
