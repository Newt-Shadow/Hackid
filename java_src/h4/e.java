package h4;

import y4.q0;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final String f16787a;

    /* renamed from: b  reason: collision with root package name */
    public final String f16788b;

    /* renamed from: c  reason: collision with root package name */
    public final String f16789c;

    public e(String str, String str2, String str3) {
        this.f16787a = str;
        this.f16788b = str2;
        this.f16789c = str3;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (q0.c(this.f16787a, eVar.f16787a) && q0.c(this.f16788b, eVar.f16788b) && q0.c(this.f16789c, eVar.f16789c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = this.f16787a.hashCode() * 31;
        String str = this.f16788b;
        int i11 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int i12 = (hashCode + i10) * 31;
        String str2 = this.f16789c;
        if (str2 != null) {
            i11 = str2.hashCode();
        }
        return i12 + i11;
    }
}
