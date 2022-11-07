# Draft Translation script for Kubernetes documentation

## Note
`feature/translation-script` branch is actual feature branch<br>
`feature/translation-script-demo` branch is only for demo

## Draft Translation Hands-on
### Clone & Checkout
```bash
git clone https://github.com/bart2001/website.git
git checkout feature/translation-script-demo # checkout for this branch
```

### Install Requirements
```bash
python3 -m pip install -r requirements.txt
```

### Run Demo Bash Script
You can use bash script to add arguments draft-translate.py at ease
```bash
vim draft-translate.sh 
./draft-translate.sh
```

## Description for draft-translate.py
Based on [unofficial Google Translate library](https://github.com/ssut/py-googletrans).
Additional localization work is required.
See [note on library usage](https://github.com/ssut/py-googletrans#note-on-library-usage).

The output draft translation file is created respect to the given file path and the given language.
(For example: ../content/en/docs/concepts/storage/storage-limits.md => ../content/ko/docs/concepts/storage/storage-limits.md)

```
$ ./draft-translate.py --help
Usage: draft-translate.py [OPTIONS]

  Simple program that create a draft file for localization using machine
  tranlation.

Options:
  -t, --lang TEXT      Short code (ex:ko) for Target language for draft
                       localization  [required]
  -f, --file TEXT      File path of the Source document  [required]
  -s, --src-lang TEXT  Short code (ex:en) for Source language
  --help               Show this message and exit.
  
# example
$ ./draft-translate.py --lang=ko --file=../content/en/docs/concepts/storage/storage-limits.md
```

## Some Expected Questions
### Why use googletrans==3.1.0a0 instead of stable googletrans==3.0.0
There is error on translating en -> ko when using googletrans==3.0.0

### What are supported languages? 
See [Google Cloud Translation language support](https://cloud.google.com/translate/docs/languages).

### Is bulk translation supported?
[py-googletrans supports bulk translation](https://github.com/ssut/py-googletrans#advanced-usage-bulk) but not applied to draft-translate.py yet.
Not needed for a single file translation.
If multiple file translation is needed, planning to do so.

### What happens when [py-googletrans](https://github.com/ssut/py-googletrans#how-does-this-library-work) is blocked by Google?
Might consider using other translation API or other translation opensource.
Since using translation API requires API key, open source with pre-trained model is on candidate. 

### What happens if there is no directory for target file when running script?
The script fails. You need to create target directory first.

## TODO
- give source as directory and create draft-translation for target directory and target files 
- give multiple files as source
- bulk translation for boost up translation speed
