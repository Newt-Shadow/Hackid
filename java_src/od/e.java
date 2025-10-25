package od;

import java.util.NoSuchElementException;
import yc.c0;
/* loaded from: classes2.dex */
public final class e extends c0 {

    /* renamed from: a  reason: collision with root package name */
    private final long f27573a;

    /* renamed from: b  reason: collision with root package name */
    private final long f27574b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f27575c;

    /* renamed from: d  reason: collision with root package name */
    private long f27576d;

    public e(long j10, long j11, long j12) {
        this.f27573a = j12;
        this.f27574b = j11;
        boolean z10 = true;
        if (j12 <= 0 ? j10 < j11 : j10 > j11) {
            z10 = false;
        }
        this.f27575c = z10;
        this.f27576d = z10 ? j10 : j11;
    }

    @Override // yc.c0
    public long b() {
        long j10 = this.f27576d;
        if (j10 == this.f27574b) {
            if (this.f27575c) {
                this.f27575c = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.f27576d = this.f27573a + j10;
        }
        return j10;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f27575c;
    }
}
