package va;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import java.io.FileNotFoundException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Map;
import java.util.Objects;
import va.e;
/* loaded from: classes.dex */
public class e implements MethodChannel.MethodCallHandler, FlutterPlugin {

    /* renamed from: a  reason: collision with root package name */
    private MethodChannel f31323a;

    /* renamed from: b  reason: collision with root package name */
    private va.a f31324b;

    /* renamed from: c  reason: collision with root package name */
    private HandlerThread f31325c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f31326d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a implements MethodChannel.Result {

        /* renamed from: a  reason: collision with root package name */
        private final MethodChannel.Result f31327a;

        /* renamed from: b  reason: collision with root package name */
        private final Handler f31328b = new Handler(Looper.getMainLooper());

        a(MethodChannel.Result result) {
            this.f31327a = result;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(String str, String str2, Object obj) {
            this.f31327a.error(str, str2, obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(Object obj) {
            this.f31327a.success(obj);
        }

        @Override // io.flutter.plugin.common.MethodChannel.Result
        public void error(final String str, final String str2, final Object obj) {
            this.f31328b.post(new Runnable() { // from class: va.c
                @Override // java.lang.Runnable
                public final void run() {
                    e.a.this.c(str, str2, obj);
                }
            });
        }

        @Override // io.flutter.plugin.common.MethodChannel.Result
        public void notImplemented() {
            Handler handler = this.f31328b;
            final MethodChannel.Result result = this.f31327a;
            Objects.requireNonNull(result);
            handler.post(new Runnable() { // from class: va.b
                @Override // java.lang.Runnable
                public final void run() {
                    MethodChannel.Result.this.notImplemented();
                }
            });
        }

        @Override // io.flutter.plugin.common.MethodChannel.Result
        public void success(final Object obj) {
            this.f31328b.post(new Runnable() { // from class: va.d
                @Override // java.lang.Runnable
                public final void run() {
                    e.a.this.d(obj);
                }
            });
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final MethodCall f31329a;

        /* renamed from: b  reason: collision with root package name */
        private final MethodChannel.Result f31330b;

        b(MethodCall methodCall, MethodChannel.Result result) {
            this.f31329a = methodCall;
            this.f31330b = result;
        }

        private void a(Exception exc) {
            StringWriter stringWriter = new StringWriter();
            exc.printStackTrace(new PrintWriter(stringWriter));
            this.f31330b.error("Exception encountered", this.f31329a.method, stringWriter.toString());
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            Exception e10;
            char c10 = 0;
            try {
                try {
                    e.this.f31324b.f31310e = (Map) ((Map) this.f31329a.arguments).get("options");
                    z10 = e.this.f31324b.g();
                } catch (Exception e11) {
                    z10 = false;
                    e10 = e11;
                }
                try {
                    String str = this.f31329a.method;
                    switch (str.hashCode()) {
                        case -1335458389:
                            if (str.equals("delete")) {
                                c10 = 4;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case -358737930:
                            if (str.equals("deleteAll")) {
                                c10 = 5;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 3496342:
                            if (str.equals("read")) {
                                c10 = 1;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 113399775:
                            if (str.equals("write")) {
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 208013248:
                            if (str.equals("containsKey")) {
                                c10 = 3;
                                break;
                            }
                            c10 = 65535;
                            break;
                        case 1080375339:
                            if (str.equals("readAll")) {
                                c10 = 2;
                                break;
                            }
                            c10 = 65535;
                            break;
                        default:
                            c10 = 65535;
                            break;
                    }
                    if (c10 == 0) {
                        String e12 = e.this.e(this.f31329a);
                        String f10 = e.this.f(this.f31329a);
                        if (f10 != null) {
                            e.this.f31324b.n(e12, f10);
                            this.f31330b.success(null);
                            return;
                        }
                        this.f31330b.error("null", null, null);
                    } else if (c10 == 1) {
                        String e13 = e.this.e(this.f31329a);
                        if (e.this.f31324b.b(e13)) {
                            this.f31330b.success(e.this.f31324b.l(e13));
                            return;
                        }
                        this.f31330b.success(null);
                    } else if (c10 != 2) {
                        if (c10 == 3) {
                            this.f31330b.success(Boolean.valueOf(e.this.f31324b.b(e.this.e(this.f31329a))));
                        } else if (c10 == 4) {
                            e.this.f31324b.d(e.this.e(this.f31329a));
                            this.f31330b.success(null);
                        } else if (c10 != 5) {
                            this.f31330b.notImplemented();
                        } else {
                            e.this.f31324b.e();
                            this.f31330b.success(null);
                        }
                    } else {
                        this.f31330b.success(e.this.f31324b.m());
                    }
                } catch (Exception e14) {
                    e10 = e14;
                    if (z10) {
                        try {
                            e.this.f31324b.e();
                            this.f31330b.success("Data has been reset");
                            return;
                        } catch (Exception e15) {
                            a(e15);
                            return;
                        }
                    }
                    a(e10);
                }
            } catch (FileNotFoundException e16) {
                Log.i("Creating sharedPrefs", e16.getLocalizedMessage());
            }
        }
    }

    private String d(String str) {
        return this.f31324b.f31309d + "_" + str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String e(MethodCall methodCall) {
        return d((String) ((Map) methodCall.arguments).get("key"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String f(MethodCall methodCall) {
        return (String) ((Map) methodCall.arguments).get("value");
    }

    public void g(BinaryMessenger binaryMessenger, Context context) {
        try {
            this.f31324b = new va.a(context);
            HandlerThread handlerThread = new HandlerThread("com.it_nomads.fluttersecurestorage.worker");
            this.f31325c = handlerThread;
            handlerThread.start();
            this.f31326d = new Handler(this.f31325c.getLooper());
            MethodChannel methodChannel = new MethodChannel(binaryMessenger, "plugins.it_nomads.com/flutter_secure_storage");
            this.f31323a = methodChannel;
            methodChannel.setMethodCallHandler(this);
        } catch (Exception e10) {
            Log.e("FlutterSecureStoragePl", "Registration failed", e10);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        g(flutterPluginBinding.getBinaryMessenger(), flutterPluginBinding.getApplicationContext());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        if (this.f31323a != null) {
            this.f31325c.quitSafely();
            this.f31325c = null;
            this.f31323a.setMethodCallHandler(null);
            this.f31323a = null;
        }
        this.f31324b = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        this.f31326d.post(new b(methodCall, new a(result)));
    }
}
