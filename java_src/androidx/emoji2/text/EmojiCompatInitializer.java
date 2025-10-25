package androidx.emoji2.text;

import android.content.Context;
import androidx.emoji2.text.EmojiCompatInitializer;
import androidx.emoji2.text.e;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.ProcessLifecycleInitializer;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadPoolExecutor;
import z.n;
/* loaded from: classes.dex */
public class EmojiCompatInitializer implements i1.a {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements DefaultLifecycleObserver {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ androidx.lifecycle.i f2399a;

        a(androidx.lifecycle.i iVar) {
            this.f2399a = iVar;
        }

        @Override // androidx.lifecycle.DefaultLifecycleObserver
        public void onResume(androidx.lifecycle.m mVar) {
            EmojiCompatInitializer.this.e();
            this.f2399a.c(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b extends e.c {
        protected b(Context context) {
            super(new c(context));
            b(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c implements e.g {

        /* renamed from: a  reason: collision with root package name */
        private final Context f2401a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public class a extends e.h {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ e.h f2402a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ThreadPoolExecutor f2403b;

            a(e.h hVar, ThreadPoolExecutor threadPoolExecutor) {
                this.f2402a = hVar;
                this.f2403b = threadPoolExecutor;
            }

            @Override // androidx.emoji2.text.e.h
            public void a(Throwable th) {
                try {
                    this.f2402a.a(th);
                } finally {
                    this.f2403b.shutdown();
                }
            }

            @Override // androidx.emoji2.text.e.h
            public void b(l lVar) {
                try {
                    this.f2402a.b(lVar);
                } finally {
                    this.f2403b.shutdown();
                }
            }
        }

        c(Context context) {
            this.f2401a = context.getApplicationContext();
        }

        @Override // androidx.emoji2.text.e.g
        public void a(final e.h hVar) {
            final ThreadPoolExecutor b10 = androidx.emoji2.text.b.b("EmojiCompatInitializer");
            b10.execute(new Runnable() { // from class: androidx.emoji2.text.f
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiCompatInitializer.c.this.d(hVar, b10);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public void d(e.h hVar, ThreadPoolExecutor threadPoolExecutor) {
            try {
                i a10 = androidx.emoji2.text.c.a(this.f2401a);
                if (a10 != null) {
                    a10.c(threadPoolExecutor);
                    a10.a().a(new a(hVar, threadPoolExecutor));
                    return;
                }
                throw new RuntimeException("EmojiCompat font provider not available on this device.");
            } catch (Throwable th) {
                hVar.a(th);
                threadPoolExecutor.shutdown();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                n.a("EmojiCompat.EmojiCompatInitializer.run");
                if (e.h()) {
                    e.b().k();
                }
            } finally {
                n.b();
            }
        }
    }

    @Override // i1.a
    public List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // i1.a
    /* renamed from: c */
    public Boolean b(Context context) {
        e.g(new b(context));
        d(context);
        return Boolean.TRUE;
    }

    void d(Context context) {
        androidx.lifecycle.i lifecycle = ((androidx.lifecycle.m) androidx.startup.a.e(context).f(ProcessLifecycleInitializer.class)).getLifecycle();
        lifecycle.a(new a(lifecycle));
    }

    void e() {
        androidx.emoji2.text.b.d().postDelayed(new d(), 500L);
    }
}
