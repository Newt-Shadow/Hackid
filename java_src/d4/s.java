package d4;
/* loaded from: classes.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    public final Object f14942a;

    /* renamed from: b  reason: collision with root package name */
    public final int f14943b;

    /* renamed from: c  reason: collision with root package name */
    public final int f14944c;

    /* renamed from: d  reason: collision with root package name */
    public final long f14945d;

    /* renamed from: e  reason: collision with root package name */
    public final int f14946e;

    public s(Object obj) {
        this(obj, -1L);
    }

    public s a(Object obj) {
        if (this.f14942a.equals(obj)) {
            return this;
        }
        return new s(obj, this.f14943b, this.f14944c, this.f14945d, this.f14946e);
    }

    public boolean b() {
        if (this.f14943b != -1) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        if (this.f14942a.equals(sVar.f14942a) && this.f14943b == sVar.f14943b && this.f14944c == sVar.f14944c && this.f14945d == sVar.f14945d && this.f14946e == sVar.f14946e) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((((527 + this.f14942a.hashCode()) * 31) + this.f14943b) * 31) + this.f14944c) * 31) + ((int) this.f14945d)) * 31) + this.f14946e;
    }

    public s(Object obj, long j10) {
        this(obj, -1, -1, j10, -1);
    }

    public s(Object obj, long j10, int i10) {
        this(obj, -1, -1, j10, i10);
    }

    public s(Object obj, int i10, int i11, long j10) {
        this(obj, i10, i11, j10, -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public s(s sVar) {
        this.f14942a = sVar.f14942a;
        this.f14943b = sVar.f14943b;
        this.f14944c = sVar.f14944c;
        this.f14945d = sVar.f14945d;
        this.f14946e = sVar.f14946e;
    }

    private s(Object obj, int i10, int i11, long j10, int i12) {
        this.f14942a = obj;
        this.f14943b = i10;
        this.f14944c = i11;
        this.f14945d = j10;
        this.f14946e = i12;
    }
}
