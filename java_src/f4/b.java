package f4;

import java.util.NoSuchElementException;
/* loaded from: classes.dex */
public abstract class b implements o {

    /* renamed from: b  reason: collision with root package name */
    private final long f15755b;

    /* renamed from: c  reason: collision with root package name */
    private final long f15756c;

    /* renamed from: d  reason: collision with root package name */
    private long f15757d;

    public b(long j10, long j11) {
        this.f15755b = j10;
        this.f15756c = j11;
        f();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void c() {
        long j10 = this.f15757d;
        if (j10 >= this.f15755b && j10 <= this.f15756c) {
            return;
        }
        throw new NoSuchElementException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long d() {
        return this.f15757d;
    }

    public boolean e() {
        if (this.f15757d > this.f15756c) {
            return true;
        }
        return false;
    }

    public void f() {
        this.f15757d = this.f15755b - 1;
    }

    @Override // f4.o
    public boolean next() {
        this.f15757d++;
        return !e();
    }
}
