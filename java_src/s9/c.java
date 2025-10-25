package s9;

import d9.p;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final int f29556a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f29557b;

    /* renamed from: c  reason: collision with root package name */
    private final p[] f29558c;

    public c(int i10, int[] iArr, int i11, int i12, int i13) {
        this.f29556a = i10;
        this.f29557b = iArr;
        float f10 = i11;
        float f11 = i13;
        this.f29558c = new p[]{new p(f10, f11), new p(i12, f11)};
    }

    public p[] a() {
        return this.f29558c;
    }

    public int[] b() {
        return this.f29557b;
    }

    public int c() {
        return this.f29556a;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof c) || this.f29556a != ((c) obj).f29556a) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return this.f29556a;
    }
}
