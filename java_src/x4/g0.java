package x4;

import android.net.Uri;
import java.io.InputStream;
import java.util.Map;
import x4.e0;
import x4.n;
import y4.q0;
/* loaded from: classes.dex */
public final class g0 implements e0.e {

    /* renamed from: a  reason: collision with root package name */
    public final long f32331a;

    /* renamed from: b  reason: collision with root package name */
    public final n f32332b;

    /* renamed from: c  reason: collision with root package name */
    public final int f32333c;

    /* renamed from: d  reason: collision with root package name */
    private final l0 f32334d;

    /* renamed from: e  reason: collision with root package name */
    private final a f32335e;

    /* renamed from: f  reason: collision with root package name */
    private volatile Object f32336f;

    /* loaded from: classes.dex */
    public interface a {
        Object a(Uri uri, InputStream inputStream);
    }

    public g0(j jVar, Uri uri, int i10, a aVar) {
        this(jVar, new n.b().i(uri).b(1).a(), i10, aVar);
    }

    @Override // x4.e0.e
    public final void a() {
        this.f32334d.t();
        l lVar = new l(this.f32334d, this.f32332b);
        try {
            lVar.b();
            this.f32336f = this.f32335e.a((Uri) y4.a.e(this.f32334d.o()), lVar);
        } finally {
            q0.n(lVar);
        }
    }

    public long b() {
        return this.f32334d.q();
    }

    @Override // x4.e0.e
    public final void c() {
    }

    public Map d() {
        return this.f32334d.s();
    }

    public final Object e() {
        return this.f32336f;
    }

    public Uri f() {
        return this.f32334d.r();
    }

    public g0(j jVar, n nVar, int i10, a aVar) {
        this.f32334d = new l0(jVar);
        this.f32332b = nVar;
        this.f32333c = i10;
        this.f32335e = aVar;
        this.f32331a = d4.n.a();
    }
}
