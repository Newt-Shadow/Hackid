package com.google.gson;

import java.util.Objects;
/* loaded from: classes.dex */
public class d {

    /* renamed from: d  reason: collision with root package name */
    public static final d f9107d = new d("", "", false);

    /* renamed from: e  reason: collision with root package name */
    public static final d f9108e = new d("\n", "  ", true);

    /* renamed from: a  reason: collision with root package name */
    private final String f9109a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9110b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f9111c;

    private d(String str, String str2, boolean z10) {
        Objects.requireNonNull(str, "newline == null");
        Objects.requireNonNull(str2, "indent == null");
        if (str.matches("[\r\n]*")) {
            if (str2.matches("[ \t]*")) {
                this.f9109a = str;
                this.f9110b = str2;
                this.f9111c = z10;
                return;
            }
            throw new IllegalArgumentException("Only combinations of spaces and tabs are allowed in indent.");
        }
        throw new IllegalArgumentException("Only combinations of \\n and \\r are allowed in newline.");
    }

    public String a() {
        return this.f9110b;
    }

    public String b() {
        return this.f9109a;
    }

    public boolean c() {
        return this.f9111c;
    }
}
