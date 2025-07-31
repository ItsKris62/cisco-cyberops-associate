# Lab 21.1.6: Hashing Things Out

## Part 1: Hashing a Text File

### Original SHA-256 Hash

SHA256 (letter_to_grandma.txt)= deff9c9bbece44866796ff6cf21f2612fbb77aa1b2515a900bafb29be118080b

### After Changing "Grandma" -> "Grandpa"

SHA256(letter_to_grandma.txt)= 43302c4500b7c4b8e574ba27a59d83267812493c029fd054c9242f3ac73100bc


✅ **Question:** Is the new hash different?  
**Answer:** Yes. Even changing one character produces a completely different hash due to the **avalanche effect**.

### SHA-512 Hash

SHA512(letter_to_grandma.txt)= 7c35db79a06aa30ae0f6de33f2322fd419560ee9af9cedeb6e251f2f1c4e99e0bbe5d2fc32ce501468891150e3be7e288e3e568450812980c9f8288e3103a1d3


### Using `sha256sum` and `sha512sum`
```bash
sha256sum letter_to_grandma.txt
# Output: 43302c4500b7c4b8e574ba27a59d83267812493c029fd054c9242f3ac73100bc  letter_to_grandma.txt


## Question: Do the hashes match?
Answer: Yes. The hash values are identical — only the format is different (OpenSSL includes filename and algorithm).


## Hash from sample.img_SHA256.img

c56c4724c26eb0157963c0d62b76422116be31804a39c82fd44ddf0ca5013e6a

### Calculated SHA-256 of sample.img

sha256sum sample.img
# Output: c56c4724c26eb0157963c0d62b76422116be31804a39c82fd44ddf0ca5013e6a  sample.img


✅ Question: Was the file downloaded without errors?
Answer: Yes. The hashes match exactly, so the file was not corrupted or modified during download.


---

## 🧪 Step 6: Complete Lab 21.2.11 – Encrypting & Decrypting Data

Go to your workspace:
```bash
cd ~
mkdir -p Zip-Files && cd Zip-Files


## Create Sample files

---

## 🧪 Step 6: Complete Lab 21.2.11 – Encrypting & Decrypting Data

Go to your workspace:
```bash
cd ~
mkdir -p Zip-Files && cd Zip-Files


### Create encrypted ZIPs

zip -e file-1.zip sample-*
# Password: B
zip -e file-2.zip sample-*
# Password: R2
zip -e file-3.zip sample-*
# Password: 0B1
zip -e file-4.zip sample-*
# Password: Y0Da
zip -e file-5.zip sample-*
# Password: C-3P0
zip -e file-6.zip sample-*
# Password: JarJar

c. Verify files
bash


1
ls -l file-*.zip
d. Use fcrackzip to recover passwords
Install if needed:

bash


1
sudo apt update && sudo apt install fcrackzip -y
Recover passwords:

bash


1
2
3
4
5
6
fcrackzip -vul 1-4 file-1.zip    # Finds: B
fcrackzip -vul 1-4 file-2.zip    # Finds: R2
fcrackzip -vul 1-4 file-3.zip    # Finds: 0B1
fcrackzip -vul 1-4 file-4.zip    # Finds: Y0Da
fcrackzip -vul 1-5 file-5.zip    # Finds: C-3P0
fcrackzip -vul 1-6 file-6.zip    # Finds: JarJar
