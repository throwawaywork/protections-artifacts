rule Windows_Trojan_Rhadamanthys_21b60705 {
    meta:
        author = "Elastic Security"
        id = "21b60705-9696-43ba-a820-d8ab9c34cca2"
        fingerprint = "8a756bf4a8c9402072531aca2c29a382881c1808a790432ccac2240b35c09383"
        creation_date = "2023-03-19"
        last_modified = "2023-04-23"
        threat_name = "Windows.Trojan.Rhadamanthys"
        reference_sample = "3ba97c51ba503fa4bdcfd5580c75436bc88794b4ae883afa1d92bb0b2a0f5efe"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = "Session\\%u\\MSCTF.Asm.{%08lx-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}" wide fullword
        $a2 = "MSCTF.Asm.{%08lx-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}" wide fullword
        $a3 = " \"%s\",Options_RunDLL %s" wide fullword
        $a4 = "%%TEMP%%\\vcredist_%05x.dll" wide fullword
        $a5 = "%%APPDATA%%\\vcredist_%05x.dll" wide fullword
        $a6 = "TEQUILABOOMBOOM" wide fullword
        $a7 = "%Systemroot%\\system32\\rundll32.exe" wide fullword
    condition:
        4 of them
}

rule Windows_Trojan_Rhadamanthys_1da1c2c2 {
    meta:
        author = "Elastic Security"
        id = "1da1c2c2-90ea-4f76-aa38-666934c0aa68"
        fingerprint = "7b3830373b773be03dc6d0f030595f625a2ef0b6a83312a5b0a958c0d2e5b1c0"
        creation_date = "2023-03-28"
        last_modified = "2023-04-23"
        threat_name = "Windows.Trojan.Rhadamanthys"
        reference_sample = "9bfc4fed7afc79a167cac173bf3602f9d1f90595d4e41dab68ff54973f2cedc1"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = "%s\\tdata\\key_datas" wide fullword
        $a2 = "\\config\\loginusers.vdf" wide fullword
        $a3 = "/bin/KeePassHax.dll" ascii fullword
        $a4 = "%%APPDATA%%\\ns%04x.dll" wide fullword
        $a5 = "\\\\.\\pipe\\{%08lx-%04x-%04x-%02x%02x-%02x%02x%02x%02x%02x%02x}" wide fullword
        $a6 = " /s /n /i:\"%s,%u,%u,%u\" \"%s\"" wide fullword
        $a7 = "strbuf(%lx) reallocs: %d, length: %d, size: %d" ascii fullword
        $a8 = "SOFTWARE\\FTPWare\\CoreFTP\\Sites\\%s" wide fullword
    condition:
        6 of them
}

rule Windows_Trojan_Rhadamanthys_ae00f48c {
    meta:
        author = "Elastic Security"
        id = "ae00f48c-f420-4a23-aae7-6f2bde29593c"
        fingerprint = "8e3d13998a8e512aabf15534d61c06e0c6c51a4e8e46456538c654694310e670"
        creation_date = "2023-05-05"
        last_modified = "2023-06-13"
        threat_name = "Windows.Trojan.Rhadamanthys"
        reference_sample = "56b5ff5132ec1c5836223ced287d51a9ecee8d2b081f449245e136b1262a8714"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = { 75 30 8B 51 28 8B 41 2C 85 DB 74 03 89 53 28 85 D2 74 15 39 }
        $a2 = { 3C 65 74 50 3C 68 74 2A 3C 6E }
        $a3 = { 49 74 39 49 74 2D 49 49 74 29 49 49 74 25 49 49 74 }
    condition:
        all of them
}

rule Windows_Trojan_Rhadamanthys_cf5dd2e2 {
    meta:
        author = "Elastic Security"
        id = "cf5dd2e2-a505-4927-8653-3c9addd3ac90"
        fingerprint = "3b2bdfd45a11649deb3430044c7b707aebcf74a3745398e3db09a7465fa62a6c"
        creation_date = "2024-04-03"
        last_modified = "2024-05-08"
        threat_name = "Windows.Trojan.Rhadamanthys"
        reference_sample = "39ccc224c2c6d89d0bce3d9e2c677465cbc7524f2d2aa903f79ad26b340dec3d"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = { 33 D2 49 8B C4 49 83 C4 57 48 F7 F7 41 8A C2 46 0F B6 04 1A 33 D2 42 8D 4C 05 00 C1 E9 03 F6 E9 8A C8 49 8B C0 41 C0 E8 05 }
        $a2 = { 8A 04 19 32 03 88 04 1A 48 83 C3 01 48 83 EF 01 }
        $a3 = { 4C 01 27 48 8B 0F 48 8B 47 10 C6 04 01 00 48 83 07 01 48 8B 0F 48 8B 47 10 }
        $a4 = { 69 F6 93 01 00 01 0F B6 C0 48 83 C1 01 33 F0 8A 01 84 C0 }
    condition:
        2 of them
}

