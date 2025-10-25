package s7;

import java.io.File;
/* loaded from: classes.dex */
public class f {

    /* renamed from: c  reason: collision with root package name */
    private static final b f29489c = new b();

    /* renamed from: a  reason: collision with root package name */
    private final w7.g f29490a;

    /* renamed from: b  reason: collision with root package name */
    private d f29491b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b implements d {
        private b() {
        }

        @Override // s7.d
        public void a() {
        }

        @Override // s7.d
        public String b() {
            return null;
        }

        @Override // s7.d
        public byte[] c() {
            return null;
        }

        @Override // s7.d
        public void d() {
        }

        @Override // s7.d
        public void e(long j10, String str) {
        }
    }

    public f(w7.g gVar) {
        this.f29490a = gVar;
        this.f29491b = f29489c;
    }

    private File d(String str) {
        return this.f29490a.q(str, "userlog");
    }

    public void a() {
        this.f29491b.d();
    }

    public byte[] b() {
        return this.f29491b.c();
    }

    public String c() {
        return this.f29491b.b();
    }

    public final void e(String str) {
        this.f29491b.a();
        this.f29491b = f29489c;
        if (str == null) {
            return;
        }
        f(d(str), 65536);
    }

    void f(File file, int i10) {
        this.f29491b = new i(file, i10);
    }

    public void g(long j10, String str) {
        this.f29491b.e(j10, str);
    }

    public f(w7.g gVar, String str) {
        this(gVar);
        e(str);
    }
}
