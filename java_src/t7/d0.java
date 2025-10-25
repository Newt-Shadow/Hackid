package t7;

import t7.g0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d0 extends g0.b {

    /* renamed from: a  reason: collision with root package name */
    private final int f30274a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30275b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30276c;

    /* renamed from: d  reason: collision with root package name */
    private final long f30277d;

    /* renamed from: e  reason: collision with root package name */
    private final long f30278e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f30279f;

    /* renamed from: g  reason: collision with root package name */
    private final int f30280g;

    /* renamed from: h  reason: collision with root package name */
    private final String f30281h;

    /* renamed from: i  reason: collision with root package name */
    private final String f30282i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d0(int i10, String str, int i11, long j10, long j11, boolean z10, int i12, String str2, String str3) {
        this.f30274a = i10;
        if (str != null) {
            this.f30275b = str;
            this.f30276c = i11;
            this.f30277d = j10;
            this.f30278e = j11;
            this.f30279f = z10;
            this.f30280g = i12;
            if (str2 != null) {
                this.f30281h = str2;
                if (str3 != null) {
                    this.f30282i = str3;
                    return;
                }
                throw new NullPointerException("Null modelClass");
            }
            throw new NullPointerException("Null manufacturer");
        }
        throw new NullPointerException("Null model");
    }

    @Override // t7.g0.b
    public int a() {
        return this.f30274a;
    }

    @Override // t7.g0.b
    public int b() {
        return this.f30276c;
    }

    @Override // t7.g0.b
    public long d() {
        return this.f30278e;
    }

    @Override // t7.g0.b
    public boolean e() {
        return this.f30279f;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0.b)) {
            return false;
        }
        g0.b bVar = (g0.b) obj;
        if (this.f30274a == bVar.a() && this.f30275b.equals(bVar.g()) && this.f30276c == bVar.b() && this.f30277d == bVar.j() && this.f30278e == bVar.d() && this.f30279f == bVar.e() && this.f30280g == bVar.i() && this.f30281h.equals(bVar.f()) && this.f30282i.equals(bVar.h())) {
            return true;
        }
        return false;
    }

    @Override // t7.g0.b
    public String f() {
        return this.f30281h;
    }

    @Override // t7.g0.b
    public String g() {
        return this.f30275b;
    }

    @Override // t7.g0.b
    public String h() {
        return this.f30282i;
    }

    public int hashCode() {
        int i10;
        long j10 = this.f30277d;
        long j11 = this.f30278e;
        int hashCode = (((((((((this.f30274a ^ 1000003) * 1000003) ^ this.f30275b.hashCode()) * 1000003) ^ this.f30276c) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        if (this.f30279f) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        return ((((((hashCode ^ i10) * 1000003) ^ this.f30280g) * 1000003) ^ this.f30281h.hashCode()) * 1000003) ^ this.f30282i.hashCode();
    }

    @Override // t7.g0.b
    public int i() {
        return this.f30280g;
    }

    @Override // t7.g0.b
    public long j() {
        return this.f30277d;
    }

    public String toString() {
        return "DeviceData{arch=" + this.f30274a + ", model=" + this.f30275b + ", availableProcessors=" + this.f30276c + ", totalRam=" + this.f30277d + ", diskSpace=" + this.f30278e + ", isEmulator=" + this.f30279f + ", state=" + this.f30280g + ", manufacturer=" + this.f30281h + ", modelClass=" + this.f30282i + "}";
    }
}
