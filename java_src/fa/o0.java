package fa;

import android.os.Handler;
import android.text.TextUtils;
import io.flutter.embedding.engine.systemchannels.PlatformChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class o0 {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f15980a;

    /* renamed from: b  reason: collision with root package name */
    private MethodChannel f15981b;

    /* renamed from: c  reason: collision with root package name */
    private MethodChannel f15982c;

    /* loaded from: classes.dex */
    class a extends HashMap {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PlatformChannel.DeviceOrientation f15983a;

        a(PlatformChannel.DeviceOrientation deviceOrientation) {
            this.f15983a = deviceOrientation;
            put("orientation", m0.e(deviceOrientation));
        }
    }

    /* loaded from: classes.dex */
    class b extends HashMap {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Integer f15985a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Integer f15986b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ia.b f15987c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ ha.b f15988d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Boolean f15989e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Boolean f15990f;

        b(Integer num, Integer num2, ia.b bVar, ha.b bVar2, Boolean bool, Boolean bool2) {
            this.f15985a = num;
            this.f15986b = num2;
            this.f15987c = bVar;
            this.f15988d = bVar2;
            this.f15989e = bool;
            this.f15990f = bool2;
            put("previewWidth", Double.valueOf(num.doubleValue()));
            put("previewHeight", Double.valueOf(num2.doubleValue()));
            put("exposureMode", bVar.toString());
            put("focusMode", bVar2.toString());
            put("exposurePointSupported", bool);
            put("focusPointSupported", bool2);
        }
    }

    /* loaded from: classes.dex */
    class c extends HashMap {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15992a;

        c(String str) {
            this.f15992a = str;
            if (!TextUtils.isEmpty(str)) {
                put("description", str);
            }
        }
    }

    /* loaded from: classes.dex */
    class d extends HashMap {
        d() {
            put("description", "MEDIA_RECORDER_ERROR");
        }
    }

    /* loaded from: classes.dex */
    class e extends HashMap {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f15995a;

        e(String str) {
            this.f15995a = str;
            put("videoFilePath", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f15997a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f15998b;

        f(h hVar, Map map) {
            this.f15997a = hVar;
            this.f15998b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.this.f15981b.invokeMethod(this.f15997a.f16009a, this.f15998b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f16000a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Map f16001b;

        g(i iVar, Map map) {
            this.f16000a = iVar;
            this.f16001b = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            o0.this.f15982c.invokeMethod(this.f16000a.f16012a, this.f16001b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum h {
        ERROR("error"),
        CLOSING("camera_closing"),
        INITIALIZED("initialized"),
        CONFIG_UPDATED("config_updated"),
        NEW_VIDEO_FILE_CREATED("video_file_created");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f16009a;

        h(String str) {
            this.f16009a = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum i {
        ORIENTATION_CHANGED("orientation_changed");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f16012a;

        i(String str) {
            this.f16012a = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public o0(BinaryMessenger binaryMessenger, long j10, Handler handler) {
        this.f15981b = new MethodChannel(binaryMessenger, "com.idsport.plugins.camera/camera" + j10);
        this.f15982c = new MethodChannel(binaryMessenger, "com.idsport.plugins.camera/device");
        this.f15980a = handler;
    }

    private void f(h hVar) {
        g(hVar, new HashMap());
    }

    private void g(h hVar, Map map) {
        if (this.f15981b == null) {
            return;
        }
        this.f15980a.post(new f(hVar, map));
    }

    private void h(i iVar, Map map) {
        if (this.f15982c == null) {
            return;
        }
        this.f15980a.post(new g(iVar, map));
    }

    public void d(final MethodChannel.Result result, final String str, final String str2, final Object obj) {
        this.f15980a.post(new Runnable() { // from class: fa.n0
            @Override // java.lang.Runnable
            public final void run() {
                MethodChannel.Result.this.error(str, str2, obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i() {
        f(h.CLOSING);
    }

    public void j(x xVar) {
        g(h.CONFIG_UPDATED, xVar.d());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(String str) {
        g(h.ERROR, new c(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l(Integer num, Integer num2, ia.b bVar, ha.b bVar2, Boolean bool, Boolean bool2) {
        g(h.INITIALIZED, new b(num, num2, bVar, bVar2, bool, bool2));
    }

    public void m(PlatformChannel.DeviceOrientation deviceOrientation) {
        h(i.ORIENTATION_CHANGED, new a(deviceOrientation));
    }

    public void n() {
        g(h.ERROR, new d());
    }

    public void o(String str) {
        g(h.NEW_VIDEO_FILE_CREATED, new e(str));
    }
}
