package com.yandex.metrica.impl.ob;

import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.kk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0664kk {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedList<JSONObject> f12752a;

    /* renamed from: b  reason: collision with root package name */
    private final C0429b9 f12753b;

    /* renamed from: c  reason: collision with root package name */
    private final LinkedList<String> f12754c;

    /* renamed from: d  reason: collision with root package name */
    private final Gk f12755d;

    /* renamed from: e  reason: collision with root package name */
    private int f12756e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0664kk(int i10, C0429b9 c0429b9) {
        this(i10, c0429b9, new C0540fk());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(JSONObject jSONObject) {
        if (this.f12752a.size() == this.f12756e) {
            this.f12752a.removeLast();
            this.f12754c.removeLast();
        }
        String jSONObject2 = jSONObject.toString();
        this.f12752a.addFirst(jSONObject);
        this.f12754c.addFirst(jSONObject2);
        if (this.f12754c.isEmpty()) {
            return;
        }
        this.f12753b.a(this.f12754c);
    }

    public List<JSONObject> b() {
        return this.f12752a;
    }

    C0664kk(int i10, C0429b9 c0429b9, Gk gk) {
        this.f12752a = new LinkedList<>();
        this.f12754c = new LinkedList<>();
        this.f12756e = i10;
        this.f12753b = c0429b9;
        this.f12755d = gk;
        a(c0429b9);
    }

    private void a(C0429b9 c0429b9) {
        List<String> h10 = c0429b9.h();
        for (int max = Math.max(0, h10.size() - this.f12756e); max < h10.size(); max++) {
            String str = h10.get(max);
            try {
                this.f12752a.addLast(new JSONObject(str));
                this.f12754c.addLast(str);
            } catch (Throwable unused) {
            }
        }
    }

    public JSONObject a() {
        return this.f12755d.a(new JSONArray((Collection) this.f12752a));
    }
}
