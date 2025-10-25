package com.yandex.metrica.impl.ob;

import android.app.Activity;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.pl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0790pl {

    /* renamed from: a  reason: collision with root package name */
    private final Kk f13178a;

    /* renamed from: b  reason: collision with root package name */
    private final Ik f13179b;

    /* renamed from: c  reason: collision with root package name */
    private final Jk f13180c;

    /* renamed from: d  reason: collision with root package name */
    private final Gk f13181d;

    /* renamed from: e  reason: collision with root package name */
    private final String f13182e;

    public C0790pl(Kk kk, Ik ik, Jk jk, Gk gk, String str) {
        this.f13178a = kk;
        this.f13179b = ik;
        this.f13180c = jk;
        this.f13181d = gk;
        this.f13182e = str;
    }

    public JSONObject a(Activity activity, C0491dl c0491dl, C0591hl c0591hl, Ak ak, long j10) {
        JSONObject a10 = this.f13178a.a(activity, j10);
        try {
            this.f13180c.a(a10, new JSONObject(), this.f13182e);
            this.f13180c.a(a10, this.f13179b.a(c0491dl, c0591hl, ak, (a10.toString().getBytes().length + (this.f13181d.a(new JSONObject()).toString().getBytes().length - 2)) - 2), this.f13182e);
        } catch (Throwable unused) {
        }
        return a10;
    }
}
