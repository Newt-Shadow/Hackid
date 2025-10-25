package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.ApiKeyUtils;
/* renamed from: io.appmetrica.analytics.impl.h5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1212h5 {

    /* renamed from: a  reason: collision with root package name */
    public final String f19716a;

    /* renamed from: b  reason: collision with root package name */
    public final String f19717b;

    public C1212h5(String str, String str2) {
        this.f19716a = str;
        this.f19717b = str2;
    }

    public final String a() {
        return ApiKeyUtils.createPartialApiKey(this.f19717b);
    }

    public final String b() {
        return this.f19717b;
    }

    public final String c() {
        return this.f19716a;
    }

    public boolean d() {
        return false;
    }

    public String e() {
        return this.f19716a + "_" + ApiKeyUtils.createPartialApiKey(this.f19717b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C1212h5 c1212h5 = (C1212h5) obj;
        String str = this.f19716a;
        if (str == null ? c1212h5.f19716a != null : !str.equals(c1212h5.f19716a)) {
            return false;
        }
        String str2 = this.f19717b;
        String str3 = c1212h5.f19717b;
        if (str2 != null) {
            return str2.equals(str3);
        }
        if (str3 == null) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        String str = this.f19716a;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = i10 * 31;
        String str2 = this.f19717b;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }

    public String toString() {
        return this.f19716a + "_" + this.f19717b;
    }
}
