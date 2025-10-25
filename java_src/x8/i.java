package x8;

import j0.e0;
import java.io.InputStream;
import java.io.OutputStream;
import je.b;
import rd.y;
import xc.t;
/* loaded from: classes.dex */
public final class i implements e0 {

    /* renamed from: a  reason: collision with root package name */
    public static final i f32577a = new i();

    /* renamed from: b  reason: collision with root package name */
    private static final h f32578b = new h(null, null, null, null, null);

    private i() {
    }

    @Override // j0.e0
    public Object c(InputStream inputStream, ad.e eVar) {
        String t10;
        try {
            b.a aVar = je.b.f24600d;
            t10 = y.t(gd.a.c(inputStream));
            aVar.d();
            return (h) aVar.a(h.Companion.serializer(), t10);
        } catch (Exception e10) {
            throw new j0.d("Cannot parse session configs", e10);
        }
    }

    @Override // j0.e0
    /* renamed from: d */
    public h a() {
        return f32578b;
    }

    @Override // j0.e0
    /* renamed from: e */
    public Object b(h hVar, OutputStream outputStream, ad.e eVar) {
        byte[] u10;
        u10 = y.u(je.b.f24600d.b(h.Companion.serializer(), hVar));
        outputStream.write(u10);
        return t.f32733a;
    }
}
