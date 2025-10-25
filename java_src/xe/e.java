package xe;

import android.util.Log;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;
import ne.w;
import rd.b0;
import rd.d0;
import yc.h0;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f32783a = new e();

    /* renamed from: b  reason: collision with root package name */
    private static final CopyOnWriteArraySet f32784b = new CopyOnWriteArraySet();

    /* renamed from: c  reason: collision with root package name */
    private static final Map f32785c;

    static {
        String name;
        Map q10;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r22 = w.class.getPackage();
        if (r22 == null) {
            name = null;
        } else {
            name = r22.getName();
        }
        if (name != null) {
            linkedHashMap.put(name, "OkHttp");
        }
        String name2 = w.class.getName();
        kotlin.jvm.internal.m.d(name2, "OkHttpClient::class.java.name");
        linkedHashMap.put(name2, "okhttp.OkHttpClient");
        String name3 = ve.e.class.getName();
        kotlin.jvm.internal.m.d(name3, "Http2::class.java.name");
        linkedHashMap.put(name3, "okhttp.Http2");
        String name4 = re.e.class.getName();
        kotlin.jvm.internal.m.d(name4, "TaskRunner::class.java.name");
        linkedHashMap.put(name4, "okhttp.TaskRunner");
        linkedHashMap.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        q10 = h0.q(linkedHashMap);
        f32785c = q10;
    }

    private e() {
    }

    private final void c(String str, String str2) {
        Level level;
        Logger logger = Logger.getLogger(str);
        if (f32784b.add(logger)) {
            logger.setUseParentHandlers(false);
            if (Log.isLoggable(str2, 3)) {
                level = Level.FINE;
            } else if (Log.isLoggable(str2, 4)) {
                level = Level.INFO;
            } else {
                level = Level.WARNING;
            }
            logger.setLevel(level);
            logger.addHandler(f.f32786a);
        }
    }

    private final String d(String str) {
        String S0;
        String str2 = (String) f32785c.get(str);
        if (str2 == null) {
            S0 = d0.S0(str, 23);
            return S0;
        }
        return str2;
    }

    public final void a(String loggerName, int i10, String message, Throwable th) {
        int Y;
        int min;
        kotlin.jvm.internal.m.e(loggerName, "loggerName");
        kotlin.jvm.internal.m.e(message, "message");
        String d10 = d(loggerName);
        if (Log.isLoggable(d10, i10)) {
            if (th != null) {
                message = message + '\n' + ((Object) Log.getStackTraceString(th));
            }
            int length = message.length();
            int i11 = 0;
            while (i11 < length) {
                Y = b0.Y(message, '\n', i11, false, 4, null);
                if (Y == -1) {
                    Y = length;
                }
                while (true) {
                    min = Math.min(Y, i11 + 4000);
                    String substring = message.substring(i11, min);
                    kotlin.jvm.internal.m.d(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    Log.println(i10, d10, substring);
                    if (min >= Y) {
                        break;
                    }
                    i11 = min;
                }
                i11 = min + 1;
            }
        }
    }

    public final void b() {
        for (Map.Entry entry : f32785c.entrySet()) {
            c((String) entry.getKey(), (String) entry.getValue());
        }
    }
}
