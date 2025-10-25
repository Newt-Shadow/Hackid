package gb;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import yc.h0;
import yc.m0;
import yc.n0;
import yc.w;
/* loaded from: classes.dex */
public final class u implements lb.m {

    /* renamed from: f  reason: collision with root package name */
    private static final a f16384f = new a(null);

    /* renamed from: g  reason: collision with root package name */
    private static final List f16385g;

    /* renamed from: b  reason: collision with root package name */
    private final Context f16386b;

    /* renamed from: c  reason: collision with root package name */
    private final fb.b f16387c;

    /* renamed from: d  reason: collision with root package name */
    private final SharedPreferences f16388d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f16389e;

    /* loaded from: classes.dex */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        List b10;
        b10 = yc.n.b("groups");
        f16385g = b10;
    }

    public u(Context context, fb.b config, SharedPreferences sharedPreferences) {
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(config, "config");
        kotlin.jvm.internal.m.e(sharedPreferences, "sharedPreferences");
        this.f16386b = context;
        this.f16387c = config;
        this.f16388d = sharedPreferences;
        this.f16389e = new Object();
    }

    private final void d(String str, SharedPreferences.Editor editor) {
        Set<String> f10;
        f10 = n0.f(g(), str);
        editor.putStringSet("stringifiedKeys", f10);
    }

    private final Object e(String str, Object obj, Set set) {
        if (obj instanceof String) {
            if (f16385g.contains(str) || set.contains(str)) {
                return f((String) obj);
            }
            return obj;
        }
        return obj;
    }

    private final Object f(String str) {
        Object a10;
        try {
            a10 = this.f16387c.E().a(str);
        } catch (Throwable unused) {
        }
        if (a10 != null) {
            return a10;
        }
        return str;
    }

    private final Set g() {
        Set<String> b10;
        Set b11;
        SharedPreferences sharedPreferences = this.f16388d;
        b10 = m0.b();
        Set<String> stringSet = sharedPreferences.getStringSet("stringifiedKeys", b10);
        if (stringSet == null) {
            b11 = m0.b();
            return b11;
        }
        return stringSet;
    }

    private final void h(String str, SharedPreferences.Editor editor) {
        Set<String> n02;
        n02 = w.n0(g());
        if (!n02.contains(str)) {
            return;
        }
        n02.remove(str);
        editor.putStringSet("stringifiedKeys", n02);
    }

    private final void i(String str, Object obj, SharedPreferences.Editor editor) {
        xc.t tVar;
        try {
            String c10 = this.f16387c.E().c(obj);
            if (c10 != null) {
                editor.putString(str, c10);
                d(str, editor);
                tVar = xc.t.f32733a;
            } else {
                tVar = null;
            }
            if (tVar == null) {
                lb.i o10 = this.f16387c.o();
                o10.a("Value type: " + obj.getClass().getName() + " and value: " + obj + " isn't valid.");
            }
        } catch (Throwable unused) {
            lb.i o11 = this.f16387c.o();
            o11.a("Value type: " + obj.getClass().getName() + " and value: " + obj + " isn't valid.");
        }
    }

    @Override // lb.m
    public Object a(String key, Object obj) {
        kotlin.jvm.internal.m.e(key, "key");
        synchronized (this.f16389e) {
            Object obj2 = this.f16388d.getAll().get(key);
            if (obj2 != null) {
                obj = obj2;
            }
            xc.t tVar = xc.t.f32733a;
        }
        return e(key, obj, g());
    }

    @Override // lb.m
    public void b(String key, Object value) {
        Set<String> T;
        Set<String> o02;
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(value, "value");
        SharedPreferences.Editor edit = this.f16388d.edit();
        synchronized (this.f16389e) {
            if (value instanceof Boolean) {
                edit.putBoolean(key, ((Boolean) value).booleanValue());
            } else if (value instanceof String) {
                edit.putString(key, (String) value);
            } else if (value instanceof Float) {
                edit.putFloat(key, ((Number) value).floatValue());
            } else if (value instanceof Long) {
                edit.putLong(key, ((Number) value).longValue());
            } else if (value instanceof Integer) {
                edit.putInt(key, ((Number) value).intValue());
            } else {
                SharedPreferences.Editor editor = null;
                if (value instanceof Collection) {
                    o02 = w.o0((Iterable) value);
                    if (!(o02 instanceof Set)) {
                        o02 = null;
                    }
                    if (o02 != null) {
                        editor = edit.putStringSet(key, o02);
                    }
                    if (editor == null) {
                        kotlin.jvm.internal.m.d(edit, "edit");
                        i(key, value, edit);
                    }
                } else if (value instanceof Object[]) {
                    T = yc.k.T((Object[]) value);
                    if (!(T instanceof Set)) {
                        T = null;
                    }
                    if (T != null) {
                        editor = edit.putStringSet(key, T);
                    }
                    if (editor == null) {
                        kotlin.jvm.internal.m.d(edit, "edit");
                        i(key, value, edit);
                    }
                } else {
                    kotlin.jvm.internal.m.d(edit, "edit");
                    i(key, value, edit);
                }
            }
            edit.apply();
            xc.t tVar = xc.t.f32733a;
        }
    }

    @Override // lb.m
    public void c(List except) {
        kotlin.jvm.internal.m.e(except, "except");
        SharedPreferences.Editor edit = this.f16388d.edit();
        synchronized (this.f16389e) {
            Map<String, ?> all = this.f16388d.getAll();
            kotlin.jvm.internal.m.d(all, "sharedPreferences.all");
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                if (!except.contains(entry.getKey())) {
                    edit.remove(entry.getKey());
                }
            }
            edit.apply();
            xc.t tVar = xc.t.f32733a;
        }
    }

    @Override // lb.m
    public Map getAll() {
        Map q10;
        synchronized (this.f16389e) {
            Map<String, ?> all = this.f16388d.getAll();
            kotlin.jvm.internal.m.d(all, "sharedPreferences.all");
            q10 = h0.q(all);
            if (!(q10 instanceof Map)) {
                q10 = null;
            }
            if (q10 == null) {
                q10 = h0.e();
            }
            xc.t tVar = xc.t.f32733a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : q10.entrySet()) {
            if (!lb.m.f25459a.a().contains((String) entry.getKey())) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        Set g10 = g();
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            String str = (String) entry2.getKey();
            Object e10 = e(str, entry2.getValue(), g10);
            if (e10 != null) {
                linkedHashMap2.put(str, e10);
            }
        }
        return linkedHashMap2;
    }

    @Override // lb.m
    public void remove(String key) {
        kotlin.jvm.internal.m.e(key, "key");
        SharedPreferences.Editor edit = this.f16388d.edit();
        synchronized (this.f16389e) {
            edit.remove(key);
            kotlin.jvm.internal.m.d(edit, "edit");
            h(key, edit);
            edit.apply();
            xc.t tVar = xc.t.f32733a;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ u(android.content.Context r1, fb.b r2, android.content.SharedPreferences r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
        /*
            r0 = this;
            r4 = r4 & 4
            if (r4 == 0) goto L23
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r4 = "posthog-android-"
            r3.append(r4)
            java.lang.String r4 = r2.b()
            r3.append(r4)
            java.lang.String r3 = r3.toString()
            r4 = 0
            android.content.SharedPreferences r3 = r1.getSharedPreferences(r3, r4)
            java.lang.String r4 = "context.getSharedPrefere…g.apiKey}\", MODE_PRIVATE)"
            kotlin.jvm.internal.m.d(r3, r4)
        L23:
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: gb.u.<init>(android.content.Context, fb.b, android.content.SharedPreferences, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }
}
