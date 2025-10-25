package y4;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
/* loaded from: classes.dex */
public final class j implements SurfaceTexture.OnFrameAvailableListener, Runnable {

    /* renamed from: g  reason: collision with root package name */
    private static final int[] f32903g = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};

    /* renamed from: a  reason: collision with root package name */
    private final Handler f32904a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f32905b;

    /* renamed from: c  reason: collision with root package name */
    private EGLDisplay f32906c;

    /* renamed from: d  reason: collision with root package name */
    private EGLContext f32907d;

    /* renamed from: e  reason: collision with root package name */
    private EGLSurface f32908e;

    /* renamed from: f  reason: collision with root package name */
    private SurfaceTexture f32909f;

    /* loaded from: classes.dex */
    public interface a {
    }

    public j(Handler handler) {
        this(handler, null);
    }

    private static EGLConfig a(EGLDisplay eGLDisplay) {
        boolean z10 = true;
        EGLConfig[] eGLConfigArr = new EGLConfig[1];
        int[] iArr = new int[1];
        boolean eglChooseConfig = EGL14.eglChooseConfig(eGLDisplay, f32903g, 0, eGLConfigArr, 0, 1, iArr, 0);
        if (!eglChooseConfig || iArr[0] <= 0 || eGLConfigArr[0] == null) {
            z10 = false;
        }
        m.b(z10, q0.C("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", Boolean.valueOf(eglChooseConfig), Integer.valueOf(iArr[0]), eGLConfigArr[0]));
        return eGLConfigArr[0];
    }

    private static EGLContext b(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i10) {
        int[] iArr;
        boolean z10 = true;
        if (i10 == 0) {
            iArr = new int[]{12440, 2, 12344};
        } else {
            iArr = new int[]{12440, 2, 12992, 1, 12344};
        }
        EGLContext eglCreateContext = EGL14.eglCreateContext(eGLDisplay, eGLConfig, EGL14.EGL_NO_CONTEXT, iArr, 0);
        if (eglCreateContext == null) {
            z10 = false;
        }
        m.b(z10, "eglCreateContext failed");
        return eglCreateContext;
    }

    private static EGLSurface c(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int i10) {
        int[] iArr;
        EGLSurface eglCreatePbufferSurface;
        boolean z10 = true;
        if (i10 == 1) {
            eglCreatePbufferSurface = EGL14.EGL_NO_SURFACE;
        } else {
            if (i10 == 2) {
                iArr = new int[]{12375, 1, 12374, 1, 12992, 1, 12344};
            } else {
                iArr = new int[]{12375, 1, 12374, 1, 12344};
            }
            eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, iArr, 0);
            if (eglCreatePbufferSurface == null) {
                z10 = false;
            }
            m.b(z10, "eglCreatePbufferSurface failed");
        }
        m.b(EGL14.eglMakeCurrent(eGLDisplay, eglCreatePbufferSurface, eglCreatePbufferSurface, eGLContext), "eglMakeCurrent failed");
        return eglCreatePbufferSurface;
    }

    private void d() {
    }

    private static void e(int[] iArr) {
        GLES20.glGenTextures(1, iArr, 0);
        m.a();
    }

    private static EGLDisplay f() {
        boolean z10;
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        if (eglGetDisplay != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        m.b(z10, "eglGetDisplay failed");
        int[] iArr = new int[2];
        m.b(EGL14.eglInitialize(eglGetDisplay, iArr, 0, iArr, 1), "eglInitialize failed");
        return eglGetDisplay;
    }

    public SurfaceTexture g() {
        return (SurfaceTexture) y4.a.e(this.f32909f);
    }

    public void h(int i10) {
        EGLDisplay f10 = f();
        this.f32906c = f10;
        EGLConfig a10 = a(f10);
        EGLContext b10 = b(this.f32906c, a10, i10);
        this.f32907d = b10;
        this.f32908e = c(this.f32906c, a10, b10, i10);
        e(this.f32905b);
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f32905b[0]);
        this.f32909f = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.opengl.EGLContext, android.graphics.SurfaceTexture, android.opengl.EGLSurface, android.opengl.EGLDisplay] */
    public void i() {
        this.f32904a.removeCallbacks(this);
        try {
            SurfaceTexture surfaceTexture = this.f32909f;
            if (surfaceTexture != null) {
                surfaceTexture.release();
                GLES20.glDeleteTextures(1, this.f32905b, 0);
            }
        } finally {
            EGLDisplay eGLDisplay = this.f32906c;
            if (eGLDisplay != null && !eGLDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
                EGLDisplay eGLDisplay2 = this.f32906c;
                EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
                EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            }
            EGLSurface eGLSurface2 = this.f32908e;
            if (eGLSurface2 != null && !eGLSurface2.equals(EGL14.EGL_NO_SURFACE)) {
                EGL14.eglDestroySurface(this.f32906c, this.f32908e);
            }
            EGLContext eGLContext = this.f32907d;
            if (eGLContext != null) {
                EGL14.eglDestroyContext(this.f32906c, eGLContext);
            }
            if (q0.f32946a >= 19) {
                EGL14.eglReleaseThread();
            }
            EGLDisplay eGLDisplay3 = this.f32906c;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(EGL14.EGL_NO_DISPLAY)) {
                EGL14.eglTerminate(this.f32906c);
            }
            this.f32906c = null;
            this.f32907d = null;
            this.f32908e = null;
            this.f32909f = null;
        }
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.f32904a.post(this);
    }

    @Override // java.lang.Runnable
    public void run() {
        d();
        SurfaceTexture surfaceTexture = this.f32909f;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (RuntimeException unused) {
            }
        }
    }

    public j(Handler handler, a aVar) {
        this.f32904a = handler;
        this.f32905b = new int[1];
    }
}
