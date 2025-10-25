package com.yandex.metrica.impl.ob;

import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
/* loaded from: classes2.dex */
public class Id {

    /* renamed from: b  reason: collision with root package name */
    public static final Map<String, String> f10228b = Collections.unmodifiableMap(new a());

    /* renamed from: a  reason: collision with root package name */
    private Jd f10229a;

    /* loaded from: classes2.dex */
    class a extends HashMap<String, String> {
        a() {
            put("20799a27-fa80-4b36-b2db-0f8141f24180", "13");
            put("01528cc0-dd34-494d-9218-24af1317e1ee", "17233");
            put("4e610cd2-753f-4bfc-9b05-772ce8905c5e", "21952");
            put("67bb016b-be40-4c08-a190-96a3f3b503d3", "22675");
            put("e4250327-8d3c-4d35-b9e8-3c1720a64b91", "22678");
            put("6c5f504e-8928-47b5-bfb5-73af8d8bf4b4", "30404");
            put("7d962ba4-a392-449a-a02d-6c5be5613928", "30407");
        }
    }

    public Id(Jd jd2) {
        this.f10229a = jd2;
    }

    public void a() {
        if (this.f10229a.b(null) != null) {
            this.f10229a.j();
            this.f10229a.f();
        }
    }

    public void b() {
        String str;
        Map<String, ?> all = this.f10229a.f10623b.getAll();
        for (String str2 : f10228b.values()) {
            int i10 = Jd.f10496j;
            all.remove(new Rd("init_event_pref_key", str2).a());
        }
        LinkedList linkedList = new LinkedList();
        for (String str3 : all.keySet()) {
            try {
                int i11 = Jd.f10496j;
                linkedList.add(Integer.valueOf(Integer.parseInt(str3.replace("init_event_pref_key", ""))));
            } catch (Throwable unused) {
            }
        }
        if (linkedList.size() == 1) {
            str = ((Integer) linkedList.getFirst()).toString();
        } else {
            str = null;
        }
        a(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0038  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c() {
        /*
            r4 = this;
            java.util.Map<java.lang.String, java.lang.String> r0 = com.yandex.metrica.impl.ob.Id.f10228b
            com.yandex.metrica.impl.ob.Jd r1 = r4.f10229a
            java.lang.String r1 = r1.f10622a
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            boolean r1 = android.text.TextUtils.isEmpty(r0)
            if (r1 != 0) goto L35
            com.yandex.metrica.impl.ob.Jd r1 = r4.f10229a
            android.content.SharedPreferences r1 = r1.f10623b
            java.util.Map r1 = r1.getAll()
            int r2 = com.yandex.metrica.impl.ob.Jd.f10496j
            com.yandex.metrica.impl.ob.Rd r2 = new com.yandex.metrica.impl.ob.Rd
            java.lang.String r3 = "init_event_pref_key"
            r2.<init>(r3, r0)
            java.lang.String r2 = r2.a()
            java.lang.Object r1 = r1.get(r2)
            java.lang.String r2 = "DONE"
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L35
            r1 = 1
            goto L36
        L35:
            r1 = 0
        L36:
            if (r1 == 0) goto L3b
            r4.a(r0)
        L3b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Id.c():void");
    }

    void a(String str) {
        if (str != null) {
            Jd jd2 = this.f10229a;
            jd2.getClass();
            jd2.f10623b.edit().remove(new Rd("init_event_pref_key", str).a()).apply();
            this.f10229a.j();
        }
    }
}
