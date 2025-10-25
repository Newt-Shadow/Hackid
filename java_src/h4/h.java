package h4;

import y4.q0;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final String f16800a;

    /* renamed from: b  reason: collision with root package name */
    public final String f16801b;

    /* renamed from: c  reason: collision with root package name */
    public final String f16802c;

    /* renamed from: d  reason: collision with root package name */
    public final String f16803d;

    /* renamed from: e  reason: collision with root package name */
    public final String f16804e;

    public h(String str, String str2, String str3, String str4, String str5) {
        this.f16800a = str;
        this.f16801b = str2;
        this.f16802c = str3;
        this.f16803d = str4;
        this.f16804e = str5;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (q0.c(this.f16800a, hVar.f16800a) && q0.c(this.f16801b, hVar.f16801b) && q0.c(this.f16802c, hVar.f16802c) && q0.c(this.f16803d, hVar.f16803d) && q0.c(this.f16804e, hVar.f16804e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int i11;
        int i12;
        int i13;
        String str = this.f16800a;
        int i14 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i15 = (527 + i10) * 31;
        String str2 = this.f16801b;
        if (str2 != null) {
            i11 = str2.hashCode();
        } else {
            i11 = 0;
        }
        int i16 = (i15 + i11) * 31;
        String str3 = this.f16802c;
        if (str3 != null) {
            i12 = str3.hashCode();
        } else {
            i12 = 0;
        }
        int i17 = (i16 + i12) * 31;
        String str4 = this.f16803d;
        if (str4 != null) {
            i13 = str4.hashCode();
        } else {
            i13 = 0;
        }
        int i18 = (i17 + i13) * 31;
        String str5 = this.f16804e;
        if (str5 != null) {
            i14 = str5.hashCode();
        }
        return i18 + i14;
    }
}
