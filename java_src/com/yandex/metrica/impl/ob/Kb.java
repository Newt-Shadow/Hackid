package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import com.yandex.metrica.identifiers.AdsIdentifiersProvider;
import com.yandex.metrica.impl.ob.C0875tb;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public class Kb implements InterfaceC0923vb {

    /* renamed from: a  reason: collision with root package name */
    private final String f10619a;

    /* renamed from: b  reason: collision with root package name */
    private final Jb f10620b;

    public Kb(String str) {
        this(str, new Jb());
    }

    private C0899ub b(Context context) {
        int i10 = AdsIdentifiersProvider.f9654a;
        Method method = AdsIdentifiersProvider.class.getMethod("requestIdentifiers", Context.class, Bundle.class);
        Bundle bundle = new Bundle();
        bundle.putString("com.yandex.metrica.identifiers.extra.PROVIDER", this.f10619a);
        Jb jb2 = this.f10620b;
        Object[] objArr = {context, bundle};
        C0875tb c0875tb = null;
        Boolean bool = null;
        Bundle bundle2 = (Bundle) method.invoke(null, objArr);
        jb2.getClass();
        if (bundle2 == null) {
            return null;
        }
        Bundle bundle3 = bundle2.getBundle("com.yandex.metrica.identifiers.extra.TRACKING_INFO");
        if (bundle3 != null) {
            C0875tb.a aVar = Ib.f10227a.get(bundle3.getString("com.yandex.metrica.identifiers.extra.PROVIDER"));
            if (aVar != null) {
                C0875tb.a aVar2 = aVar;
                String string = bundle3.getString("com.yandex.metrica.identifiers.extra.ID");
                if (bundle3.containsKey("com.yandex.metrica.identifiers.extra.LIMITED")) {
                    bool = Boolean.valueOf(bundle3.getBoolean("com.yandex.metrica.identifiers.extra.LIMITED"));
                }
                c0875tb = new C0875tb(aVar2, string, bool);
            } else {
                throw new IllegalArgumentException(("Provider " + bundle3.getString("com.yandex.metrica.identifiers.extra.PROVIDER") + " is invalid").toString());
            }
        }
        return new C0899ub(c0875tb, U0.a(bundle2.getString("com.yandex.metrica.identifiers.extra.STATUS")), bundle2.getString("com.yandex.metrica.identifiers.extra.ERROR_MESSAGE"));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0923vb
    public C0899ub a(Context context) {
        return a(context, new Fb());
    }

    Kb(String str, Jb jb2) {
        this.f10619a = str;
        this.f10620b = jb2;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0923vb
    public C0899ub a(Context context, Gb gb2) {
        C0899ub c0899ub;
        gb2.c();
        C0899ub c0899ub2 = null;
        while (gb2.b()) {
            try {
                return b(context);
            } catch (InvocationTargetException e10) {
                String message = e10.getTargetException() != null ? e10.getTargetException().getMessage() : null;
                c0899ub = new C0899ub(null, U0.UNKNOWN, "exception while fetching " + this.f10619a + " adv_id: " + message);
                c0899ub2 = c0899ub;
                try {
                    Thread.sleep(gb2.a());
                } catch (InterruptedException unused) {
                }
            } catch (Throwable th) {
                c0899ub = new C0899ub(null, U0.UNKNOWN, "exception while fetching " + this.f10619a + " adv_id: " + th.getMessage());
                c0899ub2 = c0899ub;
                Thread.sleep(gb2.a());
            }
        }
        return c0899ub2 == null ? new C0899ub() : c0899ub2;
    }
}
