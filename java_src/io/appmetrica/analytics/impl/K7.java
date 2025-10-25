package io.appmetrica.analytics.impl;
/* loaded from: classes2.dex */
public final class K7 {

    /* renamed from: a  reason: collision with root package name */
    public final Ua f18478a;

    /* renamed from: b  reason: collision with root package name */
    public String f18479b = "";

    public K7(Ua ua2) {
        this.f18478a = ua2;
    }

    public final void a(String str, boolean z10) {
        String str2;
        if (str != null) {
            if (str.length() > 0) {
                str2 = str;
            } else {
                str2 = null;
            }
            if (str2 != null && !kotlin.jvm.internal.m.a(this.f18479b, str)) {
                this.f18479b = str;
                this.f18478a.a(str, z10);
            }
        }
    }
}
