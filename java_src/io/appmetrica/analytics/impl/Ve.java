package io.appmetrica.analytics.impl;

import java.util.List;
import java.util.Set;
import org.json.JSONArray;
/* loaded from: classes2.dex */
public abstract class Ve {

    /* renamed from: c  reason: collision with root package name */
    public static final String f19128c = "Ve";

    /* renamed from: a  reason: collision with root package name */
    public final Ta f19129a;

    /* renamed from: b  reason: collision with root package name */
    public final String f19130b;

    public Ve(Ta ta2, String str) {
        this.f19129a = ta2;
        this.f19130b = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends Ve> T a(String str, float f10) {
        synchronized (this) {
            this.f19129a.a(str, f10);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends Ve> T b(String str, String str2) {
        synchronized (this) {
            this.f19129a.a(str, str2);
        }
        return this;
    }

    public final We c(String str) {
        return new We(str, this.f19130b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends Ve> T d(String str) {
        synchronized (this) {
            this.f19129a.remove(str);
        }
        return this;
    }

    public Set<String> c() {
        return this.f19129a.a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends Ve> T a(String str, String[] strArr) {
        String str2;
        try {
            JSONArray jSONArray = new JSONArray();
            for (String str3 : strArr) {
                jSONArray.put(str3);
            }
            str2 = jSONArray.toString();
        } catch (Throwable unused) {
            str2 = null;
        }
        this.f19129a.a(str, str2);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends Ve> T b(String str, long j10) {
        synchronized (this) {
            this.f19129a.a(str, j10);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends Ve> T b(String str, int i10) {
        synchronized (this) {
            this.f19129a.a(i10, str);
        }
        return this;
    }

    public final <T extends Ve> T a(String str, List<String> list) {
        return (T) a(str, (String[]) list.toArray(new String[list.size()]));
    }

    public final long a(String str, long j10) {
        return this.f19129a.getLong(str, j10);
    }

    public final int a(String str, int i10) {
        return this.f19129a.getInt(str, i10);
    }

    public final String a(String str, String str2) {
        return this.f19129a.getString(str, str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T extends Ve> T b(String str, boolean z10) {
        synchronized (this) {
            this.f19129a.a(str, z10);
        }
        return this;
    }

    public final boolean a(String str, boolean z10) {
        return this.f19129a.getBoolean(str, z10);
    }

    public final void b() {
        synchronized (this) {
            this.f19129a.b();
        }
    }

    public final boolean b(String str) {
        return this.f19129a.a(str);
    }
}
