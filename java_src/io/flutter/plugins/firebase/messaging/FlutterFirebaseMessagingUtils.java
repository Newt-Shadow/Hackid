package io.flutter.plugins.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.content.Context;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.u0;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class FlutterFirebaseMessagingUtils {
    static final String EXTRA_REMOTE_MESSAGE = "notification";
    static final String IS_AUTO_INIT_ENABLED = "isAutoInitEnabled";
    static final int JOB_ID = 2020;
    private static final String KEY_COLLAPSE_KEY = "collapseKey";
    private static final String KEY_DATA = "data";
    private static final String KEY_FROM = "from";
    private static final String KEY_MESSAGE_ID = "messageId";
    private static final String KEY_MESSAGE_TYPE = "messageType";
    private static final String KEY_SENT_TIME = "sentTime";
    private static final String KEY_TO = "to";
    private static final String KEY_TTL = "ttl";
    static final String SHARED_PREFERENCES_KEY = "io.flutter.firebase.messaging.callback";

    FlutterFirebaseMessagingUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FirebaseMessaging getFirebaseMessagingForArguments(Map<String, Object> map) {
        return FirebaseMessaging.r();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u0 getRemoteMessageForArguments(Map<String, Object> map) {
        Object obj = map.get("message");
        Objects.requireNonNull(obj);
        Map map2 = (Map) obj;
        Object obj2 = map2.get(KEY_TO);
        Objects.requireNonNull(obj2);
        u0.b bVar = new u0.b((String) obj2);
        String str = (String) map2.get(KEY_COLLAPSE_KEY);
        String str2 = (String) map2.get(KEY_MESSAGE_ID);
        String str3 = (String) map2.get(KEY_MESSAGE_TYPE);
        Integer num = (Integer) map2.get(KEY_TTL);
        Map map3 = (Map) map2.get(KEY_DATA);
        if (str != null) {
            bVar.b(str);
        }
        if (str3 != null) {
            bVar.e(str3);
        }
        if (str2 != null) {
            bVar.d(str2);
        }
        if (num != null) {
            bVar.f(num.intValue());
        }
        if (map3 != null) {
            bVar.c(map3);
        }
        return bVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, Object> getRemoteMessageNotificationForArguments(Map<String, Object> map) {
        Object obj = map.get("message");
        Objects.requireNonNull(obj);
        Map map2 = (Map) obj;
        if (map2.get(EXTRA_REMOTE_MESSAGE) == null) {
            return null;
        }
        return (Map) map2.get(EXTRA_REMOTE_MESSAGE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isApplicationForeground(Context context) {
        ActivityManager activityManager;
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        if ((keyguardManager != null && keyguardManager.isKeyguardLocked()) || (activityManager = (ActivityManager) context.getSystemService("activity")) == null || (runningAppProcesses = activityManager.getRunningAppProcesses()) == null) {
            return false;
        }
        String packageName = context.getPackageName();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.importance == 100 && runningAppProcessInfo.processName.equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    private static Map<String, Object> remoteMessageNotificationToMap(u0.c cVar) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        if (cVar.p() != null) {
            hashMap.put("title", cVar.p());
        }
        if (cVar.r() != null) {
            hashMap.put("titleLocKey", cVar.r());
        }
        if (cVar.q() != null) {
            hashMap.put("titleLocArgs", Arrays.asList(cVar.q()));
        }
        if (cVar.a() != null) {
            hashMap.put("body", cVar.a());
        }
        if (cVar.c() != null) {
            hashMap.put("bodyLocKey", cVar.c());
        }
        if (cVar.b() != null) {
            hashMap.put("bodyLocArgs", Arrays.asList(cVar.b()));
        }
        if (cVar.d() != null) {
            hashMap2.put("channelId", cVar.d());
        }
        if (cVar.e() != null) {
            hashMap2.put("clickAction", cVar.e());
        }
        if (cVar.f() != null) {
            hashMap2.put("color", cVar.f());
        }
        if (cVar.g() != null) {
            hashMap2.put("smallIcon", cVar.g());
        }
        if (cVar.h() != null) {
            hashMap2.put("imageUrl", cVar.h().toString());
        }
        if (cVar.i() != null) {
            hashMap2.put("link", cVar.i().toString());
        }
        if (cVar.k() != null) {
            hashMap2.put("count", cVar.k());
        }
        if (cVar.l() != null) {
            hashMap2.put(MimeTypesReaderMetKeys.MAGIC_PRIORITY_ATTR, cVar.l());
        }
        if (cVar.m() != null) {
            hashMap2.put("sound", cVar.m());
        }
        if (cVar.o() != null) {
            hashMap2.put("ticker", cVar.o());
        }
        if (cVar.s() != null) {
            hashMap2.put("visibility", cVar.s());
        }
        if (cVar.n() != null) {
            hashMap2.put("tag", cVar.n());
        }
        hashMap.put("android", hashMap2);
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Map<String, Object> remoteMessageToMap(u0 u0Var) {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        if (u0Var.g() != null) {
            hashMap.put(KEY_COLLAPSE_KEY, u0Var.g());
        }
        if (u0Var.l() != null) {
            hashMap.put(KEY_FROM, u0Var.l());
        }
        if (u0Var.t() != null) {
            hashMap.put(KEY_TO, u0Var.t());
        }
        if (u0Var.m() != null) {
            hashMap.put(KEY_MESSAGE_ID, u0Var.m());
        }
        if (u0Var.o() != null) {
            hashMap.put(KEY_MESSAGE_TYPE, u0Var.o());
        }
        if (!u0Var.i().isEmpty()) {
            for (Map.Entry entry : u0Var.i().entrySet()) {
                hashMap2.put((String) entry.getKey(), entry.getValue());
            }
        }
        hashMap.put(KEY_DATA, hashMap2);
        hashMap.put(KEY_TTL, Integer.valueOf(u0Var.C()));
        hashMap.put(KEY_SENT_TIME, Long.valueOf(u0Var.s()));
        if (u0Var.p() != null) {
            hashMap.put(EXTRA_REMOTE_MESSAGE, remoteMessageNotificationToMap(u0Var.p()));
        }
        return hashMap;
    }
}
