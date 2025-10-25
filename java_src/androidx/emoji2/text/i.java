package androidx.emoji2.text;

import a0.k;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.os.Handler;
import androidx.emoji2.text.e;
import androidx.emoji2.text.i;
import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;
import z.n;
/* loaded from: classes.dex */
public class i extends e.c {

    /* renamed from: j  reason: collision with root package name */
    private static final a f2461j = new a();

    /* loaded from: classes.dex */
    public static class a {
        public Typeface a(Context context, k.b bVar) {
            return a0.k.a(context, null, new k.b[]{bVar});
        }

        public k.a b(Context context, a0.e eVar) {
            return a0.k.b(context, null, eVar);
        }

        public void c(Context context, ContentObserver contentObserver) {
            context.getContentResolver().unregisterContentObserver(contentObserver);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b implements e.g {

        /* renamed from: a  reason: collision with root package name */
        private final Context f2462a;

        /* renamed from: b  reason: collision with root package name */
        private final a0.e f2463b;

        /* renamed from: c  reason: collision with root package name */
        private final a f2464c;

        /* renamed from: d  reason: collision with root package name */
        private final Object f2465d = new Object();

        /* renamed from: e  reason: collision with root package name */
        private Handler f2466e;

        /* renamed from: f  reason: collision with root package name */
        private Executor f2467f;

        /* renamed from: g  reason: collision with root package name */
        private ThreadPoolExecutor f2468g;

        /* renamed from: h  reason: collision with root package name */
        e.h f2469h;

        /* renamed from: i  reason: collision with root package name */
        private ContentObserver f2470i;

        /* renamed from: j  reason: collision with root package name */
        private Runnable f2471j;

        b(Context context, a0.e eVar, a aVar) {
            c0.f.h(context, "Context cannot be null");
            c0.f.h(eVar, "FontRequest cannot be null");
            this.f2462a = context.getApplicationContext();
            this.f2463b = eVar;
            this.f2464c = aVar;
        }

        private void b() {
            synchronized (this.f2465d) {
                this.f2469h = null;
                ContentObserver contentObserver = this.f2470i;
                if (contentObserver != null) {
                    this.f2464c.c(this.f2462a, contentObserver);
                    this.f2470i = null;
                }
                Handler handler = this.f2466e;
                if (handler != null) {
                    handler.removeCallbacks(this.f2471j);
                }
                this.f2466e = null;
                ThreadPoolExecutor threadPoolExecutor = this.f2468g;
                if (threadPoolExecutor != null) {
                    threadPoolExecutor.shutdown();
                }
                this.f2467f = null;
                this.f2468g = null;
            }
        }

        private k.b e() {
            try {
                k.a b10 = this.f2464c.b(this.f2462a, this.f2463b);
                if (b10.e() == 0) {
                    k.b[] c10 = b10.c();
                    if (c10 != null && c10.length != 0) {
                        return c10[0];
                    }
                    throw new RuntimeException("fetchFonts failed (empty result)");
                }
                throw new RuntimeException("fetchFonts failed (" + b10.e() + ")");
            } catch (PackageManager.NameNotFoundException e10) {
                throw new RuntimeException("provider not found", e10);
            }
        }

        @Override // androidx.emoji2.text.e.g
        public void a(e.h hVar) {
            c0.f.h(hVar, "LoaderCallback cannot be null");
            synchronized (this.f2465d) {
                this.f2469h = hVar;
            }
            d();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void c() {
            synchronized (this.f2465d) {
                if (this.f2469h == null) {
                    return;
                }
                try {
                    k.b e10 = e();
                    int b10 = e10.b();
                    if (b10 == 2) {
                        synchronized (this.f2465d) {
                        }
                    }
                    if (b10 == 0) {
                        n.a("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                        Typeface a10 = this.f2464c.a(this.f2462a, e10);
                        ByteBuffer f10 = v.n.f(this.f2462a, null, e10.d());
                        if (f10 != null && a10 != null) {
                            l b11 = l.b(a10, f10);
                            n.b();
                            synchronized (this.f2465d) {
                                e.h hVar = this.f2469h;
                                if (hVar != null) {
                                    hVar.b(b11);
                                }
                            }
                            b();
                            return;
                        }
                        throw new RuntimeException("Unable to open file.");
                    }
                    throw new RuntimeException("fetchFonts result is not OK. (" + b10 + ")");
                } catch (Throwable th) {
                    synchronized (this.f2465d) {
                        e.h hVar2 = this.f2469h;
                        if (hVar2 != null) {
                            hVar2.a(th);
                        }
                        b();
                    }
                }
            }
        }

        void d() {
            synchronized (this.f2465d) {
                if (this.f2469h == null) {
                    return;
                }
                if (this.f2467f == null) {
                    ThreadPoolExecutor b10 = androidx.emoji2.text.b.b("emojiCompat");
                    this.f2468g = b10;
                    this.f2467f = b10;
                }
                this.f2467f.execute(new Runnable() { // from class: androidx.emoji2.text.j
                    @Override // java.lang.Runnable
                    public final void run() {
                        i.b.this.c();
                    }
                });
            }
        }

        public void f(Executor executor) {
            synchronized (this.f2465d) {
                this.f2467f = executor;
            }
        }
    }

    public i(Context context, a0.e eVar) {
        super(new b(context, eVar, f2461j));
    }

    public i c(Executor executor) {
        ((b) a()).f(executor);
        return this;
    }
}
