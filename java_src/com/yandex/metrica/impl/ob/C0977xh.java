package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.xh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0977xh {

    /* renamed from: a  reason: collision with root package name */
    private final C0962x2 f13962a;

    /* renamed from: b  reason: collision with root package name */
    private final C0953wh f13963b;

    public C0977xh(C0953wh c0953wh) {
        this(c0953wh, new C0962x2());
    }

    public long a(int i10) {
        return a().optLong(String.valueOf(i10));
    }

    C0977xh(C0953wh c0953wh, C0962x2 c0962x2) {
        this.f13963b = c0953wh;
        this.f13962a = c0962x2;
    }

    public void a(int i10, long j10) {
        JSONObject a10 = a();
        try {
            a10.put(String.valueOf(i10), j10);
        } catch (Throwable unused) {
        }
        this.f13963b.a(a10.toString());
    }

    public void a(long j10) {
        ArrayList arrayList = new ArrayList();
        JSONObject a10 = a();
        Iterator<String> keys = a10.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            long optLong = a10.optLong(next);
            C0962x2 c0962x2 = this.f13962a;
            if (c0962x2.b(optLong, j10, "last socket open on " + next)) {
                arrayList.add(next);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            a10.remove((String) it.next());
        }
        this.f13963b.a(a10.toString());
    }

    private JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        String a10 = this.f13963b.a();
        if (TextUtils.isEmpty(a10)) {
            return jSONObject;
        }
        try {
            return new JSONObject(a10);
        } catch (Throwable unused) {
            return jSONObject;
        }
    }
}
