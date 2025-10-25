package com.yandex.metrica.modules.api;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class CommonIdentifiers {

    /* renamed from: a  reason: collision with root package name */
    private final String f14122a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14123b;

    public CommonIdentifiers(String str, String str2) {
        this.f14122a = str;
        this.f14123b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CommonIdentifiers) {
                CommonIdentifiers commonIdentifiers = (CommonIdentifiers) obj;
                return m.a(this.f14122a, commonIdentifiers.f14122a) && m.a(this.f14123b, commonIdentifiers.f14123b);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String str = this.f14122a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f14123b;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "CommonIdentifiers(uuid=" + this.f14122a + ", device=" + this.f14123b + ")";
    }
}
