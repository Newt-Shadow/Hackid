package x4;

import android.content.Context;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import x4.j;
import x4.s;
import y4.q0;
/* loaded from: classes.dex */
public final class r implements j {

    /* renamed from: a  reason: collision with root package name */
    private final Context f32436a;

    /* renamed from: b  reason: collision with root package name */
    private final List f32437b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final j f32438c;

    /* renamed from: d  reason: collision with root package name */
    private j f32439d;

    /* renamed from: e  reason: collision with root package name */
    private j f32440e;

    /* renamed from: f  reason: collision with root package name */
    private j f32441f;

    /* renamed from: g  reason: collision with root package name */
    private j f32442g;

    /* renamed from: h  reason: collision with root package name */
    private j f32443h;

    /* renamed from: i  reason: collision with root package name */
    private j f32444i;

    /* renamed from: j  reason: collision with root package name */
    private j f32445j;

    /* renamed from: k  reason: collision with root package name */
    private j f32446k;

    /* loaded from: classes.dex */
    public static final class a implements j.a {

        /* renamed from: a  reason: collision with root package name */
        private final Context f32447a;

        /* renamed from: b  reason: collision with root package name */
        private final j.a f32448b;

        /* renamed from: c  reason: collision with root package name */
        private m0 f32449c;

        public a(Context context) {
            this(context, new s.b());
        }

        @Override // x4.j.a
        /* renamed from: b */
        public r a() {
            r rVar = new r(this.f32447a, this.f32448b.a());
            m0 m0Var = this.f32449c;
            if (m0Var != null) {
                rVar.d(m0Var);
            }
            return rVar;
        }

        public a(Context context, j.a aVar) {
            this.f32447a = context.getApplicationContext();
            this.f32448b = aVar;
        }
    }

    public r(Context context, j jVar) {
        this.f32436a = context.getApplicationContext();
        this.f32438c = (j) y4.a.e(jVar);
    }

    private void q(j jVar) {
        for (int i10 = 0; i10 < this.f32437b.size(); i10++) {
            jVar.d((m0) this.f32437b.get(i10));
        }
    }

    private j r() {
        if (this.f32440e == null) {
            c cVar = new c(this.f32436a);
            this.f32440e = cVar;
            q(cVar);
        }
        return this.f32440e;
    }

    private j s() {
        if (this.f32441f == null) {
            g gVar = new g(this.f32436a);
            this.f32441f = gVar;
            q(gVar);
        }
        return this.f32441f;
    }

    private j t() {
        if (this.f32444i == null) {
            i iVar = new i();
            this.f32444i = iVar;
            q(iVar);
        }
        return this.f32444i;
    }

    private j u() {
        if (this.f32439d == null) {
            w wVar = new w();
            this.f32439d = wVar;
            q(wVar);
        }
        return this.f32439d;
    }

    private j v() {
        if (this.f32445j == null) {
            h0 h0Var = new h0(this.f32436a);
            this.f32445j = h0Var;
            q(h0Var);
        }
        return this.f32445j;
    }

    private j w() {
        if (this.f32442g == null) {
            try {
                j jVar = (j) Class.forName("com.google.android.exoplayer2.ext.rtmp.RtmpDataSource").getConstructor(new Class[0]).newInstance(new Object[0]);
                this.f32442g = jVar;
                q(jVar);
            } catch (ClassNotFoundException unused) {
                y4.r.i("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
            } catch (Exception e10) {
                throw new RuntimeException("Error instantiating RTMP extension", e10);
            }
            if (this.f32442g == null) {
                this.f32442g = this.f32438c;
            }
        }
        return this.f32442g;
    }

    private j x() {
        if (this.f32443h == null) {
            n0 n0Var = new n0();
            this.f32443h = n0Var;
            q(n0Var);
        }
        return this.f32443h;
    }

    private void y(j jVar, m0 m0Var) {
        if (jVar != null) {
            jVar.d(m0Var);
        }
    }

    @Override // x4.j
    public void close() {
        j jVar = this.f32446k;
        if (jVar != null) {
            try {
                jVar.close();
            } finally {
                this.f32446k = null;
            }
        }
    }

    @Override // x4.j
    public void d(m0 m0Var) {
        y4.a.e(m0Var);
        this.f32438c.d(m0Var);
        this.f32437b.add(m0Var);
        y(this.f32439d, m0Var);
        y(this.f32440e, m0Var);
        y(this.f32441f, m0Var);
        y(this.f32442g, m0Var);
        y(this.f32443h, m0Var);
        y(this.f32444i, m0Var);
        y(this.f32445j, m0Var);
    }

    @Override // x4.j
    public long i(n nVar) {
        boolean z10;
        if (this.f32446k == null) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        String scheme = nVar.f32371a.getScheme();
        if (q0.v0(nVar.f32371a)) {
            String path = nVar.f32371a.getPath();
            if (path != null && path.startsWith("/android_asset/")) {
                this.f32446k = r();
            } else {
                this.f32446k = u();
            }
        } else if ("asset".equals(scheme)) {
            this.f32446k = r();
        } else if ("content".equals(scheme)) {
            this.f32446k = s();
        } else if ("rtmp".equals(scheme)) {
            this.f32446k = w();
        } else if ("udp".equals(scheme)) {
            this.f32446k = x();
        } else if ("data".equals(scheme)) {
            this.f32446k = t();
        } else if (!"rawresource".equals(scheme) && !"android.resource".equals(scheme)) {
            this.f32446k = this.f32438c;
        } else {
            this.f32446k = v();
        }
        return this.f32446k.i(nVar);
    }

    @Override // x4.j
    public Map k() {
        j jVar = this.f32446k;
        if (jVar == null) {
            return Collections.emptyMap();
        }
        return jVar.k();
    }

    @Override // x4.j
    public Uri o() {
        j jVar = this.f32446k;
        if (jVar == null) {
            return null;
        }
        return jVar.o();
    }

    @Override // x4.h
    public int read(byte[] bArr, int i10, int i11) {
        return ((j) y4.a.e(this.f32446k)).read(bArr, i10, i11);
    }
}
