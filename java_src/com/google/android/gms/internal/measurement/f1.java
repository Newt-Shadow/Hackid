package com.google.android.gms.internal.measurement;

import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes.dex */
final class f1 implements SharedPreferences.Editor {

    /* renamed from: a  reason: collision with root package name */
    boolean f6380a;

    /* renamed from: b  reason: collision with root package name */
    final Set f6381b;

    /* renamed from: c  reason: collision with root package name */
    final Map f6382c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ g1 f6383d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ f1(g1 g1Var, byte[] bArr) {
        Objects.requireNonNull(g1Var);
        this.f6383d = g1Var;
        this.f6380a = false;
        this.f6381b = new HashSet();
        this.f6382c = new HashMap();
    }

    private final void a(String str, Object obj) {
        if (obj != null) {
            this.f6382c.put(str, obj);
        } else {
            remove(str);
        }
    }

    @Override // android.content.SharedPreferences.Editor
    public final void apply() {
        commit();
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor clear() {
        this.f6380a = true;
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final boolean commit() {
        if (this.f6380a) {
            this.f6383d.a().clear();
        }
        g1 g1Var = this.f6383d;
        Set set = this.f6381b;
        g1Var.a().keySet().removeAll(set);
        Map map = this.f6382c;
        for (Map.Entry entry : map.entrySet()) {
            Object value = entry.getValue();
            g1Var.a().put((String) entry.getKey(), value);
        }
        for (SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener : g1Var.b()) {
            o6.r0 d10 = o6.o0.k(set, map.keySet()).d();
            while (d10.hasNext()) {
                onSharedPreferenceChangeListener.onSharedPreferenceChanged(g1Var, (String) d10.next());
            }
        }
        if (!this.f6380a && set.isEmpty() && map.isEmpty()) {
            return false;
        }
        return true;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putBoolean(String str, boolean z10) {
        a(str, Boolean.valueOf(z10));
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putFloat(String str, float f10) {
        a(str, Float.valueOf(f10));
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putInt(String str, int i10) {
        a(str, Integer.valueOf(i10));
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putLong(String str, long j10) {
        a(str, Long.valueOf(j10));
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putString(String str, String str2) {
        a(str, str2);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor putStringSet(String str, Set set) {
        a(str, set);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public final SharedPreferences.Editor remove(String str) {
        this.f6381b.add(str);
        return this;
    }
}
