package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: com.yandex.metrica.impl.ob.um  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0910um {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: c  reason: collision with root package name */
    private static volatile C0910um f13782c;

    /* renamed from: a  reason: collision with root package name */
    private final Context f13783a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, C0862sm> f13784b = new HashMap();

    C0910um(Context context) {
        this.f13783a = context;
    }

    public static C0910um a(Context context) {
        if (f13782c == null) {
            synchronized (C0910um.class) {
                if (f13782c == null) {
                    f13782c = new C0910um(context);
                }
            }
        }
        return f13782c;
    }

    public C0862sm a(String str) {
        if (!this.f13784b.containsKey(str)) {
            synchronized (this) {
                if (!this.f13784b.containsKey(str)) {
                    this.f13784b.put(str, new C0862sm(new ReentrantLock(), new C0886tm(this.f13783a, str)));
                }
            }
        }
        return this.f13784b.get(str);
    }
}
