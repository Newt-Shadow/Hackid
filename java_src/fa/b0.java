package fa;

import android.app.Activity;
import android.hardware.camera2.CameraAccessException;
import android.media.Image;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import fa.d0;
import io.flutter.embedding.engine.systemchannels.PlatformChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.view.TextureRegistry;
import java.util.Map;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
/* loaded from: classes.dex */
public final class b0 implements MethodChannel.MethodCallHandler {

    /* renamed from: a  reason: collision with root package name */
    private final Activity f15943a;

    /* renamed from: b  reason: collision with root package name */
    private final BinaryMessenger f15944b;

    /* renamed from: c  reason: collision with root package name */
    private final d0 f15945c;

    /* renamed from: d  reason: collision with root package name */
    private final d0.b f15946d;

    /* renamed from: e  reason: collision with root package name */
    private final TextureRegistry f15947e;

    /* renamed from: f  reason: collision with root package name */
    private final MethodChannel f15948f;

    /* renamed from: g  reason: collision with root package name */
    private u f15949g;

    /* renamed from: h  reason: collision with root package name */
    private defpackage.b f15950h;

    public b0(Activity activity, BinaryMessenger messenger, d0 cameraPermissions, d0.b permissionsRegistry, TextureRegistry textureRegistry) {
        kotlin.jvm.internal.m.e(activity, "activity");
        kotlin.jvm.internal.m.e(messenger, "messenger");
        kotlin.jvm.internal.m.e(cameraPermissions, "cameraPermissions");
        kotlin.jvm.internal.m.e(permissionsRegistry, "permissionsRegistry");
        kotlin.jvm.internal.m.e(textureRegistry, "textureRegistry");
        this.f15943a = activity;
        this.f15944b = messenger;
        this.f15945c = cameraPermissions;
        this.f15946d = permissionsRegistry;
        this.f15947e = textureRegistry;
        MethodChannel methodChannel = new MethodChannel(messenger, "com.idsport.plugins.camera/actions");
        this.f15948f = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    private final void c(Exception exc, MethodChannel.Result result) {
        if (exc instanceof CameraAccessException) {
            result.error("CameraAccess", exc.getMessage(), null);
        } else {
            kotlin.jvm.internal.m.c(exc, "null cannot be cast to non-null type java.lang.RuntimeException");
            throw ((RuntimeException) exc);
        }
    }

    private final void d(MethodCall methodCall, MethodChannel.Result result) {
        boolean z10;
        boolean z11;
        String str = (String) methodCall.argument("cameraName");
        String str2 = (String) methodCall.argument("previewResolutionPreset");
        Boolean bool = (Boolean) methodCall.argument("useBackgroundThread");
        boolean z12 = true;
        if (bool != null) {
            z10 = bool.booleanValue();
        } else {
            z10 = true;
        }
        Boolean bool2 = (Boolean) methodCall.argument("abortCaptureSessionBeforeStarting");
        if (bool2 != null) {
            z12 = bool2.booleanValue();
        }
        boolean z13 = z12;
        Boolean bool3 = (Boolean) methodCall.argument("useOnlyLegacySurfaceConfig");
        if (bool3 != null) {
            z11 = bool3.booleanValue();
        } else {
            z11 = false;
        }
        boolean z14 = z11;
        ta.a a10 = ta.a.f30501h.a((Map) methodCall.argument("mediaRecorderSettings"));
        TextureRegistry.SurfaceTextureEntry createSurfaceTexture = this.f15947e.createSurfaceTexture();
        kotlin.jvm.internal.m.d(createSurfaceTexture, "createSurfaceTexture(...)");
        o0 o0Var = new o0(this.f15944b, createSurfaceTexture.id(), new Handler(Looper.getMainLooper()));
        h0 h0Var = new h0(str, m0.d(this.f15943a));
        kotlin.jvm.internal.m.b(str2);
        pa.g valueOf = pa.g.valueOf(str2);
        u uVar = this.f15949g;
        if (uVar != null && uVar != null) {
            try {
                uVar.K();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        this.f15949g = new u(this.f15943a, createSurfaceTexture, new ga.c(), o0Var, h0Var, valueOf, a10, z10, z13, z14, new q0() { // from class: fa.a0
            @Override // fa.q0
            public final void a(Image image) {
                b0.e(b0.this, image);
            }
        });
        result.success(Long.valueOf(createSurfaceTexture.id()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(b0 b0Var, Image image) {
        defpackage.b bVar = b0Var.f15950h;
        if (bVar != null) {
            kotlin.jvm.internal.m.b(image);
            bVar.a(image);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(MethodChannel.Result result, b0 b0Var, String str, String str2) {
        if (str == null) {
            try {
                result.success(Boolean.TRUE);
                return;
            } catch (Exception e10) {
                b0Var.c(e10, result);
                return;
            }
        }
        result.error(str, str2, null);
    }

    public final void g(defpackage.b bVar) {
        this.f15950h = bVar;
    }

    public final void h() {
        this.f15948f.setMethodCallHandler(null);
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, final MethodChannel.Result result) {
        int i10;
        Double d10;
        Double d11;
        kotlin.jvm.internal.m.e(call, "call");
        kotlin.jvm.internal.m.e(result, "result");
        Log.d("CameraHandled", "onMethodCall: " + call.method);
        String str = call.method;
        if (str != null) {
            Double d12 = null;
            switch (str.hashCode()) {
                case -2112280876:
                    if (str.equals("resumeImageStreaming")) {
                        try {
                            u uVar = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar);
                            uVar.t0(result);
                            return;
                        } catch (Exception e10) {
                            c(e10, result);
                            return;
                        }
                    }
                    break;
                case -2037208347:
                    if (str.equals("availableCameras")) {
                        try {
                            result.success(m0.b(this.f15943a));
                            return;
                        } catch (Exception e11) {
                            c(e11, result);
                            return;
                        }
                    }
                    break;
                case -2034856471:
                    if (str.equals("stopImageStreaming")) {
                        try {
                            u uVar2 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar2);
                            uVar2.M0(result);
                            return;
                        } catch (Exception e12) {
                            c(e12, result);
                            return;
                        }
                    }
                    break;
                case -1982465099:
                    if (str.equals("getMinZoomLevel")) {
                        u uVar3 = this.f15949g;
                        try {
                            kotlin.jvm.internal.m.b(uVar3);
                            result.success(Float.valueOf(uVar3.R()));
                            return;
                        } catch (Exception e13) {
                            c(e13, result);
                            return;
                        }
                    }
                    break;
                case -1928690655:
                    if (str.equals("getCameraHardwareLevel")) {
                        u uVar4 = this.f15949g;
                        if (uVar4 != null) {
                            i10 = uVar4.L();
                        } else {
                            i10 = -1;
                        }
                        result.success(Integer.valueOf(i10));
                        return;
                    }
                    break;
                case -1849130371:
                    if (str.equals("getExposureOffsetStepSize")) {
                        try {
                            u uVar5 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar5);
                            result.success(Double.valueOf(uVar5.N()));
                            return;
                        } catch (Exception e14) {
                            c(e14, result);
                            return;
                        }
                    }
                    break;
                case -1783353674:
                    if (str.equals("getMinExposureOffset")) {
                        try {
                            u uVar6 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar6);
                            result.success(Double.valueOf(uVar6.Q()));
                            return;
                        } catch (Exception e15) {
                            c(e15, result);
                            return;
                        }
                    }
                    break;
                case -1451020067:
                    if (str.equals("pauseImageStreaming")) {
                        try {
                            u uVar7 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar7);
                            uVar7.n0(result);
                            return;
                        } catch (Exception e16) {
                            c(e16, result);
                            return;
                        }
                    }
                    break;
                case -1352294148:
                    if (str.equals("create")) {
                        u uVar8 = this.f15949g;
                        if (uVar8 != null && uVar8 != null) {
                            try {
                                uVar8.E();
                            } catch (Exception unused) {
                            }
                        }
                        try {
                            d(call, result);
                            return;
                        } catch (Exception e17) {
                            c(e17, result);
                            return;
                        }
                    }
                    break;
                case -1313121483:
                    if (str.equals("lockCaptureOrientation")) {
                        try {
                            PlatformChannel.DeviceOrientation a10 = m0.a((String) call.argument("orientation"));
                            u uVar9 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar9);
                            uVar9.l0(a10);
                            result.success(null);
                            return;
                        } catch (Exception e18) {
                            c(e18, result);
                            return;
                        }
                    }
                    break;
                case -1151868548:
                    if (str.equals("setExposureOffset")) {
                        try {
                            u uVar10 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar10);
                            Object argument = call.argument(MimeTypesReaderMetKeys.MATCH_OFFSET_ATTR);
                            kotlin.jvm.internal.m.b(argument);
                            uVar10.x0(result, ((Number) argument).doubleValue());
                            return;
                        } catch (Exception e19) {
                            c(e19, result);
                            return;
                        }
                    }
                    break;
                case -1127151527:
                    if (str.equals("setFocusMode")) {
                        String str2 = (String) call.argument("mode");
                        ha.b b10 = ha.b.b(str2);
                        if (b10 == null) {
                            result.error("setFocusModeFailed", "Unknown focus mode " + str2, null);
                            return;
                        }
                        try {
                            u uVar11 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar11);
                            uVar11.A0(result, b10);
                            return;
                        } catch (Exception e20) {
                            c(e20, result);
                            return;
                        }
                    }
                    break;
                case -1120721617:
                    if (str.equals("setZoomLevel")) {
                        Double d13 = (Double) call.argument("zoom");
                        if (d13 == null) {
                            result.error("ZOOM_ERROR", "setZoomLevel is called without specifying a zoom level.", null);
                            return;
                        }
                        try {
                            u uVar12 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar12);
                            uVar12.E0(result, (float) d13.doubleValue());
                            return;
                        } catch (Exception e21) {
                            c(e21, result);
                            return;
                        }
                    }
                    break;
                case -1101389239:
                    if (str.equals("startImageStreaming")) {
                        try {
                            Object argument2 = call.argument("config");
                            kotlin.jvm.internal.m.b(argument2);
                            l0 a11 = l0.a((Map) argument2);
                            u uVar13 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar13);
                            uVar13.H0(a11, result);
                            return;
                        } catch (Exception e22) {
                            c(e22, result);
                            return;
                        }
                    }
                    break;
                case -1077837554:
                    if (str.equals("unlockCaptureOrientation")) {
                        try {
                            u uVar14 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar14);
                            uVar14.Q0();
                            result.success(null);
                            return;
                        } catch (Exception e23) {
                            c(e23, result);
                            return;
                        }
                    }
                    break;
                case -579183206:
                    if (str.equals("setFocusPoint")) {
                        Boolean bool = (Boolean) call.argument("reset");
                        if (bool != null && bool.booleanValue()) {
                            d10 = null;
                        } else {
                            d12 = (Double) call.argument("x");
                            d10 = (Double) call.argument("y");
                        }
                        try {
                            u uVar15 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar15);
                            uVar15.B0(result, new ga.e(d12, d10));
                            return;
                        } catch (Exception e24) {
                            c(e24, result);
                            return;
                        }
                    }
                    break;
                case -302763203:
                    if (str.equals("closeCamera")) {
                        try {
                            u uVar16 = this.f15949g;
                            if (uVar16 != null) {
                                uVar16.E();
                            }
                            this.f15949g = null;
                            result.success(null);
                            return;
                        } catch (Exception e25) {
                            c(e25, result);
                            return;
                        }
                    }
                    break;
                case -241558589:
                    if (str.equals("setMediaRecorderSettings")) {
                        try {
                            ta.a a12 = ta.a.f30501h.a((Map) call.argument("settings"));
                            u uVar17 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar17);
                            uVar17.D0(a12);
                            result.success(Boolean.TRUE);
                            return;
                        } catch (Exception e26) {
                            c(e26, result);
                            return;
                        }
                    }
                    break;
                case -216790955:
                    if (str.equals("initCamera")) {
                        u uVar18 = this.f15949g;
                        if (uVar18 != null) {
                            try {
                                kotlin.jvm.internal.m.b(uVar18);
                                uVar18.m0((String) call.argument("imageFormatGroup"));
                                result.success(null);
                                return;
                            } catch (Exception e27) {
                                c(e27, result);
                                return;
                            }
                        }
                        result.error("cameraNotFound", "Camera not found. Please call the 'create' method before calling 'initialize'.", null);
                        return;
                    }
                    break;
                case 109225283:
                    if (str.equals("resumeVideoRecording")) {
                        try {
                            u uVar19 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar19);
                            uVar19.v0(result);
                            return;
                        } catch (Exception e28) {
                            c(e28, result);
                            return;
                        }
                    }
                    break;
                case 186649688:
                    if (str.equals("stopVideoRecording")) {
                        try {
                            u uVar20 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar20);
                            uVar20.O0(result);
                            return;
                        } catch (Exception e29) {
                            c(e29, result);
                            return;
                        }
                    }
                    break;
                case 196568648:
                    if (str.equals("getMaxExposureOffset")) {
                        try {
                            u uVar21 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar21);
                            result.success(Double.valueOf(uVar21.O()));
                            return;
                        } catch (Exception e30) {
                            c(e30, result);
                            return;
                        }
                    }
                    break;
                case 391927665:
                    if (str.equals("setFlashMode")) {
                        String str3 = (String) call.argument("mode");
                        la.b b11 = la.b.b(str3);
                        if (b11 == null) {
                            result.error("setFlashModeFailed", "Unknown flash mode " + str3, null);
                            return;
                        }
                        try {
                            u uVar22 = this.f15949g;
                            if (uVar22 != null) {
                                uVar22.z0(result, b11);
                                xc.t tVar = xc.t.f32733a;
                                return;
                            }
                            return;
                        } catch (Exception e31) {
                            c(e31, result);
                            xc.t tVar2 = xc.t.f32733a;
                            return;
                        }
                    }
                    break;
                case 746581438:
                    if (str.equals("requestPermission")) {
                        this.f15945c.e(this.f15943a, this.f15946d, kotlin.jvm.internal.m.a(Boolean.TRUE, call.argument("enableAudio")), new d0.c() { // from class: fa.z
                            @Override // fa.d0.c
                            public final void a(String str4, String str5) {
                                b0.f(MethodChannel.Result.this, this, str4, str5);
                            }
                        });
                        return;
                    }
                    break;
                case 770486092:
                    if (str.equals("pauseVideoRecording")) {
                        try {
                            u uVar23 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar23);
                            uVar23.p0(result);
                            return;
                        } catch (Exception e32) {
                            c(e32, result);
                            return;
                        }
                    }
                    break;
                case 888134860:
                    if (str.equals("setExposureMode")) {
                        String str4 = (String) call.argument("mode");
                        ia.b b12 = ia.b.b(str4);
                        if (b12 == null) {
                            result.error("setExposureModeFailed", "Unknown exposure mode " + str4, null);
                            return;
                        }
                        try {
                            u uVar24 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar24);
                            uVar24.w0(result, b12);
                            return;
                        } catch (Exception e33) {
                            c(e33, result);
                            return;
                        }
                    }
                    break;
                case 888641243:
                    if (str.equals("resumePreview")) {
                        try {
                            u uVar25 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar25);
                            uVar25.u0();
                            result.success(null);
                            return;
                        } catch (Exception e34) {
                            c(e34, result);
                            return;
                        }
                    }
                    break;
                case 1120116920:
                    if (str.equals("startVideoRecording")) {
                        try {
                            Object argument3 = call.argument("outputDirPath");
                            kotlin.jvm.internal.m.b(argument3);
                            Object argument4 = call.argument("config");
                            kotlin.jvm.internal.m.b(argument4);
                            l0 a13 = l0.a((Map) argument4);
                            u uVar26 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar26);
                            uVar26.J0(a13, (String) argument3, result);
                            return;
                        } catch (Exception e35) {
                            c(e35, result);
                            return;
                        }
                    }
                    break;
                case 1422316786:
                    if (str.equals("pausePreview")) {
                        try {
                            u uVar27 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar27);
                            uVar27.o0();
                            result.success(null);
                            return;
                        } catch (Exception e36) {
                            c(e36, result);
                            return;
                        }
                    }
                    break;
                case 1671767583:
                    if (str.equals("dispose")) {
                        try {
                            u uVar28 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar28);
                            uVar28.K();
                            this.f15949g = null;
                            result.success(null);
                            return;
                        } catch (Exception e37) {
                            c(e37, result);
                            return;
                        }
                    }
                    break;
                case 1765152647:
                    if (str.equals("setExposurePoint")) {
                        Boolean bool2 = (Boolean) call.argument("reset");
                        if (bool2 != null && bool2.booleanValue()) {
                            d11 = null;
                        } else {
                            d12 = (Double) call.argument("x");
                            d11 = (Double) call.argument("y");
                        }
                        try {
                            u uVar29 = this.f15949g;
                            kotlin.jvm.internal.m.b(uVar29);
                            uVar29.y0(result, new ga.e(d12, d11));
                            return;
                        } catch (Exception e38) {
                            c(e38, result);
                            return;
                        }
                    }
                    break;
                case 1838076131:
                    if (str.equals("getMaxZoomLevel")) {
                        u uVar30 = this.f15949g;
                        try {
                            kotlin.jvm.internal.m.b(uVar30);
                            result.success(Float.valueOf(uVar30.P()));
                            return;
                        } catch (Exception e39) {
                            c(e39, result);
                            return;
                        }
                    }
                    break;
            }
        }
        result.notImplemented();
    }
}
