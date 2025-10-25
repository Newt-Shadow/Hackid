package me;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugin.platform.PlatformView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import xa.j;
import xc.k;
import xc.q;
import xc.t;
import yc.h0;
import yc.o;
import yc.p;
/* loaded from: classes2.dex */
public final class e implements PlatformView, MethodChannel.MethodCallHandler, PluginRegistry.RequestPermissionsResultListener {

    /* renamed from: m  reason: collision with root package name */
    public static final a f26026m = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Context f26027a;

    /* renamed from: b  reason: collision with root package name */
    private final int f26028b;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap f26029c;

    /* renamed from: d  reason: collision with root package name */
    private final int f26030d;

    /* renamed from: e  reason: collision with root package name */
    private final MethodChannel f26031e;

    /* renamed from: f  reason: collision with root package name */
    private final int f26032f;

    /* renamed from: g  reason: collision with root package name */
    private final int f26033g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f26034h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f26035i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f26036j;

    /* renamed from: k  reason: collision with root package name */
    private me.a f26037k;

    /* renamed from: l  reason: collision with root package name */
    private i f26038l;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements xa.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ List f26039a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ e f26040b;

        b(List list, e eVar) {
            this.f26039a = list;
            this.f26040b = eVar;
        }

        @Override // xa.a
        public void a(xa.b result) {
            Map h10;
            m.e(result, "result");
            if (this.f26039a.isEmpty() || this.f26039a.contains(result.a())) {
                h10 = h0.h(q.a("code", result.e()), q.a("type", result.a().name()), q.a("rawBytes", result.c()));
                this.f26040b.f26031e.invokeMethod("onRecognizeQR", h10);
            }
        }

        @Override // xa.a
        public void b(List resultPoints) {
            m.e(resultPoints, "resultPoints");
        }
    }

    public e(Context context, BinaryMessenger messenger, int i10, HashMap params) {
        i iVar;
        m.e(context, "context");
        m.e(messenger, "messenger");
        m.e(params, "params");
        this.f26027a = context;
        this.f26028b = i10;
        this.f26029c = params;
        this.f26030d = 513469796 + i10;
        MethodChannel methodChannel = new MethodChannel(messenger, "net.touchcapture.qr.flutterqr/qrview_" + i10);
        this.f26031e = methodChannel;
        this.f26033g = 1;
        h hVar = h.f26045a;
        ActivityPluginBinding b10 = hVar.b();
        if (b10 != null) {
            b10.addRequestPermissionsResultListener(this);
        }
        methodChannel.setMethodCallHandler(this);
        Activity a10 = hVar.a();
        if (a10 != null) {
            iVar = g.a(a10, new id.a() { // from class: me.c
                @Override // id.a
                public final Object invoke() {
                    t c10;
                    c10 = e.c(e.this);
                    return c10;
                }
            }, new id.a() { // from class: me.d
                @Override // id.a
                public final Object invoke() {
                    t d10;
                    d10 = e.d(e.this);
                    return d10;
                }
            });
        } else {
            iVar = null;
        }
        this.f26038l = iVar;
    }

    private final void A(MethodChannel.Result result) {
        me.a aVar = this.f26037k;
        if (aVar == null) {
            f(result);
        } else if (q()) {
            aVar.setTorch(!this.f26035i);
            boolean z10 = !this.f26035i;
            this.f26035i = z10;
            result.success(Boolean.valueOf(z10));
        } else {
            result.error("404", "This device doesn't support flash", null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t c(e eVar) {
        me.a aVar;
        if (!eVar.f26036j && eVar.n() && (aVar = eVar.f26037k) != null) {
            aVar.u();
        }
        return t.f32733a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t d(e eVar) {
        me.a aVar;
        if (!eVar.n() && !eVar.f26034h) {
            eVar.h();
        } else if (!eVar.f26036j && eVar.n() && (aVar = eVar.f26037k) != null) {
            aVar.y();
        }
        return t.f32733a;
    }

    private final void f(MethodChannel.Result result) {
        result.error("404", "No barcode view found", null);
    }

    private final void g(double d10, double d11, double d12, MethodChannel.Result result) {
        x(d10, d11, d12);
        result.success(Boolean.TRUE);
    }

    private final void h() {
        Activity a10;
        if (n()) {
            this.f26031e.invokeMethod("onPermissionSet", Boolean.TRUE);
        } else if (!this.f26034h && (a10 = h.f26045a.a()) != null) {
            a10.requestPermissions(new String[]{"android.permission.CAMERA"}, this.f26030d);
        }
    }

    private final int i(double d10) {
        return (int) (d10 * this.f26027a.getResources().getDisplayMetrics().density);
    }

    private final void j(MethodChannel.Result result) {
        me.a aVar = this.f26037k;
        if (aVar == null) {
            f(result);
            return;
        }
        aVar.u();
        ya.i cameraSettings = aVar.getCameraSettings();
        int b10 = cameraSettings.b();
        int i10 = this.f26033g;
        if (b10 == i10) {
            cameraSettings.i(this.f26032f);
        } else {
            cameraSettings.i(i10);
        }
        aVar.y();
        result.success(Integer.valueOf(cameraSettings.b()));
    }

    private final List k(List list, MethodChannel.Result result) {
        List arrayList;
        int r10;
        List h10;
        if (list != null) {
            try {
                List<Number> list2 = list;
                r10 = p.r(list2, 10);
                arrayList = new ArrayList(r10);
                for (Number number : list2) {
                    arrayList.add(d9.a.values()[number.intValue()]);
                }
            } catch (Exception e10) {
                result.error("", e10.getMessage(), null);
                h10 = o.h();
                return h10;
            }
        } else {
            arrayList = null;
        }
        if (arrayList == null) {
            arrayList = o.h();
        }
        return arrayList;
    }

    private final void l(MethodChannel.Result result) {
        me.a aVar = this.f26037k;
        if (aVar == null) {
            f(result);
        } else {
            result.success(Integer.valueOf(aVar.getCameraSettings().b()));
        }
    }

    private final void m(MethodChannel.Result result) {
        if (this.f26037k == null) {
            f(result);
        } else {
            result.success(Boolean.valueOf(this.f26035i));
        }
    }

    private final boolean n() {
        if (androidx.core.content.a.a(this.f26027a, "android.permission.CAMERA") == 0) {
            return true;
        }
        return false;
    }

    private final void o(MethodChannel.Result result) {
        Integer num;
        Map h10;
        ya.i cameraSettings;
        try {
            k[] kVarArr = new k[4];
            kVarArr[0] = q.a("hasFrontCamera", Boolean.valueOf(r()));
            kVarArr[1] = q.a("hasBackCamera", Boolean.valueOf(p()));
            kVarArr[2] = q.a("hasFlash", Boolean.valueOf(q()));
            me.a aVar = this.f26037k;
            if (aVar != null && (cameraSettings = aVar.getCameraSettings()) != null) {
                num = Integer.valueOf(cameraSettings.b());
            } else {
                num = null;
            }
            kVarArr[3] = q.a("activeCamera", num);
            h10 = h0.h(kVarArr);
            result.success(h10);
        } catch (Exception e10) {
            result.error("", e10.getMessage(), null);
        }
    }

    private final boolean p() {
        return s("android.hardware.camera");
    }

    private final boolean q() {
        return s("android.hardware.camera.flash");
    }

    private final boolean r() {
        return s("android.hardware.camera.front");
    }

    private final boolean s(String str) {
        return this.f26027a.getPackageManager().hasSystemFeature(str);
    }

    private final me.a t() {
        ya.i cameraSettings;
        me.a aVar = this.f26037k;
        if (aVar == null) {
            aVar = new me.a(h.f26045a.a());
            this.f26037k = aVar;
            aVar.setDecoderFactory(new j(null, null, null, 2));
            Object obj = this.f26029c.get("cameraFacing");
            m.c(obj, "null cannot be cast to non-null type kotlin.Int");
            if (((Integer) obj).intValue() == 1 && (cameraSettings = aVar.getCameraSettings()) != null) {
                cameraSettings.i(this.f26033g);
            }
        } else if (!this.f26036j) {
            aVar.y();
        }
        return aVar;
    }

    private final void u(MethodChannel.Result result) {
        me.a aVar = this.f26037k;
        if (aVar == null) {
            f(result);
            return;
        }
        if (aVar.t()) {
            this.f26036j = true;
            aVar.u();
        }
        result.success(Boolean.TRUE);
    }

    private final void v(MethodChannel.Result result) {
        me.a aVar = this.f26037k;
        if (aVar == null) {
            f(result);
            return;
        }
        if (!aVar.t()) {
            this.f26036j = false;
            aVar.y();
        }
        result.success(Boolean.TRUE);
    }

    private final void w(boolean z10) {
        me.a aVar = this.f26037k;
        if (aVar == null) {
            return;
        }
        aVar.u();
        aVar.getCameraSettings().j(z10);
        aVar.y();
    }

    private final void x(double d10, double d11, double d12) {
        me.a aVar = this.f26037k;
        if (aVar != null) {
            aVar.O(i(d10), i(d11), i(d12));
        }
    }

    private final void y(List list, MethodChannel.Result result) {
        h();
        List k10 = k(list, result);
        if (list == null) {
            me.a aVar = this.f26037k;
            if (aVar != null) {
                aVar.setDecoderFactory(new j(null, null, null, 2));
            }
        } else {
            me.a aVar2 = this.f26037k;
            if (aVar2 != null) {
                aVar2.setDecoderFactory(new j(k10, null, null, 2));
            }
        }
        me.a aVar3 = this.f26037k;
        if (aVar3 != null) {
            aVar3.I(new b(k10, this));
        }
    }

    private final void z() {
        me.a aVar = this.f26037k;
        if (aVar != null) {
            aVar.N();
        }
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void dispose() {
        i iVar = this.f26038l;
        if (iVar != null) {
            iVar.a();
        }
        ActivityPluginBinding b10 = h.f26045a.b();
        if (b10 != null) {
            b10.removeRequestPermissionsResultListener(this);
        }
        me.a aVar = this.f26037k;
        if (aVar != null) {
            aVar.u();
        }
        this.f26037k = null;
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public View getView() {
        return t();
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        List list;
        boolean z10;
        m.e(call, "call");
        m.e(result, "result");
        String str = call.method;
        if (str != null) {
            switch (str.hashCode()) {
                case -2129330689:
                    if (str.equals("startScan")) {
                        Object obj = call.arguments;
                        if (obj instanceof List) {
                            list = (List) obj;
                        } else {
                            list = null;
                        }
                        y(list, result);
                        return;
                    }
                    break;
                case -2110134142:
                    if (str.equals("getSystemFeatures")) {
                        o(result);
                        return;
                    }
                    break;
                case -1824838201:
                    if (str.equals("stopCamera")) {
                        u(result);
                        return;
                    }
                    break;
                case -1176613766:
                    if (str.equals("changeScanArea")) {
                        Object argument = call.argument("scanAreaWidth");
                        if (argument != null) {
                            double doubleValue = ((Number) argument).doubleValue();
                            Object argument2 = call.argument("scanAreaHeight");
                            if (argument2 != null) {
                                double doubleValue2 = ((Number) argument2).doubleValue();
                                Object argument3 = call.argument("cutOutBottomOffset");
                                if (argument3 != null) {
                                    g(doubleValue, doubleValue2, ((Number) argument3).doubleValue(), result);
                                    return;
                                }
                                throw new IllegalArgumentException("Required value was null.".toString());
                            }
                            throw new IllegalArgumentException("Required value was null.".toString());
                        }
                        throw new IllegalArgumentException("Required value was null.".toString());
                    }
                    break;
                case -1157185016:
                    if (str.equals("getFlashInfo")) {
                        m(result);
                        return;
                    }
                    break;
                case -668845828:
                    if (str.equals("toggleFlash")) {
                        A(result);
                        return;
                    }
                    break;
                case 437643762:
                    if (str.equals("flipCamera")) {
                        j(result);
                        return;
                    }
                    break;
                case 1026482610:
                    if (str.equals("resumeCamera")) {
                        v(result);
                        return;
                    }
                    break;
                case 1669188213:
                    if (str.equals("requestPermissions")) {
                        h();
                        return;
                    }
                    break;
                case 1714778527:
                    if (str.equals("stopScan")) {
                        z();
                        return;
                    }
                    break;
                case 1899593587:
                    if (str.equals("invertScan")) {
                        Boolean bool = (Boolean) call.argument("isInvertScan");
                        if (bool != null) {
                            z10 = bool.booleanValue();
                        } else {
                            z10 = false;
                        }
                        w(z10);
                        return;
                    }
                    break;
                case 1984772457:
                    if (str.equals("getCameraInfo")) {
                        l(result);
                        return;
                    }
                    break;
                case 2013529275:
                    if (str.equals("pauseCamera")) {
                        u(result);
                        return;
                    }
                    break;
            }
        }
        result.notImplemented();
    }

    @Override // io.flutter.plugin.common.PluginRegistry.RequestPermissionsResultListener
    public boolean onRequestPermissionsResult(int i10, String[] permissions, int[] grantResults) {
        Integer w10;
        m.e(permissions, "permissions");
        m.e(grantResults, "grantResults");
        boolean z10 = false;
        if (i10 != this.f26030d) {
            return false;
        }
        this.f26034h = false;
        w10 = yc.k.w(grantResults);
        if (w10 != null && w10.intValue() == 0) {
            z10 = true;
        }
        this.f26031e.invokeMethod("onPermissionSet", Boolean.valueOf(z10));
        return z10;
    }
}
