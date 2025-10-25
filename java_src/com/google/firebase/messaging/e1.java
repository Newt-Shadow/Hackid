package com.google.firebase.messaging;

import android.text.TextUtils;
import android.util.Log;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
final class e1 {

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f8876d = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    /* renamed from: a  reason: collision with root package name */
    private final String f8877a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8878b;

    /* renamed from: c  reason: collision with root package name */
    private final String f8879c;

    private e1(String str, String str2) {
        this.f8877a = d(str2, str);
        this.f8878b = str;
        this.f8879c = str + "!" + str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static e1 a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("!", -1);
        if (split.length != 2) {
            return null;
        }
        return new e1(split[0], split[1]);
    }

    private static String d(String str, String str2) {
        if (str != null && str.startsWith("/topics/")) {
            Log.w("FirebaseMessaging", String.format("Format /topics/topic-name is deprecated. Only 'topic-name' should be used in %s.", str2));
            str = str.substring(8);
        }
        if (str != null && f8876d.matcher(str).matches()) {
            return str;
        }
        throw new IllegalArgumentException(String.format("Invalid topic name: %s does not match the allowed format %s.", str, "[a-zA-Z0-9-_.~%]{1,900}"));
    }

    public static e1 f(String str) {
        return new e1("S", str);
    }

    public static e1 g(String str) {
        return new e1("U", str);
    }

    public String b() {
        return this.f8878b;
    }

    public String c() {
        return this.f8877a;
    }

    public String e() {
        return this.f8879c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof e1)) {
            return false;
        }
        e1 e1Var = (e1) obj;
        if (!this.f8877a.equals(e1Var.f8877a) || !this.f8878b.equals(e1Var.f8878b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return n5.o.b(this.f8878b, this.f8877a);
    }
}
