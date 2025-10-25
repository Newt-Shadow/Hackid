package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C0915v3;
import com.yandex.metrica.impl.ob.C0999yf;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.x9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0969x9 implements ProtobufConverter {
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0063, code lost:
        if (r10 != 3) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.yandex.metrica.impl.ob.C0999yf.a a(com.yandex.metrica.impl.ob.C0915v3.a r10) {
        /*
            r9 = this;
            com.yandex.metrica.impl.ob.yf$a r0 = new com.yandex.metrica.impl.ob.yf$a
            r0.<init>()
            java.util.Map r1 = r10.b()
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L52
            com.yandex.metrica.impl.ob.yf$b r4 = new com.yandex.metrica.impl.ob.yf$b
            r4.<init>()
            int r5 = r1.size()
            com.yandex.metrica.impl.ob.yf$b$a[] r6 = new com.yandex.metrica.impl.ob.C0999yf.b.a[r5]
            r7 = r2
        L19:
            if (r7 >= r5) goto L25
            com.yandex.metrica.impl.ob.yf$b$a r8 = new com.yandex.metrica.impl.ob.yf$b$a
            r8.<init>()
            r6[r7] = r8
            int r7 = r7 + 1
            goto L19
        L25:
            r4.f14007a = r6
            java.util.Set r1 = r1.entrySet()
            java.util.Iterator r1 = r1.iterator()
            r5 = r2
        L30:
            boolean r6 = r1.hasNext()
            if (r6 == 0) goto L53
            java.lang.Object r6 = r1.next()
            java.util.Map$Entry r6 = (java.util.Map.Entry) r6
            java.lang.Object r7 = r6.getKey()
            java.lang.String r7 = (java.lang.String) r7
            java.lang.Object r6 = r6.getValue()
            java.lang.String r6 = (java.lang.String) r6
            com.yandex.metrica.impl.ob.yf$b$a[] r8 = r4.f14007a
            r8 = r8[r5]
            r8.f14009a = r7
            r8.f14010b = r6
            int r5 = r5 + r3
            goto L30
        L52:
            r4 = 0
        L53:
            r0.f14005a = r4
            com.yandex.metrica.impl.ob.u0 r10 = r10.a()
            int r10 = r10.ordinal()
            if (r10 == r3) goto L68
            r1 = 2
            if (r10 == r1) goto L66
            r1 = 3
            if (r10 == r1) goto L66
            goto L69
        L66:
            r2 = r1
            goto L69
        L68:
            r2 = r3
        L69:
            r0.f14006b = r2
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0969x9.a(com.yandex.metrica.impl.ob.v3$a):com.yandex.metrica.impl.ob.yf$a");
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C0915v3 c0915v3 = (C0915v3) obj;
        C0999yf c0999yf = new C0999yf();
        c0999yf.f14002a = a(c0915v3.c());
        int size = c0915v3.a().size();
        C0999yf.a[] aVarArr = new C0999yf.a[size];
        for (int i10 = 0; i10 < size; i10++) {
            aVarArr[i10] = a(c0915v3.a().get(i10));
        }
        c0999yf.f14003b = aVarArr;
        return c0999yf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C0999yf c0999yf = (C0999yf) obj;
        C0999yf.a aVar = c0999yf.f14002a;
        if (aVar == null) {
            aVar = new C0999yf.a();
        }
        C0915v3.a a10 = a(aVar);
        C0999yf.a[] aVarArr = c0999yf.f14003b;
        kotlin.jvm.internal.m.d(aVarArr, "nano.candidates");
        ArrayList arrayList = new ArrayList(aVarArr.length);
        for (C0999yf.a it : aVarArr) {
            kotlin.jvm.internal.m.d(it, "it");
            arrayList.add(a(it));
        }
        return new C0915v3(a10, arrayList);
    }

    private final C0915v3.a a(C0999yf.a aVar) {
        EnumC0888u0 enumC0888u0;
        C0999yf.b bVar = aVar.f14005a;
        Map<String, String> a10 = bVar != null ? a(bVar) : null;
        int i10 = aVar.f14006b;
        if (i10 == 0) {
            enumC0888u0 = EnumC0888u0.UNDEFINED;
        } else if (i10 == 1) {
            enumC0888u0 = EnumC0888u0.APP;
        } else if (i10 == 2) {
            enumC0888u0 = EnumC0888u0.SATELLITE;
        } else if (i10 != 3) {
            enumC0888u0 = EnumC0888u0.UNDEFINED;
        } else {
            enumC0888u0 = EnumC0888u0.RETAIL;
        }
        return new C0915v3.a(a10, enumC0888u0);
    }

    private final Map<String, String> a(C0999yf.b bVar) {
        int b10;
        int b11;
        C0999yf.b.a[] aVarArr = bVar.f14007a;
        kotlin.jvm.internal.m.d(aVarArr, "proto.pairs");
        b10 = yc.g0.b(aVarArr.length);
        b11 = od.i.b(b10, 16);
        LinkedHashMap linkedHashMap = new LinkedHashMap(b11);
        for (C0999yf.b.a aVar : aVarArr) {
            xc.k a10 = xc.q.a(aVar.f14009a, aVar.f14010b);
            linkedHashMap.put(a10.c(), a10.d());
        }
        return linkedHashMap;
    }
}
