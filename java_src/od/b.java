package od;

import java.util.NoSuchElementException;
import yc.b0;
/* loaded from: classes2.dex */
public final class b extends b0 {

    /* renamed from: a  reason: collision with root package name */
    private final int f27563a;

    /* renamed from: b  reason: collision with root package name */
    private final int f27564b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f27565c;

    /* renamed from: d  reason: collision with root package name */
    private int f27566d;

    public b(int i10, int i11, int i12) {
        this.f27563a = i12;
        this.f27564b = i11;
        boolean z10 = true;
        if (i12 <= 0 ? i10 < i11 : i10 > i11) {
            z10 = false;
        }
        this.f27565c = z10;
        this.f27566d = z10 ? i10 : i11;
    }

    @Override // yc.b0
    public int b() {
        int i10 = this.f27566d;
        if (i10 == this.f27564b) {
            if (this.f27565c) {
                this.f27565c = false;
            } else {
                throw new NoSuchElementException();
            }
        } else {
            this.f27566d = this.f27563a + i10;
        }
        return i10;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f27565c;
    }
}
