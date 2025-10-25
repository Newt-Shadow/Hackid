package qb;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: f  reason: collision with root package name */
    public static final a f28664f = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final c f28665a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f28666b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f28667c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f28668d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f28669e;

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

        public final e b(Context context) {
            c cVar;
            m.e(context, "context");
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.FOREGROUND_TASK_OPTIONS", 0);
            String string = sharedPreferences.getString("taskEventAction", null);
            if (string != null) {
                cVar = c.f28654c.a(string);
            } else {
                boolean z10 = sharedPreferences.getBoolean("isOnceEvent", false);
                long j10 = sharedPreferences.getLong("interval", 5000L);
                if (z10) {
                    cVar = new c(d.f28659d, j10);
                } else {
                    cVar = new c(d.f28660e, j10);
                }
            }
            return new e(cVar, sharedPreferences.getBoolean("autoRunOnBoot", false), sharedPreferences.getBoolean("autoRunOnMyPackageReplaced", false), sharedPreferences.getBoolean("allowWakeLock", true), sharedPreferences.getBoolean("allowWifiLock", false));
        }

        public final void c(Context context, Map map) {
            Object obj;
            Map map2;
            String str;
            Object obj2;
            Boolean bool;
            boolean z10;
            Object obj3;
            Boolean bool2;
            boolean z11;
            Object obj4;
            Boolean bool3;
            boolean z12;
            Object obj5;
            m.e(context, "context");
            boolean z13 = false;
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.FOREGROUND_TASK_OPTIONS", 0);
            Boolean bool4 = null;
            if (map != null) {
                obj = map.get("taskEventAction");
            } else {
                obj = null;
            }
            if (obj instanceof Map) {
                map2 = (Map) obj;
            } else {
                map2 = null;
            }
            if (map2 != null) {
                str = new JSONObject(map2).toString();
            } else {
                str = null;
            }
            if (map != null) {
                obj2 = map.get("autoRunOnBoot");
            } else {
                obj2 = null;
            }
            if (obj2 instanceof Boolean) {
                bool = (Boolean) obj2;
            } else {
                bool = null;
            }
            if (bool != null) {
                z10 = bool.booleanValue();
            } else {
                z10 = false;
            }
            if (map != null) {
                obj3 = map.get("autoRunOnMyPackageReplaced");
            } else {
                obj3 = null;
            }
            if (obj3 instanceof Boolean) {
                bool2 = (Boolean) obj3;
            } else {
                bool2 = null;
            }
            if (bool2 != null) {
                z11 = bool2.booleanValue();
            } else {
                z11 = false;
            }
            if (map != null) {
                obj4 = map.get("allowWakeLock");
            } else {
                obj4 = null;
            }
            if (obj4 instanceof Boolean) {
                bool3 = (Boolean) obj4;
            } else {
                bool3 = null;
            }
            if (bool3 != null) {
                z12 = bool3.booleanValue();
            } else {
                z12 = true;
            }
            if (map != null) {
                obj5 = map.get("allowWifiLock");
            } else {
                obj5 = null;
            }
            if (obj5 instanceof Boolean) {
                bool4 = (Boolean) obj5;
            }
            if (bool4 != null) {
                z13 = bool4.booleanValue();
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putString("taskEventAction", str);
            edit.putBoolean("autoRunOnBoot", z10);
            edit.putBoolean("autoRunOnMyPackageReplaced", z11);
            edit.putBoolean("allowWakeLock", z12);
            edit.putBoolean("allowWifiLock", z13);
            edit.commit();
        }

        public final void d(Context context, Map map) {
            Object obj;
            Map map2;
            String str;
            Object obj2;
            Boolean bool;
            Object obj3;
            Boolean bool2;
            Object obj4;
            Boolean bool3;
            Object obj5;
            m.e(context, "context");
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.FOREGROUND_TASK_OPTIONS", 0);
            Boolean bool4 = null;
            if (map != null) {
                obj = map.get("taskEventAction");
            } else {
                obj = null;
            }
            if (obj instanceof Map) {
                map2 = (Map) obj;
            } else {
                map2 = null;
            }
            if (map2 != null) {
                str = new JSONObject(map2).toString();
            } else {
                str = null;
            }
            if (map != null) {
                obj2 = map.get("autoRunOnBoot");
            } else {
                obj2 = null;
            }
            if (obj2 instanceof Boolean) {
                bool = (Boolean) obj2;
            } else {
                bool = null;
            }
            if (map != null) {
                obj3 = map.get("autoRunOnMyPackageReplaced");
            } else {
                obj3 = null;
            }
            if (obj3 instanceof Boolean) {
                bool2 = (Boolean) obj3;
            } else {
                bool2 = null;
            }
            if (map != null) {
                obj4 = map.get("allowWakeLock");
            } else {
                obj4 = null;
            }
            if (obj4 instanceof Boolean) {
                bool3 = (Boolean) obj4;
            } else {
                bool3 = null;
            }
            if (map != null) {
                obj5 = map.get("allowWifiLock");
            } else {
                obj5 = null;
            }
            if (obj5 instanceof Boolean) {
                bool4 = (Boolean) obj5;
            }
            SharedPreferences.Editor edit = sharedPreferences.edit();
            if (str != null) {
                edit.putString("taskEventAction", str);
            }
            if (bool != null) {
                edit.putBoolean("autoRunOnBoot", bool.booleanValue());
            }
            if (bool2 != null) {
                edit.putBoolean("autoRunOnMyPackageReplaced", bool2.booleanValue());
            }
            if (bool3 != null) {
                edit.putBoolean("allowWakeLock", bool3.booleanValue());
            }
            if (bool4 != null) {
                edit.putBoolean("allowWifiLock", bool4.booleanValue());
            }
            edit.commit();
        }
    }

    public e(c eventAction, boolean z10, boolean z11, boolean z12, boolean z13) {
        m.e(eventAction, "eventAction");
        this.f28665a = eventAction;
        this.f28666b = z10;
        this.f28667c = z11;
        this.f28668d = z12;
        this.f28669e = z13;
    }

    public final boolean a() {
        return this.f28668d;
    }

    public final boolean b() {
        return this.f28669e;
    }

    public final boolean c() {
        return this.f28666b;
    }

    public final boolean d() {
        return this.f28667c;
    }

    public final c e() {
        return this.f28665a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            return m.a(this.f28665a, eVar.f28665a) && this.f28666b == eVar.f28666b && this.f28667c == eVar.f28667c && this.f28668d == eVar.f28668d && this.f28669e == eVar.f28669e;
        }
        return false;
    }

    public int hashCode() {
        return (((((((this.f28665a.hashCode() * 31) + Boolean.hashCode(this.f28666b)) * 31) + Boolean.hashCode(this.f28667c)) * 31) + Boolean.hashCode(this.f28668d)) * 31) + Boolean.hashCode(this.f28669e);
    }

    public String toString() {
        return "ForegroundTaskOptions(eventAction=" + this.f28665a + ", autoRunOnBoot=" + this.f28666b + ", autoRunOnMyPackageReplaced=" + this.f28667c + ", allowWakeLock=" + this.f28668d + ", allowWifiLock=" + this.f28669e + ')';
    }
}
