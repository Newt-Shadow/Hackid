package com.yandex.metrica.impl.ob;

import java.util.Arrays;
/* renamed from: com.yandex.metrica.impl.ob.d7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0477d7 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f12202a;

    /* renamed from: b  reason: collision with root package name */
    private final C0452c7 f12203b;

    public C0477d7(byte[] bArr, C0452c7 c0452c7) {
        this.f12202a = bArr;
        this.f12203b = c0452c7;
    }

    public final byte[] a() {
        return this.f12202a;
    }

    public final C0452c7 b() {
        return this.f12203b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof C0477d7) {
                C0477d7 c0477d7 = (C0477d7) obj;
                return kotlin.jvm.internal.m.a(this.f12202a, c0477d7.f12202a) && kotlin.jvm.internal.m.a(this.f12203b, c0477d7.f12203b);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        byte[] bArr = this.f12202a;
        int hashCode = (bArr != null ? Arrays.hashCode(bArr) : 0) * 31;
        C0452c7 c0452c7 = this.f12203b;
        return hashCode + (c0452c7 != null ? c0452c7.hashCode() : 0);
    }

    public String toString() {
        return "NativeCrashModel(data=" + Arrays.toString(this.f12202a) + ", handlerDescription=" + this.f12203b + ")";
    }
}
