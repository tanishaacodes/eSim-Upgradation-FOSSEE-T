# eSim 2.5 Installation Issues & Fixes (Ubuntu 25.04)

## Issue 1: OS Version Block
**Error:** `Unsupported Ubuntu version: 25.04`

**Fix:** Modified `install-eSim.sh` to include Ubuntu 25.04 in the version check logic.

---

## Issue 2: Empty Installer Script
**Error:** `install-eSim-24.04.sh` was 0 bytes.

**Fix:** Created `install-eSim-25.04.sh` using a modernized logic template.

---

## Issue 3: PyQt5 Metadata Failure
**Error:** `metadata-generation-failed` during pip install

**Cause:** Python 3.13 and PEP 668 restrictions

**Fix:** Replaced pip installation with:

```bash
sudo apt install python3-pyqt5
```

---

## Issue 4: KiCad PPA Incompatibility
**Error:** Repository does not have a Release file

**Fix:** Removed KiCad 6.0 PPA and used the default Ubuntu 25.04 repositories (KiCad 8.0).

---

## Issue 5: KiCad Symbols Path
**Error:** `chown: cannot access /usr/share/kicad/symbols`

**Fix:** Added conditional shell checks to verify directory existence before running ownership commands.

---

## Issue 6: Pyhdlparser Missing
**Error:** No matching distribution found

**Fix:** Installed directly from GitHub:

```bash
pip3 install https://github.com/hdl/pyhdlparser/tarball/master
```

---

## Issue 7: Missing Watchdog Module
**Error:** `ModuleNotFoundError: No module named watchdog`

**Fix:** Added the following dependency:

```bash
sudo apt install python3-watchdog
```

---

## Issue 8: Execution Path (PYTHONPATH)
**Error:** Modules not found when running from root

**Fix:** Created a bash wrapper at:

```
/usr/local/bin/esim
```

This wrapper exports the `src` directory to `PYTHONPATH` before launching eSim.

---

## Final Verification

The application was successfully launched using the `esim` command.  
Ngspice and KiCad 8.0 were verified as functional backends.
##Result photo
# eSim 2.5 Installation Issues & Fixes (Ubuntu 25.04)

## Issue 1: OS Version Block
**Error:** `Unsupported Ubuntu version: 25.04`

**Fix:** Modified `install-eSim.sh` to include Ubuntu 25.04 in the version check logic.

---

## Issue 2: Empty Installer Script
**Error:** `install-eSim-24.04.sh` was 0 bytes.

**Fix:** Created `install-eSim-25.04.sh` using a modernized logic template.

---

## Issue 3: PyQt5 Metadata Failure
**Error:** `metadata-generation-failed` during pip install

**Cause:** Python 3.13 and PEP 668 restrictions

**Fix:** Replaced pip installation with:

```bash
sudo apt install python3-pyqt5
```

---

## Issue 4: KiCad PPA Incompatibility
**Error:** Repository does not have a Release file

**Fix:** Removed KiCad 6.0 PPA and used the default Ubuntu 25.04 repositories (KiCad 8.0).

---

## Issue 5: KiCad Symbols Path
**Error:** `chown: cannot access /usr/share/kicad/symbols`

**Fix:** Added conditional shell checks to verify directory existence before running ownership commands.

---

## Issue 6: Pyhdlparser Missing
**Error:** No matching distribution found

**Fix:** Installed directly from GitHub:

```bash
pip3 install https://github.com/hdl/pyhdlparser/tarball/master
```

---

## Issue 7: Missing Watchdog Module
**Error:** `ModuleNotFoundError: No module named watchdog`

**Fix:** Added the following dependency:

```bash
sudo apt install python3-watchdog
```

---

## Issue 8: Execution Path (PYTHONPATH)
**Error:** Modules not found when running from root

**Fix:** Created a bash wrapper at:

```
/usr/local/bin/esim
```

This wrapper exports the `src` directory to `PYTHONPATH` before launching eSim.

---

## Final Verification

The application was successfully launched using the `esim` command.  
Ngspice and KiCad 8.0 were verified as functional backends.
Attached result 
# eSim 2.5 Installation Issues & Fixes (Ubuntu 25.04)

## Issue 1: OS Version Block
**Error:** `Unsupported Ubuntu version: 25.04`

**Fix:** Modified `install-eSim.sh` to include Ubuntu 25.04 in the version check logic.

---

## Issue 2: Empty Installer Script
**Error:** `install-eSim-24.04.sh` was 0 bytes.

**Fix:** Created `install-eSim-25.04.sh` using a modernized logic template.

---

## Issue 3: PyQt5 Metadata Failure
**Error:** `metadata-generation-failed` during pip install

**Cause:** Python 3.13 and PEP 668 restrictions

**Fix:** Replaced pip installation with:

```bash
sudo apt install python3-pyqt5
```

---

## Issue 4: KiCad PPA Incompatibility
**Error:** Repository does not have a Release file

**Fix:** Removed KiCad 6.0 PPA and used the default Ubuntu 25.04 repositories (KiCad 8.0).

---

## Issue 5: KiCad Symbols Path
**Error:** `chown: cannot access /usr/share/kicad/symbols`

**Fix:** Added conditional shell checks to verify directory existence before running ownership commands.

---

## Issue 6: Pyhdlparser Missing
**Error:** No matching distribution found

**Fix:** Installed directly from GitHub:

```bash
pip3 install https://github.com/hdl/pyhdlparser/tarball/master
```

---

## Issue 7: Missing Watchdog Module
**Error:** `ModuleNotFoundError: No module named watchdog`

**Fix:** Added the following dependency:

```bash
sudo apt install python3-watchdog
```

---

## Issue 8: Execution Path (PYTHONPATH)
**Error:** Modules not found when running from root

**Fix:** Created a bash wrapper at:

```
/usr/local/bin/esim
```

This wrapper exports the `src` directory to `PYTHONPATH` before launching eSim.

---

## Final Verification

The application was successfully launched using the `esim` command.  
Ngspice and KiCad 8.0 were verified as functional backends.

# eSim 2.5 Installation Issues & Fixes (Ubuntu 25.04)

## Issue 1: OS Version Block
**Error:** `Unsupported Ubuntu version: 25.04`

**Fix:** Modified `install-eSim.sh` to include Ubuntu 25.04 in the version check logic.

---

## Issue 2: Empty Installer Script
**Error:** `install-eSim-24.04.sh` was 0 bytes.

**Fix:** Created `install-eSim-25.04.sh` using a modernized logic template.

---

## Issue 3: PyQt5 Metadata Failure
**Error:** `metadata-generation-failed` during pip install

**Cause:** Python 3.13 and PEP 668 restrictions

**Fix:** Replaced pip installation with:

```bash
sudo apt install python3-pyqt5
```

---

## Issue 4: KiCad PPA Incompatibility
**Error:** Repository does not have a Release file

**Fix:** Removed KiCad 6.0 PPA and used the default Ubuntu 25.04 repositories (KiCad 8.0).

---

## Issue 5: KiCad Symbols Path
**Error:** `chown: cannot access /usr/share/kicad/symbols`

**Fix:** Added conditional shell checks to verify directory existence before running ownership commands.

---

## Issue 6: Pyhdlparser Missing
**Error:** No matching distribution found

**Fix:** Installed directly from GitHub:

```bash
pip3 install https://github.com/hdl/pyhdlparser/tarball/master
```

---

## Issue 7: Missing Watchdog Module
**Error:** `ModuleNotFoundError: No module named watchdog`

**Fix:** Added the following dependency:

```bash
sudo apt install python3-watchdog
```

---

## Issue 8: Execution Path (PYTHONPATH)
**Error:** Modules not found when running from root

**Fix:** Created a bash wrapper at:

```
/usr/local/bin/esim
```

This wrapper exports the `src` directory to `PYTHONPATH` before launching eSim.

---

## Final Verification

The application was successfully launched using the `esim` command.  
Ngspice and KiCad 8.0 were verified as functional backends.

## Result 
<img width="314" height="160" alt="image" src="https://github.com/user-attachments/assets/72d97a48-674b-4ad5-94a0-439048f007ec" />

<img width="314" height="160" alt="image" src="https://github.com/user-attachments/assets/02b414e6-8f2b-410c-844d-4eece79d556c" />
