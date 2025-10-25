package m5;

import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f25818a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f25819b;

    /* renamed from: c  reason: collision with root package name */
    private volatile a f25820c;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Object f25821a;

        /* renamed from: b  reason: collision with root package name */
        private final String f25822b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Object obj, String str) {
            this.f25821a = obj;
            this.f25822b = str;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f25821a == aVar.f25821a && this.f25822b.equals(aVar.f25822b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (System.identityHashCode(this.f25821a) * 31) + this.f25822b.hashCode();
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(Object obj);

        void b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Looper looper, Object obj, String str) {
        this.f25818a = new s5.a(looper);
        this.f25819b = n5.q.l(obj, "Listener must not be null");
        this.f25820c = new a(obj, n5.q.e(str));
    }

    public void a() {
        this.f25819b = null;
        this.f25820c = null;
    }

    public a b() {
        return this.f25820c;
    }

    public void c(final b bVar) {
        n5.q.l(bVar, "Notifier must not be null");
        this.f25818a.execute(new Runnable() { // from class: m5.r0
            @Override // java.lang.Runnable
            public final void run() {
                j.this.d(bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(b bVar) {
        Object obj = this.f25819b;
        if (obj == null) {
            bVar.b();
            return;
        }
        try {
            bVar.a(obj);
        } catch (RuntimeException e10) {
            bVar.b();
            throw e10;
        }
    }
}
