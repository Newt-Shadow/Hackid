package io.appmetrica.analytics.impl;
/* renamed from: io.appmetrica.analytics.impl.r4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1459r4 {

    /* renamed from: a  reason: collision with root package name */
    public final String f20490a;

    /* renamed from: b  reason: collision with root package name */
    public final Integer f20491b;

    /* renamed from: c  reason: collision with root package name */
    public final String f20492c;

    public C1459r4(String str, Integer num, String str2) {
        this.f20490a = str;
        this.f20491b = num;
        this.f20492c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1459r4.class != obj.getClass()) {
            return false;
        }
        C1459r4 c1459r4 = (C1459r4) obj;
        if (!this.f20490a.equals(c1459r4.f20490a)) {
            return false;
        }
        Integer num = this.f20491b;
        if (num == null ? c1459r4.f20491b != null : !num.equals(c1459r4.f20491b)) {
            return false;
        }
        String str = this.f20492c;
        String str2 = c1459r4.f20492c;
        if (str != null) {
            return str.equals(str2);
        }
        if (str2 == null) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        int hashCode = this.f20490a.hashCode() * 31;
        Integer num = this.f20491b;
        int i11 = 0;
        if (num != null) {
            i10 = num.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        String str = this.f20492c;
        if (str != null) {
            i11 = str.hashCode();
        }
        return i12 + i11;
    }
}
