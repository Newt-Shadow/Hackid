package ca;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.Image;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.PluginRegistry;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.firebase.crashlytics.Constants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.opencv.android.Utils;
import org.opencv.core.Mat;
/* loaded from: classes.dex */
public final class c extends defpackage.b implements FlutterPlugin, ActivityAware {

    /* renamed from: h  reason: collision with root package name */
    public static final a f5103h = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private Activity f5104a;

    /* renamed from: b  reason: collision with root package name */
    private FlutterPlugin.FlutterPluginBinding f5105b;

    /* renamed from: c  reason: collision with root package name */
    private MethodChannel f5106c;

    /* renamed from: d  reason: collision with root package name */
    private EventChannel f5107d;

    /* renamed from: e  reason: collision with root package name */
    private EventChannel.EventSink f5108e;

    /* renamed from: f  reason: collision with root package name */
    private Mat f5109f;

    /* renamed from: g  reason: collision with root package name */
    private Mat f5110g;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements EventChannel.StreamHandler {
        b() {
        }

        @Override // io.flutter.plugin.common.EventChannel.StreamHandler
        public void onCancel(Object obj) {
            c.this.f5108e = null;
        }

        @Override // io.flutter.plugin.common.EventChannel.StreamHandler
        public void onListen(Object obj, EventChannel.EventSink eventSink) {
            c.this.f5108e = eventSink;
        }
    }

    static {
        System.loadLibrary("opencv_java4");
    }

    private final void f(Activity activity, ActivityPluginBinding activityPluginBinding) {
        this.f5104a = activity;
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding = this.f5105b;
        m.b(flutterPluginBinding);
        EventChannel eventChannel = new EventChannel(flutterPluginBinding.getBinaryMessenger(), "com.idsport.recognition.core.imagestream/events");
        this.f5107d = eventChannel;
        eventChannel.setStreamHandler(new b());
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding2 = this.f5105b;
        m.b(flutterPluginBinding2);
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding2.getBinaryMessenger(), "com.idsport.recognition.core.imagestream/actions");
        this.f5106c = methodChannel;
        methodChannel.setMethodCallHandler(new MethodChannel.MethodCallHandler() { // from class: ca.a
            @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
            public final void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
                c.g(c.this, methodCall, result);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(c cVar, MethodCall call, MethodChannel.Result result) {
        m.e(call, "call");
        m.e(result, "result");
        String str = call.method;
        if (str != null) {
            int hashCode = str.hashCode();
            if (hashCode != -1517145127) {
                if (hashCode != 638724379) {
                    if (hashCode == 1607609430 && str.equals("convertFileToMat")) {
                        try {
                            Mat mat = cVar.f5110g;
                            if (mat != null) {
                                mat.h();
                            }
                        } catch (Exception unused) {
                        }
                        try {
                            String str2 = (String) call.argument(Constants.FILE);
                            if (str2 != null) {
                                Bitmap decodeFile = BitmapFactory.decodeFile(str2);
                                Mat mat2 = new Mat();
                                cVar.f5110g = mat2;
                                m.b(mat2);
                                Utils.a(decodeFile, mat2);
                                Mat mat3 = cVar.f5110g;
                                m.b(mat3);
                                result.success(Long.valueOf(mat3.d()));
                                return;
                            }
                            result.error("convertFileToMat invalid args", null, null);
                        } catch (Exception unused2) {
                            result.error("convertFileToMat exception", CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE, null);
                        }
                    }
                } else if (str.equals("releaseCurrentFrame")) {
                    try {
                        Mat mat4 = cVar.f5109f;
                        if (mat4 != null) {
                            mat4.h();
                        }
                    } catch (Exception unused3) {
                    }
                    cVar.f5109f = null;
                    result.success(null);
                }
            } else if (str.equals("releaseMat")) {
                try {
                    Mat mat5 = cVar.f5110g;
                    if (mat5 != null) {
                        mat5.h();
                    }
                } catch (Exception unused4) {
                }
                result.success(null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(c cVar) {
        Mat mat = cVar.f5109f;
        m.b(mat);
        long d10 = mat.d();
        EventChannel.EventSink eventSink = cVar.f5108e;
        if (eventSink != null) {
            eventSink.success(Long.valueOf(d10));
        }
    }

    @Override // defpackage.b
    public void a(Image image) {
        m.e(image, "image");
        if (this.f5108e != null && this.f5109f == null) {
            try {
                this.f5109f = da.a.a(image);
                Activity activity = this.f5104a;
                if (activity != null) {
                    activity.runOnUiThread(new Runnable() { // from class: ca.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            c.h(c.this);
                        }
                    });
                }
            } catch (Exception unused) {
                this.f5109f = null;
            }
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        f(binding.getActivity(), binding);
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding = this.f5105b;
        m.b(flutterPluginBinding);
        PluginRegistry plugins = flutterPluginBinding.getFlutterEngine().getPlugins();
        m.d(plugins, "getPlugins(...)");
        b(plugins, "MobileCorePlugin", this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        this.f5105b = binding;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        MethodChannel methodChannel = this.f5106c;
        if (methodChannel == null) {
            return;
        }
        if (methodChannel != null) {
            methodChannel.setMethodCallHandler(null);
        }
        EventChannel eventChannel = this.f5107d;
        if (eventChannel != null) {
            eventChannel.setStreamHandler(null);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        this.f5105b = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        onAttachedToActivity(binding);
    }
}
