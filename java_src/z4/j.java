package z4;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Surface;
import y4.m;
/* loaded from: classes.dex */
public final class j extends Surface {

    /* renamed from: d  reason: collision with root package name */
    private static int f33478d;

    /* renamed from: e  reason: collision with root package name */
    private static boolean f33479e;

    /* renamed from: a  reason: collision with root package name */
    public final boolean f33480a;

    /* renamed from: b  reason: collision with root package name */
    private final b f33481b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f33482c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b extends HandlerThread implements Handler.Callback {

        /* renamed from: a  reason: collision with root package name */
        private y4.j f33483a;

        /* renamed from: b  reason: collision with root package name */
        private Handler f33484b;

        /* renamed from: c  reason: collision with root package name */
        private Error f33485c;

        /* renamed from: d  reason: collision with root package name */
        private RuntimeException f33486d;

        /* renamed from: e  reason: collision with root package name */
        private j f33487e;

        public b() {
            super("ExoPlayer:PlaceholderSurface");
        }

        private void b(int i10) {
            boolean z10;
            y4.a.e(this.f33483a);
            this.f33483a.h(i10);
            SurfaceTexture g10 = this.f33483a.g();
            if (i10 != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f33487e = new j(this, g10, z10);
        }

        private void d() {
            y4.a.e(this.f33483a);
            this.f33483a.i();
        }

        public j a(int i10) {
            boolean z10;
            start();
            this.f33484b = new Handler(getLooper(), this);
            this.f33483a = new y4.j(this.f33484b);
            synchronized (this) {
                z10 = false;
                this.f33484b.obtainMessage(1, i10, 0).sendToTarget();
                while (this.f33487e == null && this.f33486d == null && this.f33485c == null) {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                        z10 = true;
                    }
                }
            }
            if (z10) {
                Thread.currentThread().interrupt();
            }
            RuntimeException runtimeException = this.f33486d;
            if (runtimeException == null) {
                Error error = this.f33485c;
                if (error == null) {
                    return (j) y4.a.e(this.f33487e);
                }
                throw error;
            }
            throw runtimeException;
        }

        public void c() {
            y4.a.e(this.f33484b);
            this.f33484b.sendEmptyMessage(2);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            try {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return true;
                    }
                    try {
                        d();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    b(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e10) {
                    y4.r.d("PlaceholderSurface", "Failed to initialize placeholder surface", e10);
                    this.f33485c = e10;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e11) {
                    y4.r.d("PlaceholderSurface", "Failed to initialize placeholder surface", e11);
                    this.f33486d = e11;
                    synchronized (this) {
                        notify();
                    }
                } catch (m.a e12) {
                    y4.r.d("PlaceholderSurface", "Failed to initialize placeholder surface", e12);
                    this.f33486d = new IllegalStateException(e12);
                    synchronized (this) {
                        notify();
                    }
                }
                return true;
            } catch (Throwable th) {
                synchronized (this) {
                    notify();
                    throw th;
                }
            }
        }
    }

    private static int a(Context context) {
        if (y4.m.c(context)) {
            if (y4.m.d()) {
                return 1;
            }
            return 2;
        }
        return 0;
    }

    public static synchronized boolean b(Context context) {
        boolean z10;
        synchronized (j.class) {
            z10 = true;
            if (!f33479e) {
                f33478d = a(context);
                f33479e = true;
            }
            if (f33478d == 0) {
                z10 = false;
            }
        }
        return z10;
    }

    public static j c(Context context, boolean z10) {
        boolean z11;
        int i10 = 0;
        if (z10 && !b(context)) {
            z11 = false;
        } else {
            z11 = true;
        }
        y4.a.f(z11);
        b bVar = new b();
        if (z10) {
            i10 = f33478d;
        }
        return bVar.a(i10);
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.f33481b) {
            if (!this.f33482c) {
                this.f33481b.c();
                this.f33482c = true;
            }
        }
    }

    private j(b bVar, SurfaceTexture surfaceTexture, boolean z10) {
        super(surfaceTexture);
        this.f33481b = bVar;
        this.f33480a = z10;
    }
}
