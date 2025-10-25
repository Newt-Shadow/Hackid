package fa;

import android.app.Activity;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraAccessException;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.params.OutputConfiguration;
import android.hardware.camera2.params.SessionConfiguration;
import android.media.CamcorderProfile;
import android.media.Image;
import android.media.ImageReader;
import android.media.MediaRecorder;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import android.util.Size;
import android.view.Surface;
import fa.u;
import io.flutter.embedding.engine.systemchannels.PlatformChannel;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.view.TextureRegistry;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executors;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u implements MediaRecorder.OnErrorListener {
    private static final HashMap A;

    /* renamed from: a  reason: collision with root package name */
    private ga.d f16019a;

    /* renamed from: b  reason: collision with root package name */
    private String f16020b;

    /* renamed from: c  reason: collision with root package name */
    private int f16021c;

    /* renamed from: d  reason: collision with root package name */
    private final TextureRegistry.SurfaceTextureEntry f16022d;

    /* renamed from: e  reason: collision with root package name */
    private final pa.g f16023e;

    /* renamed from: f  reason: collision with root package name */
    private final o0 f16024f;

    /* renamed from: g  reason: collision with root package name */
    private e0 f16025g;

    /* renamed from: h  reason: collision with root package name */
    private final ga.b f16026h;

    /* renamed from: i  reason: collision with root package name */
    private final Activity f16027i;

    /* renamed from: j  reason: collision with root package name */
    private Handler f16028j;

    /* renamed from: k  reason: collision with root package name */
    private HandlerThread f16029k;

    /* renamed from: l  reason: collision with root package name */
    private y f16030l;

    /* renamed from: m  reason: collision with root package name */
    private CameraCaptureSession f16031m;

    /* renamed from: n  reason: collision with root package name */
    private ImageReader f16032n;

    /* renamed from: o  reason: collision with root package name */
    private CaptureRequest.Builder f16033o;

    /* renamed from: p  reason: collision with root package name */
    private MediaRecorder f16034p;

    /* renamed from: q  reason: collision with root package name */
    private ta.a f16035q;

    /* renamed from: r  reason: collision with root package name */
    private final boolean f16036r;

    /* renamed from: s  reason: collision with root package name */
    private final boolean f16037s;

    /* renamed from: t  reason: collision with root package name */
    private final boolean f16038t;

    /* renamed from: u  reason: collision with root package name */
    x f16039u = new x();

    /* renamed from: v  reason: collision with root package name */
    q0 f16040v;

    /* renamed from: w  reason: collision with root package name */
    private File f16041w;

    /* renamed from: x  reason: collision with root package name */
    private File f16042x;

    /* renamed from: y  reason: collision with root package name */
    private File f16043y;

    /* renamed from: z  reason: collision with root package name */
    private Long f16044z;

    /* loaded from: classes.dex */
    class a extends CameraDevice.StateCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ pa.f f16045a;

        a(pa.f fVar) {
            this.f16045a = fVar;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onClosed(CameraDevice cameraDevice) {
            Log.d("Camera", "open | onClosed");
            u.this.f16030l = null;
            u.this.F();
            u.this.f16024f.i();
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(CameraDevice cameraDevice) {
            Log.d("Camera", "open | onDisconnected");
            u.this.E();
            u.this.f16024f.k("The camera was disconnected.");
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(CameraDevice cameraDevice, int i10) {
            String str;
            Log.d("Camera", "open | onError");
            u.this.E();
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 != 4) {
                            if (i10 != 5) {
                                str = "Unknown camera error";
                            } else {
                                str = "The camera service has encountered a fatal error.";
                            }
                        } else {
                            str = "The camera device has encountered a fatal error";
                        }
                    } else {
                        str = "The camera device could not be opened due to a device policy.";
                    }
                } else {
                    str = "Max cameras in use";
                }
            } else {
                str = "The camera device is in use already.";
            }
            u.this.f16024f.k(str);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x002c A[Catch: Exception -> 0x0090, TRY_LEAVE, TryCatch #0 {Exception -> 0x0090, blocks: (B:3:0x000b, B:5:0x0018, B:8:0x001d, B:10:0x0024, B:12:0x002c, B:9:0x0021), top: B:17:0x000b }] */
        /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
        @Override // android.hardware.camera2.CameraDevice.StateCallback
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onOpened(android.hardware.camera2.CameraDevice r9) {
            /*
                r8 = this;
                fa.u r0 = fa.u.this
                fa.u$d r1 = new fa.u$d
                r2 = 0
                r1.<init>(r0, r9, r2)
                fa.u.u(r0, r1)
                fa.u r9 = fa.u.this     // Catch: java.lang.Exception -> L90
                fa.u.x(r9)     // Catch: java.lang.Exception -> L90
                fa.u r9 = fa.u.this     // Catch: java.lang.Exception -> L90
                fa.x r0 = r9.f16039u     // Catch: java.lang.Exception -> L90
                boolean r1 = r0.f16056c     // Catch: java.lang.Exception -> L90
                if (r1 != 0) goto L21
                boolean r0 = r0.f16058e     // Catch: java.lang.Exception -> L90
                if (r0 == 0) goto L1d
                goto L21
            L1d:
                fa.u.z(r9)     // Catch: java.lang.Exception -> L90
                goto L24
            L21:
                fa.u.y(r9)     // Catch: java.lang.Exception -> L90
            L24:
                fa.u r9 = fa.u.this     // Catch: java.lang.Exception -> L90
                fa.x r0 = r9.f16039u     // Catch: java.lang.Exception -> L90
                boolean r0 = r0.f16058e     // Catch: java.lang.Exception -> L90
                if (r0 != 0) goto Lbd
                fa.o0 r1 = fa.u.B(r9)     // Catch: java.lang.Exception -> L90
                pa.f r9 = r8.f16045a     // Catch: java.lang.Exception -> L90
                android.util.Size r9 = r9.h()     // Catch: java.lang.Exception -> L90
                int r9 = r9.getWidth()     // Catch: java.lang.Exception -> L90
                java.lang.Integer r2 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Exception -> L90
                pa.f r9 = r8.f16045a     // Catch: java.lang.Exception -> L90
                android.util.Size r9 = r9.h()     // Catch: java.lang.Exception -> L90
                int r9 = r9.getHeight()     // Catch: java.lang.Exception -> L90
                java.lang.Integer r3 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Exception -> L90
                fa.u r9 = fa.u.this     // Catch: java.lang.Exception -> L90
                ga.d r9 = fa.u.A(r9)     // Catch: java.lang.Exception -> L90
                ia.a r9 = r9.c()     // Catch: java.lang.Exception -> L90
                ia.b r4 = r9.d()     // Catch: java.lang.Exception -> L90
                fa.u r9 = fa.u.this     // Catch: java.lang.Exception -> L90
                ga.d r9 = fa.u.A(r9)     // Catch: java.lang.Exception -> L90
                ha.a r9 = r9.b()     // Catch: java.lang.Exception -> L90
                ha.b r5 = r9.d()     // Catch: java.lang.Exception -> L90
                fa.u r9 = fa.u.this     // Catch: java.lang.Exception -> L90
                ga.d r9 = fa.u.A(r9)     // Catch: java.lang.Exception -> L90
                ka.a r9 = r9.e()     // Catch: java.lang.Exception -> L90
                boolean r9 = r9.d()     // Catch: java.lang.Exception -> L90
                java.lang.Boolean r6 = java.lang.Boolean.valueOf(r9)     // Catch: java.lang.Exception -> L90
                fa.u r9 = fa.u.this     // Catch: java.lang.Exception -> L90
                ga.d r9 = fa.u.A(r9)     // Catch: java.lang.Exception -> L90
                ma.a r9 = r9.g()     // Catch: java.lang.Exception -> L90
                boolean r9 = r9.d()     // Catch: java.lang.Exception -> L90
                java.lang.Boolean r7 = java.lang.Boolean.valueOf(r9)     // Catch: java.lang.Exception -> L90
                r1.l(r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Exception -> L90
                goto Lbd
            L90:
                r9 = move-exception
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r0.<init>()
                java.lang.String r1 = "open | onOpened error: "
                r0.append(r1)
                java.lang.String r1 = r9.getMessage()
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                java.lang.String r1 = "Camera"
                android.util.Log.d(r1, r0)
                fa.u r0 = fa.u.this
                fa.o0 r0 = fa.u.B(r0)
                java.lang.String r9 = r9.getMessage()
                r0.k(r9)
                fa.u r9 = fa.u.this
                r9.E()
            Lbd:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: fa.u.a.onOpened(android.hardware.camera2.CameraDevice):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b extends CameraCaptureSession.StateCallback {

        /* renamed from: a  reason: collision with root package name */
        boolean f16047a = false;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Runnable f16048b;

        b(Runnable runnable) {
            this.f16048b = runnable;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str, String str2) {
            u.this.f16024f.k(str2);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onClosed(CameraCaptureSession cameraCaptureSession) {
            Log.d("Camera", "CameraCaptureSession onClosed");
            this.f16047a = true;
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(CameraCaptureSession cameraCaptureSession) {
            Log.d("Camera", "CameraCaptureSession onConfigureFailed");
            u.this.f16024f.k("Failed to configure camera session.");
            this.f16047a = true;
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(CameraCaptureSession cameraCaptureSession) {
            Log.d("Camera", "CameraCaptureSession onConfigured" + u.this.f16039u.toString());
            if (u.this.f16030l != null && !this.f16047a) {
                u.this.f16031m = cameraCaptureSession;
                u.this.f16024f.j(u.this.f16039u);
                u uVar = u.this;
                uVar.R0(uVar.f16033o);
                u.this.s0(this.f16048b, new p0() { // from class: fa.v
                    @Override // fa.p0
                    public final void a(String str, String str2) {
                        u.b.this.b(str, str2);
                    }
                });
                return;
            }
            u.this.f16024f.k("The camera was closed during configuration.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static /* synthetic */ class c {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f16050a;

        static {
            int[] iArr = new int[ha.b.values().length];
            f16050a = iArr;
            try {
                iArr[ha.b.locked.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f16050a[ha.b.auto.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* loaded from: classes.dex */
    private class d implements y {

        /* renamed from: a  reason: collision with root package name */
        final CameraDevice f16051a;

        /* synthetic */ d(u uVar, CameraDevice cameraDevice, a aVar) {
            this(cameraDevice);
        }

        @Override // fa.y
        public void a(List list, CameraCaptureSession.StateCallback stateCallback, Handler handler) {
            this.f16051a.createCaptureSession(list, stateCallback, u.this.f16028j);
        }

        @Override // fa.y
        public void b(SessionConfiguration sessionConfiguration) {
            this.f16051a.createCaptureSession(sessionConfiguration);
        }

        @Override // fa.y
        public CaptureRequest.Builder c(int i10) {
            return this.f16051a.createCaptureRequest(i10);
        }

        @Override // fa.y
        public void close() {
            this.f16051a.close();
        }

        private d(CameraDevice cameraDevice) {
            this.f16051a = cameraDevice;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class e {
        public static Handler a(Looper looper) {
            return new Handler(looper);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class f {
        public static HandlerThread a(String str) {
            return new HandlerThread(str);
        }
    }

    static {
        HashMap hashMap = new HashMap();
        A = hashMap;
        hashMap.put("yuv420", 35);
        hashMap.put("jpeg", 256);
    }

    public u(Activity activity, TextureRegistry.SurfaceTextureEntry surfaceTextureEntry, ga.b bVar, o0 o0Var, e0 e0Var, pa.g gVar, ta.a aVar, boolean z10, boolean z11, boolean z12, q0 q0Var) {
        this.f16035q = aVar;
        this.f16040v = q0Var;
        if (activity != null) {
            this.f16027i = activity;
            this.f16022d = surfaceTextureEntry;
            this.f16024f = o0Var;
            this.f16025g = e0Var;
            this.f16026h = bVar;
            this.f16023e = gVar;
            this.f16036r = z10;
            this.f16037s = z11;
            this.f16038t = z12;
            Log.d("Camera", "Camera: useBackgroundThread:" + z10 + ",abortCaptureSessionBeforeStarting:" + z11 + ",useOnlyLegacySurfaceConfig:" + z12);
            this.f16019a = ga.d.k(bVar, e0Var, activity, o0Var, gVar);
            return;
        }
        throw new IllegalStateException("No activity available!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C0() {
        this.f16032n.setOnImageAvailableListener(new ImageReader.OnImageAvailableListener() { // from class: fa.q
            @Override // android.media.ImageReader.OnImageAvailableListener
            public final void onImageAvailable(ImageReader imageReader) {
                u.this.e0(imageReader);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        Log.d("Camera", "closeCaptureSession");
        try {
            try {
                CameraCaptureSession cameraCaptureSession = this.f16031m;
                if (cameraCaptureSession != null) {
                    cameraCaptureSession.close();
                }
            } catch (Exception e10) {
                Log.e("Camera", "closeCaptureSession", e10);
            }
        } finally {
            this.f16031m = null;
        }
    }

    private void G(int i10, Runnable runnable, Surface... surfaceArr) {
        CameraCaptureSession cameraCaptureSession;
        if (this.f16037s && (cameraCaptureSession = this.f16031m) != null) {
            try {
                cameraCaptureSession.abortCaptures();
            } catch (Exception unused) {
            }
            try {
                this.f16031m.stopRepeating();
            } catch (Exception unused2) {
            }
        }
        Log.d("Camera", "createCaptureSession: " + this.f16039u.toString());
        this.f16033o = this.f16030l.c(i10);
        pa.f h10 = this.f16019a.h();
        SurfaceTexture surfaceTexture = this.f16022d.surfaceTexture();
        surfaceTexture.setDefaultBufferSize(h10.h().getWidth(), h10.h().getHeight());
        Surface surface = new Surface(surfaceTexture);
        if (this.f16039u.f16054a) {
            this.f16033o.addTarget(surface);
        }
        List<Surface> asList = Arrays.asList(surfaceArr);
        if (i10 != 1) {
            for (Surface surface2 : asList) {
                this.f16033o.addTarget(surface2);
            }
        }
        Size c10 = k0.c(this.f16025g, this.f16033o);
        this.f16019a.e().e(c10);
        this.f16019a.g().e(c10);
        b bVar = new b(runnable);
        if (Build.VERSION.SDK_INT >= 28 && !this.f16038t) {
            ArrayList arrayList = new ArrayList();
            if (this.f16039u.f16054a) {
                arrayList.add(new OutputConfiguration(surface));
            }
            for (Surface surface3 : asList) {
                if (surface3 != null) {
                    arrayList.add(new OutputConfiguration(surface3));
                }
            }
            J(arrayList, bVar);
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        if (this.f16039u.f16054a) {
            arrayList2.add(surface);
        }
        arrayList2.addAll(asList);
        I(arrayList2, bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G0() {
        Runnable runnable;
        Log.d("Camera", "startCapture: ");
        ArrayList arrayList = new ArrayList();
        if (this.f16039u.f16058e && this.f16042x != null) {
            arrayList.add(this.f16034p.getSurface());
            runnable = new Runnable() { // from class: fa.r
                @Override // java.lang.Runnable
                public final void run() {
                    u.this.i0();
                }
            };
        } else {
            runnable = null;
        }
        if (this.f16039u.f16056c) {
            arrayList.add(this.f16032n.getSurface());
        }
        G(3, runnable, (Surface[]) arrayList.toArray(new Surface[0]));
    }

    private void I(List list, CameraCaptureSession.StateCallback stateCallback) {
        this.f16030l.a(list, stateCallback, this.f16028j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void I0() {
        Log.d("Camera", "startRegularPreview");
        x xVar = this.f16039u;
        xVar.f16055b = false;
        xVar.f16054a = true;
        H(1, this.f16032n.getSurface());
    }

    private void J(List list, CameraCaptureSession.StateCallback stateCallback) {
        y yVar = this.f16030l;
        fa.b.a();
        yVar.b(fa.a.a(0, list, Executors.newSingleThreadExecutor(), stateCallback));
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [android.hardware.camera2.CameraCaptureSession, fa.y] */
    private void K0() {
        Log.d("Camera", "stopAndReleaseCamera");
        y yVar = this.f16030l;
        if (yVar != null) {
            try {
                try {
                    yVar.close();
                } catch (Exception e10) {
                    Log.e("Camera", "stopAndReleaseCamera: ", e10);
                }
                return;
            } finally {
                this.f16030l = null;
                this.f16031m = null;
            }
        }
        F();
    }

    private void N0() {
        this.f16039u.c(false);
        this.f16019a.l(this.f16026h.d(this.f16025g, false));
        try {
            this.f16031m.abortCaptures();
        } catch (Exception unused) {
        }
        try {
            this.f16034p.stop();
            this.f16034p.reset();
        } catch (Exception unused2) {
        }
        File file = this.f16042x;
        if (file != null) {
            try {
                this.f16042x = this.f16035q.b(file, this.f16044z);
            } catch (Exception e10) {
                Log.e("Camera", "stopVideo: ", e10);
            }
        }
    }

    private void P0() {
        Log.d("Camera", "unlockAutoFocus");
        if (this.f16031m == null) {
            Log.d("Camera", "[unlockAutoFocus] captureSession null, returning");
            return;
        }
        try {
            this.f16033o.set(CaptureRequest.CONTROL_AF_TRIGGER, 2);
            this.f16031m.capture(this.f16033o.build(), null, this.f16028j);
            this.f16033o.set(CaptureRequest.CONTROL_AF_TRIGGER, 0);
            this.f16031m.capture(this.f16033o.build(), null, this.f16028j);
            s0(null, new p0() { // from class: fa.h
                @Override // fa.p0
                public final void a(String str, String str2) {
                    u.this.j0(str, str2);
                }
            });
        } catch (CameraAccessException e10) {
            this.f16024f.k(e10.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void R0(CaptureRequest.Builder builder) {
        Log.d("Camera", "Updating builder settings");
        for (ga.a aVar : this.f16019a.a()) {
            Log.d("Camera", "Updating builder with feature: " + aVar.a());
            aVar.b(builder);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void T(String str, String str2) {
        this.f16024f.k(str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void W(MethodChannel.Result result, ja.a aVar) {
        result.success(aVar.g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e0(ImageReader imageReader) {
        try {
            Image acquireNextImage = imageReader.acquireNextImage();
            if (acquireNextImage == null) {
                return;
            }
            q0 q0Var = this.f16040v;
            if (q0Var != null && !this.f16039u.f16057d) {
                q0Var.a(acquireNextImage);
            }
            acquireNextImage.close();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h0(MediaRecorder mediaRecorder, int i10, int i11) {
        File file;
        File file2;
        Log.d("Camera", "mediaRecorder onInfoListener: " + i10);
        if (i10 == 802) {
            try {
                if (Build.VERSION.SDK_INT >= 26 && (file = this.f16041w) != null) {
                    File a10 = this.f16035q.a(file);
                    this.f16043y = a10;
                    this.f16034p.setNextOutputFile(a10);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } else if (i10 == 803 && (file2 = this.f16042x) != null) {
            try {
                this.f16024f.o(this.f16035q.b(file2, this.f16044z).getAbsolutePath());
                this.f16044z = Long.valueOf(System.currentTimeMillis());
                this.f16042x = this.f16043y;
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i0() {
        this.f16034p.start();
        this.f16044z = Long.valueOf(System.currentTimeMillis());
        if (this.f16035q.g() != null) {
            this.f16034p.setOnInfoListener(new MediaRecorder.OnInfoListener() { // from class: fa.m
                @Override // android.media.MediaRecorder.OnInfoListener
                public final void onInfo(MediaRecorder mediaRecorder, int i10, int i11) {
                    u.this.h0(mediaRecorder, i10, i11);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j0(String str, String str2) {
        this.f16024f.d(null, str, str2, null);
    }

    private void k0() {
        Log.d("Camera", "lockAutoFocus");
        if (this.f16031m == null) {
            Log.d("Camera", "[unlockAutoFocus] captureSession null, returning");
            return;
        }
        this.f16033o.set(CaptureRequest.CONTROL_AF_TRIGGER, 1);
        try {
            this.f16031m.capture(this.f16033o.build(), null, this.f16028j);
        } catch (CameraAccessException e10) {
            this.f16024f.k(e10.getMessage());
        }
    }

    private void q0(String str) {
        int f10;
        MediaRecorder mediaRecorder = this.f16034p;
        if (mediaRecorder != null) {
            mediaRecorder.release();
        }
        PlatformChannel.DeviceOrientation d10 = this.f16019a.i().d();
        sa.a c10 = new sa.a(S(), str, this.f16035q).c(this.f16035q.d());
        if (d10 == null) {
            f10 = M().e();
        } else {
            f10 = M().f(d10);
        }
        MediaRecorder a10 = c10.d(f10).a();
        this.f16034p = a10;
        a10.setOnErrorListener(this);
    }

    private void r0(String str) {
        Log.d("Camera", "prepareRecording");
        File file = new File(str);
        this.f16041w = file;
        this.f16043y = null;
        this.f16044z = null;
        try {
            File a10 = this.f16035q.a(file);
            this.f16042x = a10;
            try {
                q0(a10.getAbsolutePath());
                this.f16019a.l(this.f16026h.d(this.f16025g, true));
            } catch (IOException unused) {
                this.f16039u.c(false);
                this.f16042x = null;
            }
        } catch (IOException | SecurityException unused2) {
            this.f16039u.c(false);
            this.f16042x = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s0(Runnable runnable, p0 p0Var) {
        Log.d("Camera", "refreshPreviewCaptureSession");
        CameraCaptureSession cameraCaptureSession = this.f16031m;
        if (cameraCaptureSession == null) {
            Log.d("Camera", "refreshPreviewCaptureSession: captureSession not yet initialized, skipping preview capture session refresh.");
            return;
        }
        try {
            cameraCaptureSession.setRepeatingRequest(this.f16033o.build(), null, this.f16028j);
            if (runnable != null) {
                runnable.run();
            }
        } catch (CameraAccessException | IllegalStateException e10) {
            p0Var.a("cameraAccess", "Camera is closed: " + e10.getMessage());
        }
    }

    public void A0(MethodChannel.Result result, ha.b bVar) {
        ha.a b10 = this.f16019a.b();
        b10.e(bVar);
        b10.b(this.f16033o);
        if (!this.f16039u.f16055b) {
            int i10 = c.f16050a[bVar.ordinal()];
            if (i10 != 1) {
                if (i10 == 2) {
                    P0();
                }
            } else if (this.f16031m == null) {
                Log.d("Camera", "[unlockAutoFocus] captureSession null, returning");
                return;
            } else {
                k0();
                this.f16033o.set(CaptureRequest.CONTROL_AF_TRIGGER, 0);
                try {
                    this.f16031m.setRepeatingRequest(this.f16033o.build(), null, this.f16028j);
                } catch (CameraAccessException e10) {
                    if (result != null) {
                        result.error("setFocusModeFailed", "Error setting focus mode: " + e10.getMessage(), null);
                        return;
                    }
                    return;
                }
            }
        }
        if (result != null) {
            result.success(null);
        }
    }

    public void B0(final MethodChannel.Result result, ga.e eVar) {
        ma.a g10 = this.f16019a.g();
        g10.f(eVar);
        g10.b(this.f16033o);
        s0(new Runnable() { // from class: fa.d
            @Override // java.lang.Runnable
            public final void run() {
                MethodChannel.Result.this.success(null);
            }
        }, new p0() { // from class: fa.e
            @Override // fa.p0
            public final void a(String str, String str2) {
                MethodChannel.Result.this.error("setFocusPointFailed", "Could not set focus point.", null);
            }
        });
        A0(null, this.f16019a.b().d());
    }

    public void D0(ta.a aVar) {
        Log.d("Camera", "setMediaRecorderSettings");
        this.f16035q = aVar;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [android.media.ImageReader, android.media.MediaRecorder, java.io.File] */
    public void E() {
        Log.d("Camera", "close");
        try {
            K0();
        } catch (Exception e10) {
            Log.e("Camera", "close: ", e10);
        }
        try {
            try {
                ImageReader imageReader = this.f16032n;
                if (imageReader != null) {
                    imageReader.close();
                }
            } catch (Exception e11) {
                Log.e("Camera", "close: ", e11);
            }
            try {
                try {
                    MediaRecorder mediaRecorder = this.f16034p;
                    if (mediaRecorder != null) {
                        mediaRecorder.reset();
                        this.f16034p.release();
                    }
                } catch (Exception e12) {
                    Log.e("Camera", "close: ", e12);
                }
                L0();
            } finally {
                this.f16034p = null;
                this.f16042x = null;
                this.f16043y = null;
            }
        } finally {
            this.f16032n = null;
        }
    }

    public void E0(final MethodChannel.Result result, float f10) {
        ra.b j10 = this.f16019a.j();
        float d10 = j10.d();
        float e10 = j10.e();
        if (f10 <= d10 && f10 >= e10) {
            j10.f(Float.valueOf(f10));
            j10.b(this.f16033o);
            s0(new Runnable() { // from class: fa.k
                @Override // java.lang.Runnable
                public final void run() {
                    MethodChannel.Result.this.success(null);
                }
            }, new p0() { // from class: fa.l
                @Override // fa.p0
                public final void a(String str, String str2) {
                    MethodChannel.Result.this.error("setZoomLevelFailed", "Could not set zoom level.", null);
                }
            });
            return;
        }
        result.error("ZOOM_ERROR", String.format(Locale.ENGLISH, "Zoom level out of bounds (zoom level should be between %f and %f).", Float.valueOf(e10), Float.valueOf(d10)), null);
    }

    public void F0() {
        if (!this.f16036r) {
            Log.d("Camera", "startBackgroundThread backgroundThread is disabled");
            return;
        }
        Log.d("Camera", "startBackgroundThread: ");
        if (this.f16029k != null) {
            return;
        }
        HandlerThread a10 = f.a("CameraBackground");
        this.f16029k = a10;
        try {
            a10.start();
        } catch (IllegalThreadStateException unused) {
        }
        this.f16028j = e.a(this.f16029k.getLooper());
    }

    void H(int i10, Surface... surfaceArr) {
        G(i10, null, surfaceArr);
    }

    public void H0(l0 l0Var, MethodChannel.Result result) {
        Log.d("Camera", "startPreviewWithImageStream");
        if (this.f16039u.f16058e) {
            try {
                N0();
            } catch (Exception e10) {
                Log.e("Camera", "startPreviewWithImageStream: ", e10);
            }
        }
        this.f16039u.a(l0Var);
        G0();
        result.success(Boolean.TRUE);
    }

    public void J0(l0 l0Var, String str, MethodChannel.Result result) {
        Log.d("Camera", "startVideoRecording");
        this.f16039u.a(l0Var);
        this.f16039u.c(true);
        r0(str);
        this.f16021c = this.f16025g.j();
        try {
            G0();
            result.success(this.f16042x.getAbsolutePath());
        } catch (Exception e10) {
            this.f16039u.c(false);
            this.f16042x = null;
            this.f16043y = null;
            result.error("videoRecordingFailed", e10.getMessage(), null);
        }
    }

    public void K() {
        Log.d("Camera", "dispose");
        try {
            E();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        try {
            this.f16022d.release();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        try {
            M().j();
        } catch (Exception e12) {
            e12.printStackTrace();
        }
    }

    public int L() {
        return this.f16025g.d();
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [android.os.HandlerThread, android.os.Handler] */
    public void L0() {
        if (!this.f16036r) {
            Log.d("Camera", "backgroundThread is disabled");
            return;
        }
        Log.d("Camera", "stopBackgroundThread: ");
        try {
            try {
                HandlerThread handlerThread = this.f16029k;
                if (handlerThread != null) {
                    handlerThread.quitSafely();
                }
            } catch (Exception e10) {
                Log.e("Camera", "stopBackgroundThread: ", e10);
            }
        } finally {
            this.f16029k = null;
            this.f16028j = null;
        }
    }

    qa.a M() {
        return this.f16019a.i().c();
    }

    public void M0(MethodChannel.Result result) {
        Log.d("Camera", "stopImageStream");
        this.f16039u.b(false);
        if (this.f16039u.f16058e) {
            O0(result);
            return;
        }
        I0();
        result.success(Boolean.TRUE);
    }

    public double N() {
        return this.f16019a.d().d();
    }

    public double O() {
        return this.f16019a.d().e();
    }

    public void O0(MethodChannel.Result result) {
        Log.d("Camera", "stopVideoRecording");
        if (!this.f16039u.f16058e) {
            result.success(null);
            return;
        }
        try {
            N0();
        } catch (Exception e10) {
            Log.e("Camera", "stopVideo: ", e10);
        }
        try {
            I0();
            result.success(this.f16042x.getAbsolutePath());
            this.f16042x = null;
            this.f16044z = null;
        } catch (Exception e11) {
            result.error("videoRecordingFailed", e11.getMessage(), null);
        }
    }

    public float P() {
        return this.f16019a.j().d();
    }

    public double Q() {
        return this.f16019a.d().f();
    }

    public void Q0() {
        this.f16019a.i().g();
    }

    public float R() {
        return this.f16019a.j().e();
    }

    CamcorderProfile S() {
        return m0.c(this.f16025g.t(), this.f16035q.h());
    }

    public void l0(PlatformChannel.DeviceOrientation deviceOrientation) {
        this.f16019a.i().e(deviceOrientation);
    }

    public void m0(String str) {
        Log.d("Camera", "open");
        F0();
        this.f16020b = str;
        pa.f h10 = this.f16019a.h();
        if (!h10.c()) {
            o0 o0Var = this.f16024f;
            o0Var.k("Camera with name \"" + this.f16025g.t() + "\" is not supported by this plugin.");
            return;
        }
        Integer num = (Integer) A.get(str);
        if (num == null) {
            Log.w("Camera", "The selected imageFormatGroup is not supported by Android. Defaulting to yuv420");
            num = 35;
        }
        Size h11 = h10.h();
        this.f16032n = ImageReader.newInstance(h11.getWidth(), h11.getHeight(), num.intValue(), 1);
        m0.d(this.f16027i).openCamera(this.f16025g.t(), new a(h10), this.f16028j);
    }

    public void n0(MethodChannel.Result result) {
        Log.d("Camera", "pauseImageStream");
        x xVar = this.f16039u;
        xVar.f16057d = true;
        this.f16024f.j(xVar);
        result.success(Boolean.TRUE);
    }

    public void o0() {
        Log.d("Camera", "pausePreview");
        x xVar = this.f16039u;
        xVar.f16055b = true;
        this.f16024f.j(xVar);
        this.f16031m.stopRepeating();
    }

    @Override // android.media.MediaRecorder.OnErrorListener
    public void onError(MediaRecorder mediaRecorder, int i10, int i11) {
        Log.e("Camera", "MediaRecorder onError:" + ("what=" + i10 + ",extra=" + i11));
        if (this.f16039u.f16058e) {
            this.f16024f.n();
        }
    }

    public void p0(MethodChannel.Result result) {
        Log.d("Camera", "pauseVideoRecording");
        x xVar = this.f16039u;
        if (!xVar.f16058e) {
            result.success(null);
            return;
        }
        xVar.f16059f = true;
        try {
            this.f16034p.pause();
            this.f16024f.j(this.f16039u);
            result.success(null);
        } catch (IllegalStateException e10) {
            result.error("videoRecordingFailed", e10.getMessage(), null);
        }
    }

    public void t0(MethodChannel.Result result) {
        Log.d("Camera", "resumeImageStream");
        x xVar = this.f16039u;
        xVar.f16057d = false;
        this.f16024f.j(xVar);
        result.success(Boolean.TRUE);
    }

    public void u0() {
        Log.d("Camera", "resumePreview");
        this.f16039u.f16055b = false;
        s0(null, new p0() { // from class: fa.p
            @Override // fa.p0
            public final void a(String str, String str2) {
                u.this.T(str, str2);
            }
        });
    }

    public void v0(MethodChannel.Result result) {
        Log.d("Camera", "resumeVideoRecording");
        x xVar = this.f16039u;
        if (!xVar.f16058e) {
            result.success(null);
            return;
        }
        xVar.f16059f = false;
        try {
            this.f16034p.resume();
            this.f16024f.j(this.f16039u);
            result.success(null);
        } catch (IllegalStateException e10) {
            result.error("videoRecordingFailed", e10.getMessage(), null);
        }
    }

    public void w0(final MethodChannel.Result result, ia.b bVar) {
        ia.a c10 = this.f16019a.c();
        c10.e(bVar);
        c10.b(this.f16033o);
        s0(new Runnable() { // from class: fa.i
            @Override // java.lang.Runnable
            public final void run() {
                MethodChannel.Result.this.success(null);
            }
        }, new p0() { // from class: fa.j
            @Override // fa.p0
            public final void a(String str, String str2) {
                MethodChannel.Result.this.error("setExposureModeFailed", "Could not set exposure mode.", null);
            }
        });
    }

    public void x0(final MethodChannel.Result result, double d10) {
        final ja.a d11 = this.f16019a.d();
        d11.h(Double.valueOf(d10));
        d11.b(this.f16033o);
        s0(new Runnable() { // from class: fa.s
            @Override // java.lang.Runnable
            public final void run() {
                u.W(MethodChannel.Result.this, d11);
            }
        }, new p0() { // from class: fa.t
            @Override // fa.p0
            public final void a(String str, String str2) {
                MethodChannel.Result.this.error("setExposureOffsetFailed", "Could not set exposure offset.", null);
            }
        });
    }

    public void y0(final MethodChannel.Result result, ga.e eVar) {
        ka.a e10 = this.f16019a.e();
        e10.f(eVar);
        e10.b(this.f16033o);
        s0(new Runnable() { // from class: fa.n
            @Override // java.lang.Runnable
            public final void run() {
                MethodChannel.Result.this.success(null);
            }
        }, new p0() { // from class: fa.o
            @Override // fa.p0
            public final void a(String str, String str2) {
                MethodChannel.Result.this.error("setExposurePointFailed", "Could not set exposure point.", null);
            }
        });
    }

    public void z0(final MethodChannel.Result result, la.b bVar) {
        la.a f10 = this.f16019a.f();
        f10.d(bVar);
        f10.b(this.f16033o);
        s0(new Runnable() { // from class: fa.f
            @Override // java.lang.Runnable
            public final void run() {
                MethodChannel.Result.this.success(null);
            }
        }, new p0() { // from class: fa.g
            @Override // fa.p0
            public final void a(String str, String str2) {
                MethodChannel.Result.this.error("setFlashModeFailed", "Could not set flash mode.", null);
            }
        });
    }
}
