package b3;

import android.os.Bundle;
import b3.r;
/* loaded from: classes.dex */
public final class l3 implements r {

    /* renamed from: d  reason: collision with root package name */
    public static final l3 f4205d = new l3(1.0f);

    /* renamed from: e  reason: collision with root package name */
    private static final String f4206e = y4.q0.q0(0);

    /* renamed from: f  reason: collision with root package name */
    private static final String f4207f = y4.q0.q0(1);

    /* renamed from: g  reason: collision with root package name */
    public static final r.a f4208g = new r.a() { // from class: b3.k3
        @Override // b3.r.a
        public final r fromBundle(Bundle bundle) {
            l3 c10;
            c10 = l3.c(bundle);
            return c10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final float f4209a;

    /* renamed from: b  reason: collision with root package name */
    public final float f4210b;

    /* renamed from: c  reason: collision with root package name */
    private final int f4211c;

    public l3(float f10) {
        this(f10, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ l3 c(Bundle bundle) {
        return new l3(bundle.getFloat(f4206e, 1.0f), bundle.getFloat(f4207f, 1.0f));
    }

    public long b(long j10) {
        return j10 * this.f4211c;
    }

    public l3 d(float f10) {
        return new l3(f10, this.f4210b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l3.class != obj.getClass()) {
            return false;
        }
        l3 l3Var = (l3) obj;
        if (this.f4209a == l3Var.f4209a && this.f4210b == l3Var.f4210b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((527 + Float.floatToRawIntBits(this.f4209a)) * 31) + Float.floatToRawIntBits(this.f4210b);
    }

    public String toString() {
        return y4.q0.C("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f4209a), Float.valueOf(this.f4210b));
    }

    public l3(float f10, float f11) {
        y4.a.a(f10 > 0.0f);
        y4.a.a(f11 > 0.0f);
        this.f4209a = f10;
        this.f4210b = f11;
        this.f4211c = Math.round(f10 * 1000.0f);
    }
}
