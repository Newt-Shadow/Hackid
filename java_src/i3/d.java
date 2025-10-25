package i3;

import y4.e0;
import y4.q0;
import y4.r;
/* loaded from: classes.dex */
final class d implements a {

    /* renamed from: a  reason: collision with root package name */
    public final int f17088a;

    /* renamed from: b  reason: collision with root package name */
    public final int f17089b;

    /* renamed from: c  reason: collision with root package name */
    public final int f17090c;

    /* renamed from: d  reason: collision with root package name */
    public final int f17091d;

    /* renamed from: e  reason: collision with root package name */
    public final int f17092e;

    /* renamed from: f  reason: collision with root package name */
    public final int f17093f;

    private d(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.f17088a = i10;
        this.f17089b = i11;
        this.f17090c = i12;
        this.f17091d = i13;
        this.f17092e = i14;
        this.f17093f = i15;
    }

    public static d c(e0 e0Var) {
        int t10 = e0Var.t();
        e0Var.U(12);
        int t11 = e0Var.t();
        int t12 = e0Var.t();
        int t13 = e0Var.t();
        e0Var.U(4);
        int t14 = e0Var.t();
        int t15 = e0Var.t();
        e0Var.U(8);
        return new d(t10, t11, t12, t13, t14, t15);
    }

    public long a() {
        return q0.M0(this.f17092e, this.f17090c * 1000000, this.f17091d);
    }

    public int b() {
        int i10 = this.f17088a;
        if (i10 != 1935960438) {
            if (i10 != 1935963489) {
                if (i10 != 1937012852) {
                    r.i("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(this.f17088a));
                    return -1;
                }
                return 3;
            }
            return 1;
        }
        return 2;
    }

    @Override // i3.a
    public int getType() {
        return 1752331379;
    }
}
