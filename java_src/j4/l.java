package j4;

import android.net.Uri;
import d4.a0;
import java.io.IOException;
import x4.d0;
/* loaded from: classes.dex */
public interface l {

    /* loaded from: classes.dex */
    public interface a {
        l a(i4.g gVar, d0 d0Var, k kVar);
    }

    /* loaded from: classes.dex */
    public interface b {
        void a();

        boolean g(Uri uri, d0.c cVar, boolean z10);
    }

    /* loaded from: classes.dex */
    public static final class c extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f24453a;

        public c(Uri uri) {
            this.f24453a = uri;
        }
    }

    /* loaded from: classes.dex */
    public static final class d extends IOException {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f24454a;

        public d(Uri uri) {
            this.f24454a = uri;
        }
    }

    /* loaded from: classes.dex */
    public interface e {
        void m(g gVar);
    }

    void a(Uri uri, a0.a aVar, e eVar);

    void b(b bVar);

    boolean c(Uri uri);

    void d(Uri uri);

    long e();

    boolean f();

    h g();

    void i(b bVar);

    boolean j(Uri uri, long j10);

    void k();

    void l(Uri uri);

    g m(Uri uri, boolean z10);

    void stop();
}
