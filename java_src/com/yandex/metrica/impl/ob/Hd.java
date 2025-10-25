package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class Hd {

    /* renamed from: a  reason: collision with root package name */
    private Context f10202a;

    public Hd(Context context) {
        this.f10202a = context;
    }

    public void a() {
        SharedPreferences a10 = C0419b.a(this.f10202a, "_bidoptpreferences");
        if (a10.getAll().size() > 0) {
            Rd rd2 = Pd.f11077p;
            String string = a10.getString(rd2.b(), null);
            Pd pd2 = new Pd(this.f10202a, null);
            if (!TextUtils.isEmpty(string) && TextUtils.isEmpty(pd2.b((String) null))) {
                pd2.i(string).b();
                a10.edit().remove(rd2.b()).apply();
            }
            Map<String, ?> all = a10.getAll();
            if (all.size() > 0) {
                Iterator it = ((ArrayList) a(all, Pd.f11078q.b())).iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    String string2 = a10.getString(new Rd(Pd.f11078q.b(), str).a(), null);
                    Pd pd3 = new Pd(this.f10202a, str);
                    if (!TextUtils.isEmpty(string2) && TextUtils.isEmpty(pd3.h(null))) {
                        pd3.j(string2).b();
                    }
                }
            }
            a10.edit().clear().apply();
        }
    }

    public void b() {
        S7 p10 = C0629ja.a(this.f10202a).p();
        SharedPreferences a10 = C0419b.a(this.f10202a, "_startupserviceinfopreferences");
        C0529f9 c0529f9 = new C0529f9(p10, null);
        Rd rd2 = Pd.f11077p;
        String string = a10.getString(rd2.b(), null);
        if (!TextUtils.isEmpty(string) && TextUtils.isEmpty(c0529f9.g().f13390b)) {
            c0529f9.i(string).d();
            a10.edit().remove(rd2.b()).apply();
        }
        C0529f9 c0529f92 = new C0529f9(p10, this.f10202a.getPackageName());
        boolean z10 = a10.getBoolean(Pd.f11086y.b(), false);
        if (z10) {
            c0529f92.a(z10).d();
        }
        a(p10, this.f10202a.getPackageName());
        Iterator it = ((ArrayList) a(a10.getAll(), Pd.f11078q.b())).iterator();
        while (it.hasNext()) {
            a(p10, (String) it.next());
        }
    }

    private List<String> a(Map<String, ?> map, String str) {
        ArrayList arrayList = new ArrayList();
        for (String str2 : map.keySet()) {
            if (str2.startsWith(str)) {
                arrayList.add(str2.replace(str, ""));
            }
        }
        return arrayList;
    }

    private void a(S7 s72, String str) {
        C0529f9 c0529f9 = new C0529f9(s72, str);
        Pd pd2 = new Pd(this.f10202a, str);
        String h10 = pd2.h(null);
        if (!TextUtils.isEmpty(h10)) {
            c0529f9.o(h10);
        }
        String c10 = pd2.c(null);
        if (!TextUtils.isEmpty(c10)) {
            c0529f9.j(c10);
        }
        String d10 = pd2.d(null);
        if (!TextUtils.isEmpty(d10)) {
            c0529f9.k(d10);
        }
        String f10 = pd2.f(null);
        if (!TextUtils.isEmpty(f10)) {
            c0529f9.m(f10);
        }
        String e10 = pd2.e(null);
        if (!TextUtils.isEmpty(e10)) {
            c0529f9.l(e10);
        }
        long a10 = pd2.a(-1L);
        if (a10 != -1) {
            c0529f9.b(a10);
        }
        String g10 = pd2.g(null);
        if (!TextUtils.isEmpty(g10)) {
            c0529f9.n(g10);
        }
        c0529f9.d();
        pd2.f();
    }
}
