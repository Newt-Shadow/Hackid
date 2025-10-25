package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
/* renamed from: com.yandex.metrica.impl.ob.j4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0623j4 {

    /* renamed from: a  reason: collision with root package name */
    private final Object f12650a;

    /* renamed from: b  reason: collision with root package name */
    private final C0773p4 f12651b;

    /* renamed from: c  reason: collision with root package name */
    private final HashMap<C0599i4, InterfaceC0648k4> f12652c;

    /* renamed from: d  reason: collision with root package name */
    private final C0838rm<a, C0599i4> f12653d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f12654e;

    /* renamed from: f  reason: collision with root package name */
    private volatile int f12655f;

    /* renamed from: g  reason: collision with root package name */
    private final C0698m4 f12656g;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.yandex.metrica.impl.ob.j4$a */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final String f12657a;

        /* renamed from: b  reason: collision with root package name */
        private final Integer f12658b;

        /* renamed from: c  reason: collision with root package name */
        private final String f12659c;

        a(String str, Integer num, String str2) {
            this.f12657a = str;
            this.f12658b = num;
            this.f12659c = str2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (!this.f12657a.equals(aVar.f12657a)) {
                return false;
            }
            Integer num = this.f12658b;
            if (num == null ? aVar.f12658b != null : !num.equals(aVar.f12658b)) {
                return false;
            }
            String str = this.f12659c;
            String str2 = aVar.f12659c;
            if (str != null) {
                return str.equals(str2);
            }
            if (str2 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i10;
            int hashCode = this.f12657a.hashCode() * 31;
            Integer num = this.f12658b;
            int i11 = 0;
            if (num != null) {
                i10 = num.hashCode();
            } else {
                i10 = 0;
            }
            int i12 = (hashCode + i10) * 31;
            String str = this.f12659c;
            if (str != null) {
                i11 = str.hashCode();
            }
            return i12 + i11;
        }
    }

    public C0623j4(Context context, C0773p4 c0773p4) {
        this(context, c0773p4, new C0698m4());
    }

    public InterfaceC0648k4 a(C0599i4 c0599i4, D3 d32) {
        InterfaceC0648k4 interfaceC0648k4;
        synchronized (this.f12650a) {
            interfaceC0648k4 = this.f12652c.get(c0599i4);
            if (interfaceC0648k4 == null) {
                interfaceC0648k4 = this.f12656g.a(c0599i4).a(this.f12654e, this.f12651b, c0599i4, d32);
                this.f12652c.put(c0599i4, interfaceC0648k4);
                this.f12653d.a(new a(c0599i4.b(), c0599i4.c(), c0599i4.d()), c0599i4);
                this.f12655f++;
            }
        }
        return interfaceC0648k4;
    }

    C0623j4(Context context, C0773p4 c0773p4, C0698m4 c0698m4) {
        this.f12650a = new Object();
        this.f12652c = new HashMap<>();
        this.f12653d = new C0838rm<>();
        this.f12655f = 0;
        this.f12654e = context.getApplicationContext();
        this.f12651b = c0773p4;
        this.f12656g = c0698m4;
    }

    public void a(String str, int i10, String str2) {
        Integer valueOf = Integer.valueOf(i10);
        synchronized (this.f12650a) {
            Collection<C0599i4> b10 = this.f12653d.b(new a(str, valueOf, str2));
            if (!A2.b(b10)) {
                this.f12655f -= b10.size();
                ArrayList arrayList = new ArrayList(b10.size());
                for (C0599i4 c0599i4 : b10) {
                    arrayList.add(this.f12652c.remove(c0599i4));
                }
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((InterfaceC0648k4) it.next()).a();
                }
            }
        }
    }
}
