package qb;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import rd.x;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: b  reason: collision with root package name */
    public static final a f28652b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Long f28653a;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context) {
            m.e(context, "context");
            SharedPreferences.Editor edit = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.FOREGROUND_TASK_OPTIONS", 0).edit();
            edit.clear();
            edit.commit();
        }

        public final b b(Context context) {
            Long l10;
            m.e(context, "context");
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.FOREGROUND_TASK_OPTIONS", 0);
            if (sharedPreferences.contains("callbackHandle")) {
                l10 = Long.valueOf(sharedPreferences.getLong("callbackHandle", 0L));
            } else {
                l10 = null;
            }
            return new b(l10);
        }

        public final void c(Context context, Map map) {
            Object obj;
            Long o10;
            m.e(context, "context");
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.FOREGROUND_TASK_OPTIONS", 0);
            if (map != null) {
                obj = map.get("callbackHandle");
            } else {
                obj = null;
            }
            o10 = x.o(String.valueOf(obj));
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.remove("callbackHandle");
            if (o10 != null) {
                edit.putLong("callbackHandle", o10.longValue());
            }
            edit.commit();
        }

        public final void d(Context context, Map map) {
            Object obj;
            Long o10;
            m.e(context, "context");
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.FOREGROUND_TASK_OPTIONS", 0);
            if (map != null) {
                obj = map.get("callbackHandle");
            } else {
                obj = null;
            }
            o10 = x.o(String.valueOf(obj));
            SharedPreferences.Editor edit = sharedPreferences.edit();
            if (o10 != null) {
                edit.putLong("callbackHandle", o10.longValue());
            }
            edit.commit();
        }
    }

    public b(Long l10) {
        this.f28653a = l10;
    }

    public final Long a() {
        return this.f28653a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && m.a(this.f28653a, ((b) obj).f28653a);
    }

    public int hashCode() {
        Long l10 = this.f28653a;
        if (l10 == null) {
            return 0;
        }
        return l10.hashCode();
    }

    public String toString() {
        return "ForegroundTaskData(callbackHandle=" + this.f28653a + ')';
    }
}
