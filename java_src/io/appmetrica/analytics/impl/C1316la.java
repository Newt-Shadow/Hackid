package io.appmetrica.analytics.impl;

import android.content.Context;
import java.util.HashMap;
/* renamed from: io.appmetrica.analytics.impl.la  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1316la {

    /* renamed from: c  reason: collision with root package name */
    public static volatile C1316la f20017c;

    /* renamed from: a  reason: collision with root package name */
    public final Context f20018a;

    /* renamed from: b  reason: collision with root package name */
    public final HashMap f20019b = new HashMap();

    public C1316la(Context context) {
        this.f20018a = context;
    }

    public static C1316la a(Context context) {
        if (f20017c == null) {
            synchronized (C1316la.class) {
                if (f20017c == null) {
                    f20017c = new C1316la(context);
                }
            }
        }
        return f20017c;
    }

    public final I9 a(String str) {
        if (!this.f20019b.containsKey(str)) {
            synchronized (this) {
                if (!this.f20019b.containsKey(str)) {
                    this.f20019b.put(str, new I9(this.f20018a, str));
                }
            }
        }
        return (I9) this.f20019b.get(str);
    }
}
