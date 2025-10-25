package qb;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    public static final C0291a f28650b = new C0291a(null);

    /* renamed from: a  reason: collision with root package name */
    private final String f28651a;

    /* renamed from: qb.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0291a {
        private C0291a() {
        }

        public /* synthetic */ C0291a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final a a(Context context) {
            m.e(context, "context");
            String string = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.FOREGROUND_SERVICE_STATUS", 0).getString("foregroundServiceAction", null);
            if (string == null) {
                string = "com.pravera.flutter_foreground_task.action.api_stop";
            }
            return new a(string);
        }

        public final void b(Context context, String action) {
            m.e(context, "context");
            m.e(action, "action");
            SharedPreferences.Editor edit = context.getSharedPreferences("com.pravera.flutter_foreground_task.prefs.FOREGROUND_SERVICE_STATUS", 0).edit();
            edit.putString("foregroundServiceAction", action);
            edit.commit();
        }
    }

    public a(String action) {
        m.e(action, "action");
        this.f28651a = action;
    }

    public final String a() {
        return this.f28651a;
    }

    public final boolean b() {
        return m.a(this.f28651a, "com.pravera.flutter_foreground_task.action.api_stop");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && m.a(this.f28651a, ((a) obj).f28651a);
    }

    public int hashCode() {
        return this.f28651a.hashCode();
    }

    public String toString() {
        return "ForegroundServiceStatus(action=" + this.f28651a + ')';
    }
}
