package b3;

import android.os.Bundle;
import b3.r;
/* loaded from: classes.dex */
public final class y implements r {

    /* renamed from: d  reason: collision with root package name */
    public static final y f4565d = new y(0, 0, 0);

    /* renamed from: e  reason: collision with root package name */
    private static final String f4566e = y4.q0.q0(0);

    /* renamed from: f  reason: collision with root package name */
    private static final String f4567f = y4.q0.q0(1);

    /* renamed from: g  reason: collision with root package name */
    private static final String f4568g = y4.q0.q0(2);

    /* renamed from: h  reason: collision with root package name */
    public static final r.a f4569h = new r.a() { // from class: b3.x
        @Override // b3.r.a
        public final r fromBundle(Bundle bundle) {
            y b10;
            b10 = y.b(bundle);
            return b10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f4570a;

    /* renamed from: b  reason: collision with root package name */
    public final int f4571b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4572c;

    public y(int i10, int i11, int i12) {
        this.f4570a = i10;
        this.f4571b = i11;
        this.f4572c = i12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ y b(Bundle bundle) {
        return new y(bundle.getInt(f4566e, 0), bundle.getInt(f4567f, 0), bundle.getInt(f4568g, 0));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y)) {
            return false;
        }
        y yVar = (y) obj;
        if (this.f4570a == yVar.f4570a && this.f4571b == yVar.f4571b && this.f4572c == yVar.f4572c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((527 + this.f4570a) * 31) + this.f4571b) * 31) + this.f4572c;
    }
}
