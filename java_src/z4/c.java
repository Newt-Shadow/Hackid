package z4;

import android.os.Bundle;
import b3.r;
import java.util.Arrays;
import y4.q0;
/* loaded from: classes.dex */
public final class c implements b3.r {

    /* renamed from: f  reason: collision with root package name */
    public static final c f33408f = new c(1, 2, 3, null);

    /* renamed from: g  reason: collision with root package name */
    private static final String f33409g = q0.q0(0);

    /* renamed from: h  reason: collision with root package name */
    private static final String f33410h = q0.q0(1);

    /* renamed from: i  reason: collision with root package name */
    private static final String f33411i = q0.q0(2);

    /* renamed from: j  reason: collision with root package name */
    private static final String f33412j = q0.q0(3);

    /* renamed from: k  reason: collision with root package name */
    public static final r.a f33413k = new r.a() { // from class: z4.b
        @Override // b3.r.a
        public final b3.r fromBundle(Bundle bundle) {
            c d10;
            d10 = c.d(bundle);
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    public final int f33414a;

    /* renamed from: b  reason: collision with root package name */
    public final int f33415b;

    /* renamed from: c  reason: collision with root package name */
    public final int f33416c;

    /* renamed from: d  reason: collision with root package name */
    public final byte[] f33417d;

    /* renamed from: e  reason: collision with root package name */
    private int f33418e;

    public c(int i10, int i11, int i12, byte[] bArr) {
        this.f33414a = i10;
        this.f33415b = i11;
        this.f33416c = i12;
        this.f33417d = bArr;
    }

    public static int b(int i10) {
        if (i10 != 1) {
            if (i10 != 9) {
                return (i10 == 4 || i10 == 5 || i10 == 6 || i10 == 7) ? 2 : -1;
            }
            return 6;
        }
        return 1;
    }

    public static int c(int i10) {
        if (i10 != 1) {
            if (i10 != 16) {
                if (i10 != 18) {
                    return (i10 == 6 || i10 == 7) ? 3 : -1;
                }
                return 7;
            }
            return 6;
        }
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c d(Bundle bundle) {
        return new c(bundle.getInt(f33409g, -1), bundle.getInt(f33410h, -1), bundle.getInt(f33411i, -1), bundle.getByteArray(f33412j));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f33414a == cVar.f33414a && this.f33415b == cVar.f33415b && this.f33416c == cVar.f33416c && Arrays.equals(this.f33417d, cVar.f33417d)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (this.f33418e == 0) {
            this.f33418e = ((((((527 + this.f33414a) * 31) + this.f33415b) * 31) + this.f33416c) * 31) + Arrays.hashCode(this.f33417d);
        }
        return this.f33418e;
    }

    public String toString() {
        boolean z10;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ColorInfo(");
        sb2.append(this.f33414a);
        sb2.append(", ");
        sb2.append(this.f33415b);
        sb2.append(", ");
        sb2.append(this.f33416c);
        sb2.append(", ");
        if (this.f33417d != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        sb2.append(z10);
        sb2.append(")");
        return sb2.toString();
    }
}
