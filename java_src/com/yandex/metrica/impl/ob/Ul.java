package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class Ul {

    /* renamed from: a  reason: collision with root package name */
    private static Map<String, C0467cm> f11620a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private static Map<String, Sl> f11621b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private static final Object f11622c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static final Object f11623d = new Object();

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f11624e = 0;

    public static Sl a(String str) {
        if (TextUtils.isEmpty(str)) {
            return Sl.a();
        }
        Sl sl = f11621b.get(str);
        if (sl == null) {
            synchronized (f11623d) {
                sl = f11621b.get(str);
                if (sl == null) {
                    sl = new Sl(str);
                    f11621b.put(str, sl);
                }
            }
        }
        return sl;
    }

    public static C0467cm b(String str) {
        if (TextUtils.isEmpty(str)) {
            return C0467cm.a();
        }
        C0467cm c0467cm = f11620a.get(str);
        if (c0467cm == null) {
            synchronized (f11622c) {
                c0467cm = f11620a.get(str);
                if (c0467cm == null) {
                    c0467cm = new C0467cm(str);
                    f11620a.put(str, c0467cm);
                }
            }
        }
        return c0467cm;
    }

    public static C0467cm a() {
        return C0467cm.a();
    }
}
