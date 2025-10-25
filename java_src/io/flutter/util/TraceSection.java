package io.flutter.util;

import k1.a;
/* loaded from: classes2.dex */
public final class TraceSection implements AutoCloseable {
    private TraceSection(String str) {
        begin(str);
    }

    public static void begin(String str) {
        a.c(cropSectionName(str));
    }

    public static void beginAsyncSection(String str, int i10) {
        a.a(cropSectionName(str), i10);
    }

    private static String cropSectionName(String str) {
        if (str.length() >= 124) {
            return str.substring(0, 124) + "...";
        }
        return str;
    }

    public static void end() {
        a.f();
    }

    public static void endAsyncSection(String str, int i10) {
        a.d(cropSectionName(str), i10);
    }

    public static TraceSection scoped(String str) {
        return new TraceSection(str);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        end();
    }
}
