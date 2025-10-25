package s3;

import s3.b;
import s3.h0;
import s3.l;
import y4.q0;
/* loaded from: classes.dex */
public final class j implements l.b {

    /* renamed from: a  reason: collision with root package name */
    private int f29342a = 0;

    /* renamed from: b  reason: collision with root package name */
    private boolean f29343b;

    @Override // s3.l.b
    public l a(l.a aVar) {
        int i10;
        int i11 = q0.f32946a;
        if (i11 >= 23 && ((i10 = this.f29342a) == 1 || (i10 == 0 && i11 >= 31))) {
            int k10 = y4.v.k(aVar.f29351c.f4514l);
            y4.r.f("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + q0.k0(k10));
            return new b.C0305b(k10, this.f29343b).a(aVar);
        }
        return new h0.b().a(aVar);
    }
}
