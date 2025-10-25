package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class Kd {

    /* renamed from: e  reason: collision with root package name */
    private static final Rd f10621e = new Rd("UNDEFINED_", null);

    /* renamed from: a  reason: collision with root package name */
    protected final String f10622a;

    /* renamed from: b  reason: collision with root package name */
    protected final SharedPreferences f10623b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Object> f10624c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private boolean f10625d = false;

    public Kd(Context context, String str) {
        this.f10622a = str;
        this.f10623b = a(context);
        new Rd(f10621e.b(), str);
    }

    private SharedPreferences a(Context context) {
        return C0419b.a(context, d());
    }

    public void b() {
        synchronized (this) {
            a();
            this.f10624c.clear();
            this.f10625d = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String c() {
        return this.f10622a;
    }

    protected abstract String d();

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public <T extends Kd> T e() {
        synchronized (this) {
            this.f10625d = true;
            this.f10624c.clear();
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public <T extends Kd> T a(String str, Object obj) {
        synchronized (this) {
            if (obj != null) {
                this.f10624c.put(str, obj);
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public <T extends Kd> T a(String str) {
        synchronized (this) {
            this.f10624c.put(str, this);
        }
        return this;
    }

    private void a() {
        SharedPreferences.Editor edit = this.f10623b.edit();
        if (this.f10625d) {
            edit.clear();
            edit.apply();
            return;
        }
        for (Map.Entry<String, Object> entry : this.f10624c.entrySet()) {
            String key = entry.getKey();
            Object value = entry.getValue();
            if (value == this) {
                edit.remove(key);
            } else if (value instanceof String) {
                edit.putString(key, (String) value);
            } else if (value instanceof Long) {
                edit.putLong(key, ((Long) value).longValue());
            } else if (value instanceof Integer) {
                edit.putInt(key, ((Integer) value).intValue());
            } else if (value instanceof Boolean) {
                edit.putBoolean(key, ((Boolean) value).booleanValue());
            } else if (value != null) {
                throw new UnsupportedOperationException();
            }
        }
        edit.apply();
    }
}
