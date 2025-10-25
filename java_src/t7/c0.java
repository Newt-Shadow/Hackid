package t7;

import t7.g0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c0 extends g0.a {

    /* renamed from: a  reason: collision with root package name */
    private final String f30262a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30263b;

    /* renamed from: c  reason: collision with root package name */
    private final String f30264c;

    /* renamed from: d  reason: collision with root package name */
    private final String f30265d;

    /* renamed from: e  reason: collision with root package name */
    private final int f30266e;

    /* renamed from: f  reason: collision with root package name */
    private final n7.f f30267f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c0(String str, String str2, String str3, String str4, int i10, n7.f fVar) {
        if (str != null) {
            this.f30262a = str;
            if (str2 != null) {
                this.f30263b = str2;
                if (str3 != null) {
                    this.f30264c = str3;
                    if (str4 != null) {
                        this.f30265d = str4;
                        this.f30266e = i10;
                        if (fVar != null) {
                            this.f30267f = fVar;
                            return;
                        }
                        throw new NullPointerException("Null developmentPlatformProvider");
                    }
                    throw new NullPointerException("Null installUuid");
                }
                throw new NullPointerException("Null versionName");
            }
            throw new NullPointerException("Null versionCode");
        }
        throw new NullPointerException("Null appIdentifier");
    }

    @Override // t7.g0.a
    public String a() {
        return this.f30262a;
    }

    @Override // t7.g0.a
    public int c() {
        return this.f30266e;
    }

    @Override // t7.g0.a
    public n7.f d() {
        return this.f30267f;
    }

    @Override // t7.g0.a
    public String e() {
        return this.f30265d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0.a)) {
            return false;
        }
        g0.a aVar = (g0.a) obj;
        if (this.f30262a.equals(aVar.a()) && this.f30263b.equals(aVar.f()) && this.f30264c.equals(aVar.g()) && this.f30265d.equals(aVar.e()) && this.f30266e == aVar.c() && this.f30267f.equals(aVar.d())) {
            return true;
        }
        return false;
    }

    @Override // t7.g0.a
    public String f() {
        return this.f30263b;
    }

    @Override // t7.g0.a
    public String g() {
        return this.f30264c;
    }

    public int hashCode() {
        return ((((((((((this.f30262a.hashCode() ^ 1000003) * 1000003) ^ this.f30263b.hashCode()) * 1000003) ^ this.f30264c.hashCode()) * 1000003) ^ this.f30265d.hashCode()) * 1000003) ^ this.f30266e) * 1000003) ^ this.f30267f.hashCode();
    }

    public String toString() {
        return "AppData{appIdentifier=" + this.f30262a + ", versionCode=" + this.f30263b + ", versionName=" + this.f30264c + ", installUuid=" + this.f30265d + ", deliveryMechanism=" + this.f30266e + ", developmentPlatformProvider=" + this.f30267f + "}";
    }
}
