package androidx.appcompat.widget;
/* loaded from: classes.dex */
class y0 {

    /* renamed from: a  reason: collision with root package name */
    private int f1717a = 0;

    /* renamed from: b  reason: collision with root package name */
    private int f1718b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f1719c = Integer.MIN_VALUE;

    /* renamed from: d  reason: collision with root package name */
    private int f1720d = Integer.MIN_VALUE;

    /* renamed from: e  reason: collision with root package name */
    private int f1721e = 0;

    /* renamed from: f  reason: collision with root package name */
    private int f1722f = 0;

    /* renamed from: g  reason: collision with root package name */
    private boolean f1723g = false;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1724h = false;

    public int a() {
        if (this.f1723g) {
            return this.f1717a;
        }
        return this.f1718b;
    }

    public int b() {
        return this.f1717a;
    }

    public int c() {
        return this.f1718b;
    }

    public int d() {
        if (this.f1723g) {
            return this.f1718b;
        }
        return this.f1717a;
    }

    public void e(int i10, int i11) {
        this.f1724h = false;
        if (i10 != Integer.MIN_VALUE) {
            this.f1721e = i10;
            this.f1717a = i10;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.f1722f = i11;
            this.f1718b = i11;
        }
    }

    public void f(boolean z10) {
        if (z10 == this.f1723g) {
            return;
        }
        this.f1723g = z10;
        if (this.f1724h) {
            if (z10) {
                int i10 = this.f1720d;
                if (i10 == Integer.MIN_VALUE) {
                    i10 = this.f1721e;
                }
                this.f1717a = i10;
                int i11 = this.f1719c;
                if (i11 == Integer.MIN_VALUE) {
                    i11 = this.f1722f;
                }
                this.f1718b = i11;
                return;
            }
            int i12 = this.f1719c;
            if (i12 == Integer.MIN_VALUE) {
                i12 = this.f1721e;
            }
            this.f1717a = i12;
            int i13 = this.f1720d;
            if (i13 == Integer.MIN_VALUE) {
                i13 = this.f1722f;
            }
            this.f1718b = i13;
            return;
        }
        this.f1717a = this.f1721e;
        this.f1718b = this.f1722f;
    }

    public void g(int i10, int i11) {
        this.f1719c = i10;
        this.f1720d = i11;
        this.f1724h = true;
        if (this.f1723g) {
            if (i11 != Integer.MIN_VALUE) {
                this.f1717a = i11;
            }
            if (i10 != Integer.MIN_VALUE) {
                this.f1718b = i10;
                return;
            }
            return;
        }
        if (i10 != Integer.MIN_VALUE) {
            this.f1717a = i10;
        }
        if (i11 != Integer.MIN_VALUE) {
            this.f1718b = i11;
        }
    }
}
