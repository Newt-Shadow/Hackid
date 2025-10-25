package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.res.Configuration;
import android.os.LocaleList;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
/* renamed from: com.yandex.metrica.impl.ob.g1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0546g1 {

    /* renamed from: c  reason: collision with root package name */
    private static volatile C0546g1 f12436c;

    /* renamed from: d  reason: collision with root package name */
    private static final Object f12437d = new Object();

    /* renamed from: a  reason: collision with root package name */
    private List<String> f12438a;

    /* renamed from: b  reason: collision with root package name */
    private final List<a> f12439b = new ArrayList();

    /* renamed from: com.yandex.metrica.impl.ob.g1$a */
    /* loaded from: classes2.dex */
    public interface a {
        void a();
    }

    C0546g1(Context context) {
        synchronized (this) {
            this.f12438a = a(context.getResources().getConfiguration());
        }
    }

    public static C0546g1 a(Context context) {
        if (f12436c == null) {
            synchronized (f12437d) {
                if (f12436c == null) {
                    f12436c = new C0546g1(context.getApplicationContext());
                }
            }
        }
        return f12436c;
    }

    public void b(Configuration configuration) {
        ArrayList arrayList;
        synchronized (this) {
            this.f12438a = a(configuration);
            arrayList = new ArrayList(this.f12439b);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((a) it.next()).a();
        }
    }

    public List<String> a() {
        return this.f12438a;
    }

    public synchronized void a(a aVar) {
        this.f12439b.add(aVar);
    }

    private List<String> a(Configuration configuration) {
        if (A2.a(24)) {
            ArrayList arrayList = new ArrayList();
            LocaleList locales = configuration.getLocales();
            if (locales != null) {
                kotlin.jvm.internal.m.d(locales, "configuration.locales ?: return result");
                int size = locales.size();
                for (int i10 = 0; i10 < size; i10++) {
                    Locale locale = locales.get(i10);
                    if (locale != null) {
                        String a10 = H1.a(locale);
                        kotlin.jvm.internal.m.d(a10, "PhoneUtils.normalizedLocale(it)");
                        arrayList.add(a10);
                    }
                }
            }
            return arrayList;
        }
        return Collections.singletonList(H1.a(configuration.locale));
    }
}
