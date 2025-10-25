package z4;

import android.os.Bundle;
import b3.r;
import y4.q0;
/* loaded from: classes.dex */
public final class a0 implements b3.r {

    /* renamed from: e  reason: collision with root package name */
    public static final a0 f33398e = new a0(0, 0);

    /* renamed from: f  reason: collision with root package name */
    private static final String f33399f = q0.q0(0);

    /* renamed from: g  reason: collision with root package name */
    private static final String f33400g = q0.q0(1);

    /* renamed from: h  reason: collision with root package name */
    private static final String f33401h = q0.q0(2);

    /* renamed from: i  reason: collision with root package name */
    private static final String f33402i = q0.q0(3);

    /* renamed from: j  reason: collision with root package name */
    public static final r.a f33403j = new r.a() { // from class: z4.z
        @Override // b3.r.a
        public final b3.r fromBundle(Bundle bundle) {
            a0 b10;
            b10 = a0.b(bundle);
            return b10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f33404a;

    /* renamed from: b  reason: collision with root package name */
    public final int f33405b;

    /* renamed from: c  reason: collision with root package name */
    public final int f33406c;

    /* renamed from: d  reason: collision with root package name */
    public final float f33407d;

    public a0(int i10, int i11) {
        this(i10, i11, 0, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ a0 b(Bundle bundle) {
        return new a0(bundle.getInt(f33399f, 0), bundle.getInt(f33400g, 0), bundle.getInt(f33401h, 0), bundle.getFloat(f33402i, 1.0f));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a0)) {
            return false;
        }
        a0 a0Var = (a0) obj;
        if (this.f33404a == a0Var.f33404a && this.f33405b == a0Var.f33405b && this.f33406c == a0Var.f33406c && this.f33407d == a0Var.f33407d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((((217 + this.f33404a) * 31) + this.f33405b) * 31) + this.f33406c) * 31) + Float.floatToRawIntBits(this.f33407d);
    }

    public a0(int i10, int i11, int i12, float f10) {
        this.f33404a = i10;
        this.f33405b = i11;
        this.f33406c = i12;
        this.f33407d = f10;
    }
}
