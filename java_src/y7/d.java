package y7;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    public final b f33032a;

    /* renamed from: b  reason: collision with root package name */
    public final a f33033b;

    /* renamed from: c  reason: collision with root package name */
    public final long f33034c;

    /* renamed from: d  reason: collision with root package name */
    public final int f33035d;

    /* renamed from: e  reason: collision with root package name */
    public final int f33036e;

    /* renamed from: f  reason: collision with root package name */
    public final double f33037f;

    /* renamed from: g  reason: collision with root package name */
    public final double f33038g;

    /* renamed from: h  reason: collision with root package name */
    public final int f33039h;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f33040a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f33041b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f33042c;

        public a(boolean z10, boolean z11, boolean z12) {
            this.f33040a = z10;
            this.f33041b = z11;
            this.f33042c = z12;
        }
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f33043a;

        /* renamed from: b  reason: collision with root package name */
        public final int f33044b;

        public b(int i10, int i11) {
            this.f33043a = i10;
            this.f33044b = i11;
        }
    }

    public d(long j10, b bVar, a aVar, int i10, int i11, double d10, double d11, int i12) {
        this.f33034c = j10;
        this.f33032a = bVar;
        this.f33033b = aVar;
        this.f33035d = i10;
        this.f33036e = i11;
        this.f33037f = d10;
        this.f33038g = d11;
        this.f33039h = i12;
    }

    public boolean a(long j10) {
        if (this.f33034c < j10) {
            return true;
        }
        return false;
    }
}
