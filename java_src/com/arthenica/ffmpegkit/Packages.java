package com.arthenica.ffmpegkit;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class Packages {
    private static final List<String> supportedExternalLibraries;

    static {
        ArrayList arrayList = new ArrayList();
        supportedExternalLibraries = arrayList;
        arrayList.add("dav1d");
        arrayList.add("fontconfig");
        arrayList.add("freetype");
        arrayList.add("fribidi");
        arrayList.add("gmp");
        arrayList.add("gnutls");
        arrayList.add("kvazaar");
        arrayList.add("mp3lame");
        arrayList.add("libass");
        arrayList.add("iconv");
        arrayList.add("libilbc");
        arrayList.add("libtheora");
        arrayList.add("libvidstab");
        arrayList.add("libvorbis");
        arrayList.add("libvpx");
        arrayList.add("libwebp");
        arrayList.add("libxml2");
        arrayList.add("opencore-amr");
        arrayList.add("openh264");
        arrayList.add("openssl");
        arrayList.add("opus");
        arrayList.add("rubberband");
        arrayList.add("sdl2");
        arrayList.add("shine");
        arrayList.add("snappy");
        arrayList.add("soxr");
        arrayList.add("speex");
        arrayList.add("srt");
        arrayList.add("tesseract");
        arrayList.add("twolame");
        arrayList.add("x264");
        arrayList.add("x265");
        arrayList.add("xvid");
        arrayList.add("zimg");
    }

    public static List<String> getExternalLibraries() {
        String nativeBuildConf = AbiDetect.getNativeBuildConf();
        ArrayList arrayList = new ArrayList();
        for (String str : supportedExternalLibraries) {
            if (!nativeBuildConf.contains("enable-" + str)) {
                if (nativeBuildConf.contains("enable-lib" + str)) {
                }
            }
            arrayList.add(str);
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static String getPackageName() {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        List<String> externalLibraries = getExternalLibraries();
        boolean contains = externalLibraries.contains("speex");
        boolean contains2 = externalLibraries.contains("fribidi");
        boolean contains3 = externalLibraries.contains("gnutls");
        boolean contains4 = externalLibraries.contains("xvid");
        boolean z15 = true;
        boolean z16 = false;
        if (contains && contains2) {
            if (contains4) {
                z10 = false;
                z11 = false;
                z13 = false;
                z12 = false;
                z14 = false;
            } else {
                z10 = false;
                z11 = false;
                z13 = false;
                z12 = false;
                z14 = false;
                z16 = true;
                z15 = false;
            }
        } else {
            if (contains) {
                z11 = true;
                z10 = false;
                z13 = false;
            } else {
                if (contains2) {
                    z10 = true;
                    z11 = false;
                } else if (contains4) {
                    if (contains3) {
                        z13 = true;
                        z10 = false;
                        z11 = false;
                        z12 = false;
                        z15 = z12;
                        z14 = z15;
                    } else {
                        z14 = true;
                        z10 = false;
                        z11 = false;
                        z13 = false;
                        z12 = false;
                        z15 = false;
                    }
                } else if (contains3) {
                    z12 = true;
                    z10 = false;
                    z11 = false;
                    z13 = false;
                    z15 = false;
                    z14 = z15;
                } else {
                    z10 = false;
                    z11 = false;
                }
                z13 = z11;
            }
            z12 = z13;
            z15 = z12;
            z14 = z15;
        }
        boolean z17 = z14;
        boolean z18 = z12;
        boolean z19 = z13;
        boolean z20 = z11;
        boolean z21 = z10;
        boolean z22 = z16;
        if (z15) {
            if (!externalLibraries.contains("dav1d") || !externalLibraries.contains("fontconfig") || !externalLibraries.contains("freetype") || !externalLibraries.contains("fribidi") || !externalLibraries.contains("gmp") || !externalLibraries.contains("gnutls") || !externalLibraries.contains("kvazaar") || !externalLibraries.contains("mp3lame") || !externalLibraries.contains("libass") || !externalLibraries.contains("iconv") || !externalLibraries.contains("libilbc") || !externalLibraries.contains("libtheora") || !externalLibraries.contains("libvidstab") || !externalLibraries.contains("libvorbis") || !externalLibraries.contains("libvpx") || !externalLibraries.contains("libwebp") || !externalLibraries.contains("libxml2") || !externalLibraries.contains("opencore-amr") || !externalLibraries.contains("opus") || !externalLibraries.contains("shine") || !externalLibraries.contains("snappy") || !externalLibraries.contains("soxr") || !externalLibraries.contains("speex") || !externalLibraries.contains("twolame") || !externalLibraries.contains("x264") || !externalLibraries.contains("x265") || !externalLibraries.contains("xvid") || !externalLibraries.contains("zimg")) {
                return "custom";
            }
            return "full-gpl";
        } else if (z22) {
            if (!externalLibraries.contains("dav1d") || !externalLibraries.contains("fontconfig") || !externalLibraries.contains("freetype") || !externalLibraries.contains("fribidi") || !externalLibraries.contains("gmp") || !externalLibraries.contains("gnutls") || !externalLibraries.contains("kvazaar") || !externalLibraries.contains("mp3lame") || !externalLibraries.contains("libass") || !externalLibraries.contains("iconv") || !externalLibraries.contains("libilbc") || !externalLibraries.contains("libtheora") || !externalLibraries.contains("libvorbis") || !externalLibraries.contains("libvpx") || !externalLibraries.contains("libwebp") || !externalLibraries.contains("libxml2") || !externalLibraries.contains("opencore-amr") || !externalLibraries.contains("opus") || !externalLibraries.contains("shine") || !externalLibraries.contains("snappy") || !externalLibraries.contains("soxr") || !externalLibraries.contains("speex") || !externalLibraries.contains("twolame") || !externalLibraries.contains("zimg")) {
                return "custom";
            }
            return "full";
        } else if (z21) {
            if (!externalLibraries.contains("dav1d") || !externalLibraries.contains("fontconfig") || !externalLibraries.contains("freetype") || !externalLibraries.contains("fribidi") || !externalLibraries.contains("kvazaar") || !externalLibraries.contains("libass") || !externalLibraries.contains("iconv") || !externalLibraries.contains("libtheora") || !externalLibraries.contains("libvpx") || !externalLibraries.contains("libwebp") || !externalLibraries.contains("snappy") || !externalLibraries.contains("zimg")) {
                return "custom";
            }
            return "video";
        } else if (z20) {
            if (!externalLibraries.contains("mp3lame") || !externalLibraries.contains("libilbc") || !externalLibraries.contains("libvorbis") || !externalLibraries.contains("opencore-amr") || !externalLibraries.contains("opus") || !externalLibraries.contains("shine") || !externalLibraries.contains("soxr") || !externalLibraries.contains("speex") || !externalLibraries.contains("twolame")) {
                return "custom";
            }
            return "audio";
        } else if (z19) {
            if (!externalLibraries.contains("gmp") || !externalLibraries.contains("gnutls") || !externalLibraries.contains("libvidstab") || !externalLibraries.contains("x264") || !externalLibraries.contains("x265") || !externalLibraries.contains("xvid")) {
                return "custom";
            }
            return "https-gpl";
        } else if (z18) {
            if (!externalLibraries.contains("gmp") || !externalLibraries.contains("gnutls")) {
                return "custom";
            }
            return "https";
        } else if (z17) {
            if (!externalLibraries.contains("libvidstab") || !externalLibraries.contains("x264") || !externalLibraries.contains("x265") || !externalLibraries.contains("xvid")) {
                return "custom";
            }
            return "min-gpl";
        } else if (externalLibraries.size() != 0) {
            return "custom";
        } else {
            return "min";
        }
    }
}
