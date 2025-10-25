package com.yandex.metrica;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.P;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final ICommonExecutor f9587a;

    /* renamed from: b  reason: collision with root package name */
    private final Set f9588b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f9589c;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void b();
    }

    /* renamed from: com.yandex.metrica.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private class C0119b {

        /* renamed from: a  reason: collision with root package name */
        final ICommonExecutor f9590a;

        /* renamed from: b  reason: collision with root package name */
        final a f9591b;

        /* renamed from: c  reason: collision with root package name */
        private final long f9592c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f9593d = true;

        /* renamed from: e  reason: collision with root package name */
        private final Runnable f9594e = new a();

        /* renamed from: com.yandex.metrica.b$b$a */
        /* loaded from: classes.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C0119b.this.f9591b.a();
            }
        }

        C0119b(b bVar, a aVar, ICommonExecutor iCommonExecutor, long j10) {
            this.f9591b = aVar;
            this.f9590a = iCommonExecutor;
            this.f9592c = j10;
        }

        void a() {
            if (!this.f9593d) {
                this.f9593d = true;
                this.f9590a.executeDelayed(this.f9594e, this.f9592c);
            }
        }

        void b() {
            if (this.f9593d) {
                this.f9593d = false;
                this.f9590a.remove(this.f9594e);
                this.f9591b.b();
            }
        }
    }

    public b(long j10) {
        this(j10, P.g().d().b());
    }

    public synchronized void a() {
        this.f9589c = true;
        for (C0119b c0119b : this.f9588b) {
            c0119b.a();
        }
    }

    public synchronized void b(a aVar, long j10) {
        synchronized (this) {
            this.f9588b.add(new C0119b(this, aVar, this.f9587a, j10));
        }
    }

    public synchronized void c() {
        this.f9589c = false;
        for (C0119b c0119b : this.f9588b) {
            c0119b.b();
        }
    }

    b(long j10, ICommonExecutor iCommonExecutor) {
        this.f9588b = new HashSet();
        this.f9589c = true;
        this.f9587a = iCommonExecutor;
    }
}
