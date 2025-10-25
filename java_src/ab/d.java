package ab;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import com.arthenica.ffmpegkit.MediaInformation;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.EventChannel;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.json.JSONArray;
import org.json.JSONObject;
import rd.x;
import yc.k;
import yc.n;
import yc.o;
/* loaded from: classes.dex */
public final class d implements FlutterPlugin, ActivityAware, MethodChannel.MethodCallHandler, EventChannel.StreamHandler, PluginRegistry.NewIntentListener {

    /* renamed from: a  reason: collision with root package name */
    private JSONArray f273a;

    /* renamed from: b  reason: collision with root package name */
    private JSONArray f274b;

    /* renamed from: c  reason: collision with root package name */
    private EventChannel.EventSink f275c;

    /* renamed from: d  reason: collision with root package name */
    private ActivityPluginBinding f276d;

    /* renamed from: e  reason: collision with root package name */
    private Context f277e;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: b  reason: collision with root package name */
        public static final C0008a f278b;

        /* renamed from: c  reason: collision with root package name */
        public static final a f279c = new a("IMAGE", 0, "image");

        /* renamed from: d  reason: collision with root package name */
        public static final a f280d = new a("VIDEO", 1, "video");

        /* renamed from: e  reason: collision with root package name */
        public static final a f281e = new a("TEXT", 2, "text");

        /* renamed from: f  reason: collision with root package name */
        public static final a f282f = new a("FILE", 3, Constants.FILE);

        /* renamed from: g  reason: collision with root package name */
        public static final a f283g = new a("URL", 4, "url");

        /* renamed from: h  reason: collision with root package name */
        private static final /* synthetic */ a[] f284h;

        /* renamed from: i  reason: collision with root package name */
        private static final /* synthetic */ cd.a f285i;

        /* renamed from: a  reason: collision with root package name */
        private final String f286a;

        /* renamed from: ab.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0008a {
            private C0008a() {
            }

            public /* synthetic */ C0008a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX WARN: Code restructure failed: missing block: B:19:0x0030, code lost:
                if (r6 == true) goto L20;
             */
            /* JADX WARN: Removed duplicated region for block: B:10:0x0016  */
            /* JADX WARN: Removed duplicated region for block: B:16:0x0025  */
            /* JADX WARN: Removed duplicated region for block: B:17:0x0028  */
            /* JADX WARN: Removed duplicated region for block: B:9:0x0013  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final ab.d.a a(java.lang.String r6) {
                /*
                    r5 = this;
                    r0 = 0
                    r1 = 2
                    r2 = 1
                    r3 = 0
                    if (r6 == 0) goto L10
                    java.lang.String r4 = "image"
                    boolean r4 = rd.n.H(r6, r4, r3, r1, r0)
                    if (r4 != r2) goto L10
                    r4 = r2
                    goto L11
                L10:
                    r4 = r3
                L11:
                    if (r4 == 0) goto L16
                    ab.d$a r6 = ab.d.a.f279c
                    goto L3b
                L16:
                    if (r6 == 0) goto L22
                    java.lang.String r4 = "video"
                    boolean r4 = rd.n.H(r6, r4, r3, r1, r0)
                    if (r4 != r2) goto L22
                    r4 = r2
                    goto L23
                L22:
                    r4 = r3
                L23:
                    if (r4 == 0) goto L28
                    ab.d$a r6 = ab.d.a.f280d
                    goto L3b
                L28:
                    if (r6 == 0) goto L33
                    java.lang.String r4 = "text"
                    boolean r6 = rd.n.H(r6, r4, r3, r1, r0)
                    if (r6 != r2) goto L33
                    goto L34
                L33:
                    r2 = r3
                L34:
                    if (r2 == 0) goto L39
                    ab.d$a r6 = ab.d.a.f281e
                    goto L3b
                L39:
                    ab.d$a r6 = ab.d.a.f282f
                L3b:
                    return r6
                */
                throw new UnsupportedOperationException("Method not decompiled: ab.d.a.C0008a.a(java.lang.String):ab.d$a");
            }
        }

        static {
            a[] a10 = a();
            f284h = a10;
            f285i = cd.b.a(a10);
            f278b = new C0008a(null);
        }

        private a(String str, int i10, String str2) {
            this.f286a = str2;
        }

        private static final /* synthetic */ a[] a() {
            return new a[]{f279c, f280d, f281e, f282f, f283g};
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) f284h.clone();
        }

        public final String b() {
            return this.f286a;
        }
    }

    private final JSONArray a(Intent intent) {
        String action;
        Parcelable parcelable;
        List b10;
        Object parcelableExtra;
        JSONObject e10;
        List b11;
        ArrayList parcelableArrayListExtra;
        String str;
        Object A;
        if (intent == null || (action = intent.getAction()) == null) {
            return null;
        }
        int hashCode = action.hashCode();
        if (hashCode != -1173264947) {
            if (hashCode != -1173171990) {
                if (hashCode != -58484670 || !action.equals("android.intent.action.SEND_MULTIPLE")) {
                    return null;
                }
                if (Build.VERSION.SDK_INT >= 33) {
                    parcelableArrayListExtra = intent.getParcelableArrayListExtra("android.intent.extra.STREAM", Uri.class);
                } else {
                    parcelableArrayListExtra = intent.getParcelableArrayListExtra("android.intent.extra.STREAM");
                }
                String[] stringArrayExtra = intent.getStringArrayExtra("android.intent.extra.MIME_TYPES");
                if (parcelableArrayListExtra == null) {
                    return null;
                }
                ArrayList arrayList = new ArrayList();
                int i10 = 0;
                for (Object obj : parcelableArrayListExtra) {
                    int i11 = i10 + 1;
                    if (i10 < 0) {
                        o.q();
                    }
                    Uri uri = (Uri) obj;
                    if (stringArrayExtra != null) {
                        A = k.A(stringArrayExtra, i10);
                        str = (String) A;
                    } else {
                        str = null;
                    }
                    JSONObject e11 = e(uri, null, str);
                    if (e11 != null) {
                        arrayList.add(e11);
                    }
                    i10 = i11;
                }
                return new JSONArray((Collection) arrayList);
            } else if (action.equals("android.intent.action.VIEW") && (e10 = e(intent.getData(), null, intent.getType())) != null) {
                b11 = n.b(e10);
                return new JSONArray((Collection) b11);
            } else {
                return null;
            }
        } else if (!action.equals("android.intent.action.SEND")) {
            return null;
        } else {
            if (Build.VERSION.SDK_INT >= 33) {
                parcelableExtra = intent.getParcelableExtra("android.intent.extra.STREAM", Uri.class);
                parcelable = (Parcelable) parcelableExtra;
            } else {
                Parcelable parcelableExtra2 = intent.getParcelableExtra("android.intent.extra.STREAM");
                if (!(parcelableExtra2 instanceof Uri)) {
                    parcelableExtra2 = null;
                }
                parcelable = (Uri) parcelableExtra2;
            }
            JSONObject e12 = e((Uri) parcelable, intent.getStringExtra("android.intent.extra.TEXT"), intent.getType());
            if (e12 != null) {
                b10 = n.b(e12);
                return new JSONArray((Collection) b10);
            }
            return null;
        }
    }

    private final xc.k b(String str, a aVar) {
        Long l10;
        Bitmap scaledFrameAtTime;
        if (aVar != a.f280d) {
            return new xc.k(null, null);
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        mediaMetadataRetriever.setDataSource(str);
        String extractMetadata = mediaMetadataRetriever.extractMetadata(9);
        if (extractMetadata != null) {
            l10 = x.o(extractMetadata);
        } else {
            l10 = null;
        }
        scaledFrameAtTime = mediaMetadataRetriever.getScaledFrameAtTime(-1L, 2, 360, 360);
        mediaMetadataRetriever.release();
        if (scaledFrameAtTime == null) {
            return new xc.k(null, null);
        }
        Context context = this.f277e;
        if (context == null) {
            m.s("applicationContext");
            context = null;
        }
        File file = new File(context.getCacheDir(), new File(str).getName() + ".png");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            scaledFrameAtTime.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            gd.b.a(fileOutputStream, null);
            scaledFrameAtTime.recycle();
            return new xc.k(file.getPath(), l10);
        } finally {
        }
    }

    private final void c(Intent intent, boolean z10) {
        List b10;
        String str;
        if (intent.getType() != null && (m.a(intent.getAction(), "android.intent.action.VIEW") || m.a(intent.getAction(), "android.intent.action.SEND") || m.a(intent.getAction(), "android.intent.action.SEND_MULTIPLE"))) {
            JSONArray a10 = a(intent);
            if (z10) {
                this.f273a = a10;
            }
            this.f274b = a10;
            EventChannel.EventSink eventSink = this.f275c;
            if (eventSink != null) {
                if (a10 != null) {
                    str = a10.toString();
                } else {
                    str = null;
                }
                eventSink.success(str);
            }
        } else if (m.a(intent.getAction(), "android.intent.action.VIEW")) {
            b10 = n.b(new JSONObject().put("path", intent.getDataString()).put("type", a.f283g.b()));
            JSONArray jSONArray = new JSONArray((Collection) b10);
            if (z10) {
                this.f273a = jSONArray;
            }
            this.f274b = jSONArray;
            EventChannel.EventSink eventSink2 = this.f275c;
            if (eventSink2 != null) {
                eventSink2.success(jSONArray.toString());
            }
        }
    }

    private final void d(BinaryMessenger binaryMessenger) {
        new MethodChannel(binaryMessenger, "receive_sharing_intent/messages").setMethodCallHandler(this);
        new EventChannel(binaryMessenger, "receive_sharing_intent/events-media").setStreamHandler(this);
        new EventChannel(binaryMessenger, "receive_sharing_intent/events-text").setStreamHandler(this);
    }

    private final JSONObject e(Uri uri, String str, String str2) {
        String str3;
        xc.k kVar;
        if (uri != null) {
            ab.a aVar = ab.a.f272a;
            Context context = this.f277e;
            if (context == null) {
                m.s("applicationContext");
                context = null;
            }
            str3 = aVar.a(context, uri);
        } else {
            str3 = null;
        }
        if (str2 == null) {
            if (str3 != null) {
                str2 = URLConnection.guessContentTypeFromName(str3);
            } else {
                str2 = null;
            }
        }
        a a10 = a.f278b.a(str2);
        if (str3 == null || (kVar = b(str3, a10)) == null) {
            kVar = new xc.k(null, null);
        }
        String str4 = (String) kVar.a();
        Long l10 = (Long) kVar.b();
        JSONObject jSONObject = new JSONObject();
        if (str3 != null) {
            str = str3;
        }
        return jSONObject.put("path", str).put("type", a10.b()).put("mimeType", str2).put("thumbnail", str4).put(MediaInformation.KEY_DURATION, l10);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        this.f276d = binding;
        binding.addOnNewIntentListener(this);
        Intent intent = binding.getActivity().getIntent();
        m.d(intent, "getIntent(...)");
        c(intent, true);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
        this.f277e = binding.getApplicationContext();
        BinaryMessenger binaryMessenger = binding.getBinaryMessenger();
        m.d(binaryMessenger, "getBinaryMessenger(...)");
        d(binaryMessenger);
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onCancel(Object obj) {
        this.f275c = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        ActivityPluginBinding activityPluginBinding = this.f276d;
        if (activityPluginBinding != null) {
            activityPluginBinding.removeOnNewIntentListener(this);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        ActivityPluginBinding activityPluginBinding = this.f276d;
        if (activityPluginBinding != null) {
            activityPluginBinding.removeOnNewIntentListener(this);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        m.e(binding, "binding");
    }

    @Override // io.flutter.plugin.common.EventChannel.StreamHandler
    public void onListen(Object obj, EventChannel.EventSink events) {
        m.e(events, "events");
        this.f275c = events;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        m.e(call, "call");
        m.e(result, "result");
        String str = call.method;
        String str2 = null;
        if (m.a(str, "getInitialMedia")) {
            JSONArray jSONArray = this.f273a;
            if (jSONArray != null) {
                str2 = jSONArray.toString();
            }
            result.success(str2);
        } else if (m.a(str, "reset")) {
            this.f273a = null;
            this.f274b = null;
            result.success(null);
        } else {
            result.notImplemented();
        }
    }

    @Override // io.flutter.plugin.common.PluginRegistry.NewIntentListener
    public boolean onNewIntent(Intent intent) {
        m.e(intent, "intent");
        c(intent, false);
        return false;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        m.e(binding, "binding");
        this.f276d = binding;
        binding.addOnNewIntentListener(this);
    }
}
