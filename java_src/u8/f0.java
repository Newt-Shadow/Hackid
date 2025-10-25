package u8;

import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import je.b;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class f0 implements j0.e0 {

    /* renamed from: a  reason: collision with root package name */
    private final n0 f30906a;

    public f0(n0 sessionGenerator) {
        kotlin.jvm.internal.m.e(sessionGenerator, "sessionGenerator");
        this.f30906a = sessionGenerator;
    }

    @Override // j0.e0
    public Object c(InputStream inputStream, ad.e eVar) {
        String t10;
        try {
            b.a aVar = je.b.f24600d;
            t10 = rd.y.t(gd.a.c(inputStream));
            aVar.d();
            return (e0) aVar.a(e0.Companion.serializer(), t10);
        } catch (Exception e10) {
            throw new j0.d("Cannot parse session data", e10);
        }
    }

    @Override // j0.e0
    /* renamed from: d */
    public e0 a() {
        return new e0(this.f30906a.a(null), (v0) null, (Map) null, 6, (DefaultConstructorMarker) null);
    }

    @Override // j0.e0
    /* renamed from: e */
    public Object b(e0 e0Var, OutputStream outputStream, ad.e eVar) {
        byte[] u10;
        u10 = rd.y.u(je.b.f24600d.b(e0.Companion.serializer(), e0Var));
        outputStream.write(u10);
        return xc.t.f32733a;
    }
}
