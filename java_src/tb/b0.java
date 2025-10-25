package tb;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.arthenica.ffmpegkit.Chapter;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMethodCodec;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes.dex */
public class b0 implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: h  reason: collision with root package name */
    static String f30520h;

    /* renamed from: l  reason: collision with root package name */
    private static n f30524l;

    /* renamed from: a  reason: collision with root package name */
    private Context f30525a;

    /* renamed from: b  reason: collision with root package name */
    private MethodChannel f30526b;

    /* renamed from: c  reason: collision with root package name */
    static final Map f30515c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    static final Map f30516d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    private static final Object f30517e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private static final Object f30518f = new Object();

    /* renamed from: g  reason: collision with root package name */
    static int f30519g = 0;

    /* renamed from: i  reason: collision with root package name */
    private static int f30521i = 0;

    /* renamed from: j  reason: collision with root package name */
    private static int f30522j = 1;

    /* renamed from: k  reason: collision with root package name */
    private static int f30523k = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f30527a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ MethodChannel.Result f30528b;

        a(i iVar, MethodChannel.Result result) {
            this.f30527a = iVar;
            this.f30528b = result;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (b0.f30518f) {
                b0.this.l(this.f30527a);
            }
            this.f30528b.success(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ i f30530a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f30531b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ MethodChannel.Result f30532c;

        b(i iVar, String str, MethodChannel.Result result) {
            this.f30530a = iVar;
            this.f30531b = str;
            this.f30532c = result;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (b0.f30518f) {
                i iVar = this.f30530a;
                if (iVar != null) {
                    b0.this.l(iVar);
                }
                try {
                    if (q.c(b0.f30519g)) {
                        Log.d("Sqflite", "delete database " + this.f30531b);
                    }
                    i.o(this.f30531b);
                } catch (Exception e10) {
                    Log.e("Sqflite", "error " + e10 + " while closing database " + b0.f30523k);
                }
            }
            this.f30532c.success(null);
        }
    }

    private void A(MethodCall methodCall, MethodChannel.Result result) {
        int intValue = ((Integer) methodCall.argument(Chapter.KEY_ID)).intValue();
        i n10 = n(methodCall, result);
        if (n10 == null) {
            return;
        }
        if (q.b(n10.f30550d)) {
            Log.d("Sqflite", n10.A() + "closing " + intValue + StringUtils.SPACE + n10.f30548b);
        }
        String str = n10.f30548b;
        synchronized (f30517e) {
            f30516d.remove(Integer.valueOf(intValue));
            if (n10.f30547a) {
                f30515c.remove(str);
            }
        }
        f30524l.a(n10, new a(n10, result));
    }

    private void B(MethodCall methodCall, MethodChannel.Result result) {
        result.success(Boolean.valueOf(i.x((String) methodCall.argument("path"))));
    }

    private void C(MethodCall methodCall, MethodChannel.Result result) {
        HashMap hashMap = new HashMap();
        if ("get".equals((String) methodCall.argument("cmd"))) {
            int i10 = f30519g;
            if (i10 > 0) {
                hashMap.put("logLevel", Integer.valueOf(i10));
            }
            Map map = f30516d;
            if (!map.isEmpty()) {
                HashMap hashMap2 = new HashMap();
                for (Map.Entry entry : map.entrySet()) {
                    i iVar = (i) entry.getValue();
                    HashMap hashMap3 = new HashMap();
                    hashMap3.put("path", iVar.f30548b);
                    hashMap3.put("singleInstance", Boolean.valueOf(iVar.f30547a));
                    int i11 = iVar.f30550d;
                    if (i11 > 0) {
                        hashMap3.put("logLevel", Integer.valueOf(i11));
                    }
                    hashMap2.put(((Integer) entry.getKey()).toString(), hashMap3);
                }
                hashMap.put("databases", hashMap2);
            }
        }
        result.success(hashMap);
    }

    private void D(MethodCall methodCall, MethodChannel.Result result) {
        boolean z10;
        ub.a.f31084a = Boolean.TRUE.equals(methodCall.arguments());
        if (ub.a.f31085b && ub.a.f31084a) {
            z10 = true;
        } else {
            z10 = false;
        }
        ub.a.f31086c = z10;
        if (ub.a.f31084a) {
            if (ub.a.f31086c) {
                f30519g = 2;
            } else if (ub.a.f31084a) {
                f30519g = 1;
            }
        } else {
            f30519g = 0;
        }
        result.success(null);
    }

    private void E(MethodCall methodCall, MethodChannel.Result result) {
        i iVar;
        String str;
        String str2 = (String) methodCall.argument("path");
        synchronized (f30517e) {
            if (q.c(f30519g)) {
                Log.d("Sqflite", "Look for " + str2 + " in " + f30515c.keySet());
            }
            Map map = f30515c;
            Integer num = (Integer) map.get(str2);
            if (num != null) {
                Map map2 = f30516d;
                iVar = (i) map2.get(num);
                if (iVar != null && iVar.f30555i.isOpen()) {
                    if (q.c(f30519g)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(iVar.A());
                        sb2.append("found single instance ");
                        if (iVar.F()) {
                            str = "(in transaction) ";
                        } else {
                            str = "";
                        }
                        sb2.append(str);
                        sb2.append(num);
                        sb2.append(StringUtils.SPACE);
                        sb2.append(str2);
                        Log.d("Sqflite", sb2.toString());
                    }
                    map2.remove(num);
                    map.remove(str2);
                }
            }
            iVar = null;
        }
        b bVar = new b(iVar, str2, result);
        n nVar = f30524l;
        if (nVar != null) {
            nVar.a(iVar, bVar);
        } else {
            bVar.run();
        }
    }

    private void F(final MethodCall methodCall, final MethodChannel.Result result) {
        final i n10 = n(methodCall, result);
        if (n10 == null) {
            return;
        }
        f30524l.a(n10, new Runnable() { // from class: tb.w
            @Override // java.lang.Runnable
            public final void run() {
                b0.q(MethodCall.this, result, n10);
            }
        });
    }

    private void H(final MethodCall methodCall, final MethodChannel.Result result) {
        final i n10 = n(methodCall, result);
        if (n10 == null) {
            return;
        }
        f30524l.a(n10, new Runnable() { // from class: tb.t
            @Override // java.lang.Runnable
            public final void run() {
                b0.r(MethodCall.this, result, n10);
            }
        });
    }

    private void I(final MethodCall methodCall, final MethodChannel.Result result) {
        boolean z10;
        final int i10;
        i iVar;
        String str;
        final String str2 = (String) methodCall.argument("path");
        final Boolean bool = (Boolean) methodCall.argument("readOnly");
        final boolean o10 = o(str2);
        if (!Boolean.FALSE.equals(methodCall.argument("singleInstance")) && !o10) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            synchronized (f30517e) {
                if (q.c(f30519g)) {
                    Log.d("Sqflite", "Look for " + str2 + " in " + f30515c.keySet());
                }
                Integer num = (Integer) f30515c.get(str2);
                if (num != null && (iVar = (i) f30516d.get(num)) != null) {
                    if (!iVar.f30555i.isOpen()) {
                        if (q.c(f30519g)) {
                            Log.d("Sqflite", iVar.A() + "single instance database of " + str2 + " not opened");
                        }
                    } else {
                        if (q.c(f30519g)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(iVar.A());
                            sb2.append("re-opened single instance ");
                            if (iVar.F()) {
                                str = "(in transaction) ";
                            } else {
                                str = "";
                            }
                            sb2.append(str);
                            sb2.append(num);
                            sb2.append(StringUtils.SPACE);
                            sb2.append(str2);
                            Log.d("Sqflite", sb2.toString());
                        }
                        result.success(x(num.intValue(), true, iVar.F()));
                        return;
                    }
                }
            }
        }
        Object obj = f30517e;
        synchronized (obj) {
            i10 = f30523k + 1;
            f30523k = i10;
        }
        final i iVar2 = new i(this.f30525a, str2, i10, z10, f30519g);
        synchronized (obj) {
            if (f30524l == null) {
                n b10 = n.b("Sqflite", f30522j, f30521i);
                f30524l = b10;
                b10.start();
                if (q.b(iVar2.f30550d)) {
                    Log.d("Sqflite", iVar2.A() + "starting worker pool with priority " + f30521i);
                }
            }
            iVar2.f30554h = f30524l;
            if (q.b(iVar2.f30550d)) {
                Log.d("Sqflite", iVar2.A() + "opened " + i10 + StringUtils.SPACE + str2);
            }
            final boolean z11 = z10;
            f30524l.a(iVar2, new Runnable() { // from class: tb.y
                @Override // java.lang.Runnable
                public final void run() {
                    b0.s(o10, str2, result, bool, iVar2, methodCall, z11, i10);
                }
            });
        }
    }

    private void K(final MethodCall methodCall, final MethodChannel.Result result) {
        final i n10 = n(methodCall, result);
        if (n10 == null) {
            return;
        }
        f30524l.a(n10, new Runnable() { // from class: tb.x
            @Override // java.lang.Runnable
            public final void run() {
                b0.t(MethodCall.this, result, n10);
            }
        });
    }

    private void L(final MethodCall methodCall, final MethodChannel.Result result) {
        final i n10 = n(methodCall, result);
        if (n10 == null) {
            return;
        }
        f30524l.a(n10, new Runnable() { // from class: tb.u
            @Override // java.lang.Runnable
            public final void run() {
                b0.u(MethodCall.this, result, n10);
            }
        });
    }

    private void M(final MethodCall methodCall, final MethodChannel.Result result) {
        final i n10 = n(methodCall, result);
        if (n10 == null) {
            return;
        }
        f30524l.a(n10, new Runnable() { // from class: tb.z
            @Override // java.lang.Runnable
            public final void run() {
                b0.v(MethodCall.this, n10, result);
            }
        });
    }

    private void N(final MethodCall methodCall, final MethodChannel.Result result) {
        final i n10 = n(methodCall, result);
        if (n10 == null) {
            return;
        }
        f30524l.a(n10, new Runnable() { // from class: tb.v
            @Override // java.lang.Runnable
            public final void run() {
                b0.w(MethodCall.this, result, n10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(i iVar) {
        try {
            if (q.b(iVar.f30550d)) {
                Log.d("Sqflite", iVar.A() + "closing database ");
            }
            iVar.k();
        } catch (Exception e10) {
            Log.e("Sqflite", "error " + e10 + " while closing database " + f30523k);
        }
        synchronized (f30517e) {
            if (f30516d.isEmpty() && f30524l != null) {
                if (q.b(iVar.f30550d)) {
                    Log.d("Sqflite", iVar.A() + "stopping thread");
                }
                f30524l.d();
                f30524l = null;
            }
        }
    }

    private i m(int i10) {
        return (i) f30516d.get(Integer.valueOf(i10));
    }

    private i n(MethodCall methodCall, MethodChannel.Result result) {
        int intValue = ((Integer) methodCall.argument(Chapter.KEY_ID)).intValue();
        i m10 = m(intValue);
        if (m10 != null) {
            return m10;
        }
        result.error("sqlite_error", "database_closed " + intValue, null);
        return null;
    }

    static boolean o(String str) {
        if (str != null && !str.equals(":memory:")) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void q(MethodCall methodCall, MethodChannel.Result result, i iVar) {
        iVar.v(new vb.d(methodCall, result));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void r(MethodCall methodCall, MethodChannel.Result result, i iVar) {
        iVar.E(new vb.d(methodCall, result));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void s(boolean z10, String str, MethodChannel.Result result, Boolean bool, i iVar, MethodCall methodCall, boolean z11, int i10) {
        synchronized (f30518f) {
            if (!z10) {
                try {
                    File file = new File(new File(str).getParent());
                    if (!file.exists() && !file.mkdirs() && !file.exists()) {
                        result.error("sqlite_error", "open_failed " + str, null);
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            try {
                if (Boolean.TRUE.equals(bool)) {
                    iVar.N();
                } else {
                    iVar.M();
                }
                synchronized (f30517e) {
                    if (z11) {
                        f30515c.put(str, Integer.valueOf(i10));
                    }
                    f30516d.put(Integer.valueOf(i10), iVar);
                }
                if (q.b(iVar.f30550d)) {
                    Log.d("Sqflite", iVar.A() + "opened " + i10 + StringUtils.SPACE + str);
                }
                result.success(x(i10, false, false));
            } catch (Exception e10) {
                iVar.D(e10, new vb.d(methodCall, result));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void t(MethodCall methodCall, MethodChannel.Result result, i iVar) {
        iVar.O(new vb.d(methodCall, result));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void u(MethodCall methodCall, MethodChannel.Result result, i iVar) {
        iVar.P(new vb.d(methodCall, result));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void v(MethodCall methodCall, i iVar, MethodChannel.Result result) {
        try {
            iVar.f30555i.setLocale(d0.d((String) methodCall.argument(CommonUrlParts.LOCALE)));
            result.success(null);
        } catch (Exception e10) {
            result.error("sqlite_error", "Error calling setLocale: " + e10.getMessage(), null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void w(MethodCall methodCall, MethodChannel.Result result, i iVar) {
        iVar.R(new vb.d(methodCall, result));
    }

    static Map x(int i10, boolean z10, boolean z11) {
        HashMap hashMap = new HashMap();
        hashMap.put(Chapter.KEY_ID, Integer.valueOf(i10));
        if (z10) {
            hashMap.put("recovered", Boolean.TRUE);
        }
        if (z11) {
            hashMap.put("recoveredInTransaction", Boolean.TRUE);
        }
        return hashMap;
    }

    private void y(Context context, BinaryMessenger binaryMessenger) {
        this.f30525a = context;
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, "com.tekartik.sqflite", StandardMethodCodec.INSTANCE, binaryMessenger.makeBackgroundTaskQueue());
        this.f30526b = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    private void z(final MethodCall methodCall, final MethodChannel.Result result) {
        final i n10 = n(methodCall, result);
        if (n10 == null) {
            return;
        }
        f30524l.a(n10, new Runnable() { // from class: tb.a0
            @Override // java.lang.Runnable
            public final void run() {
                i.this.h(methodCall, result);
            }
        });
    }

    void G(MethodCall methodCall, MethodChannel.Result result) {
        if (f30520h == null) {
            f30520h = this.f30525a.getDatabasePath("tekartik_sqflite.db").getParent();
        }
        result.success(f30520h);
    }

    void J(MethodCall methodCall, MethodChannel.Result result) {
        Object argument = methodCall.argument("androidThreadPriority");
        if (argument != null) {
            f30521i = ((Integer) argument).intValue();
        }
        Object argument2 = methodCall.argument("androidThreadCount");
        if (argument2 != null && !argument2.equals(Integer.valueOf(f30522j))) {
            f30522j = ((Integer) argument2).intValue();
            n nVar = f30524l;
            if (nVar != null) {
                nVar.d();
                f30524l = null;
            }
        }
        Integer a10 = q.a(methodCall);
        if (a10 != null) {
            f30519g = a10.intValue();
        }
        result.success(null);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        y(flutterPluginBinding.getApplicationContext(), flutterPluginBinding.getBinaryMessenger());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f30525a = null;
        this.f30526b.setMethodCallHandler(null);
        this.f30526b = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String str = methodCall.method;
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1319569547:
                if (str.equals("execute")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1253581933:
                if (str.equals("closeDatabase")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1249474914:
                if (str.equals("options")) {
                    c10 = 2;
                    break;
                }
                break;
            case -1183792455:
                if (str.equals("insert")) {
                    c10 = 3;
                    break;
                }
                break;
            case -838846263:
                if (str.equals("update")) {
                    c10 = 4;
                    break;
                }
                break;
            case -396289107:
                if (str.equals("androidSetLocale")) {
                    c10 = 5;
                    break;
                }
                break;
            case -263511994:
                if (str.equals("deleteDatabase")) {
                    c10 = 6;
                    break;
                }
                break;
            case -198450538:
                if (str.equals("debugMode")) {
                    c10 = 7;
                    break;
                }
                break;
            case -17190427:
                if (str.equals("openDatabase")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 93509434:
                if (str.equals("batch")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 95458899:
                if (str.equals("debug")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 107944136:
                if (str.equals("query")) {
                    c10 = 11;
                    break;
                }
                break;
            case 956410295:
                if (str.equals("databaseExists")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 1193546321:
                if (str.equals("queryCursorNext")) {
                    c10 = '\r';
                    break;
                }
                break;
            case 1385449135:
                if (str.equals("getPlatformVersion")) {
                    c10 = 14;
                    break;
                }
                break;
            case 1863829223:
                if (str.equals("getDatabasesPath")) {
                    c10 = 15;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                F(methodCall, result);
                return;
            case 1:
                A(methodCall, result);
                return;
            case 2:
                J(methodCall, result);
                return;
            case 3:
                H(methodCall, result);
                return;
            case 4:
                N(methodCall, result);
                return;
            case 5:
                M(methodCall, result);
                return;
            case 6:
                E(methodCall, result);
                return;
            case 7:
                D(methodCall, result);
                return;
            case '\b':
                I(methodCall, result);
                return;
            case '\t':
                z(methodCall, result);
                return;
            case '\n':
                C(methodCall, result);
                return;
            case 11:
                K(methodCall, result);
                return;
            case '\f':
                B(methodCall, result);
                return;
            case '\r':
                L(methodCall, result);
                return;
            case 14:
                result.success("Android " + Build.VERSION.RELEASE);
                return;
            case 15:
                G(methodCall, result);
                return;
            default:
                result.notImplemented();
                return;
        }
    }
}
