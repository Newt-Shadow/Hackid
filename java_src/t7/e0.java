package t7;

import t7.g0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e0 extends g0.c {

    /* renamed from: a  reason: collision with root package name */
    private final String f30287a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30288b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f30289c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e0(String str, String str2, boolean z10) {
        if (str != null) {
            this.f30287a = str;
            if (str2 != null) {
                this.f30288b = str2;
                this.f30289c = z10;
                return;
            }
            throw new NullPointerException("Null osCodeName");
        }
        throw new NullPointerException("Null osRelease");
    }

    @Override // t7.g0.c
    public boolean b() {
        return this.f30289c;
    }

    @Override // t7.g0.c
    public String c() {
        return this.f30288b;
    }

    @Override // t7.g0.c
    public String d() {
        return this.f30287a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0.c)) {
            return false;
        }
        g0.c cVar = (g0.c) obj;
        if (this.f30287a.equals(cVar.d()) && this.f30288b.equals(cVar.c()) && this.f30289c == cVar.b()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = (((this.f30287a.hashCode() ^ 1000003) * 1000003) ^ this.f30288b.hashCode()) * 1000003;
        if (this.f30289c) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        return hashCode ^ i10;
    }

    public String toString() {
        return "OsData{osRelease=" + this.f30287a + ", osCodeName=" + this.f30288b + ", isRooted=" + this.f30289c + "}";
    }
}
