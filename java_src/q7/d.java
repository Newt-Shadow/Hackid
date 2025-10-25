package q7;

import q7.p0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d extends p0.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f28405a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28406b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28407c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str, String str2, String str3) {
        if (str != null) {
            this.f28405a = str;
            this.f28406b = str2;
            this.f28407c = str3;
            return;
        }
        throw new NullPointerException("Null crashlyticsInstallId");
    }

    @Override // q7.p0.a
    public String c() {
        return this.f28405a;
    }

    @Override // q7.p0.a
    public String d() {
        return this.f28407c;
    }

    @Override // q7.p0.a
    public String e() {
        return this.f28406b;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p0.a)) {
            return false;
        }
        p0.a aVar = (p0.a) obj;
        if (this.f28405a.equals(aVar.c()) && ((str = this.f28406b) != null ? str.equals(aVar.e()) : aVar.e() == null)) {
            String str2 = this.f28407c;
            if (str2 == null) {
                if (aVar.d() == null) {
                    return true;
                }
            } else if (str2.equals(aVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (this.f28405a.hashCode() ^ 1000003) * 1000003;
        String str = this.f28406b;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode2 ^ hashCode) * 1000003;
        String str2 = this.f28407c;
        if (str2 != null) {
            i10 = str2.hashCode();
        }
        return i11 ^ i10;
    }

    public String toString() {
        return "InstallIds{crashlyticsInstallId=" + this.f28405a + ", firebaseInstallationId=" + this.f28406b + ", firebaseAuthenticationToken=" + this.f28407c + "}";
    }
}
