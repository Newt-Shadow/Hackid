package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.Df;
import com.yandex.metrica.impl.ob.H1;
import com.yandex.metrica.impl.ob.Jf;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class R9 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Integer, H1.d> f11186a = Collections.unmodifiableMap(new a());

    /* renamed from: b  reason: collision with root package name */
    private static final Map<H1.d, Integer> f11187b = Collections.unmodifiableMap(new b());

    /* loaded from: classes2.dex */
    class a extends HashMap<Integer, H1.d> {
        a() {
            put(1, H1.d.WIFI);
            put(2, H1.d.CELL);
        }
    }

    /* loaded from: classes2.dex */
    class b extends HashMap<H1.d, Integer> {
        b() {
            put(H1.d.WIFI, 1);
            put(H1.d.CELL, 2);
        }
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        Jf.e eVar = (Jf.e) obj;
        Df df2 = new Df();
        Set<String> a10 = eVar.a();
        df2.f9912b = (String[]) a10.toArray(new String[((HashSet) a10).size()]);
        List<Jf.e.a> b10 = eVar.b();
        Df.a[] aVarArr = new Df.a[b10.size()];
        for (int i10 = 0; i10 < b10.size(); i10++) {
            Jf.e.a aVar = b10.get(i10);
            Df.a aVar2 = new Df.a();
            aVar2.f9914a = aVar.f10518a;
            aVar2.f9915b = aVar.f10519b;
            Df.a.C0121a[] c0121aArr = new Df.a.C0121a[aVar.f10521d.c()];
            int i11 = 0;
            for (Map.Entry<String, ? extends Collection<String>> entry : aVar.f10521d.a()) {
                for (String str : entry.getValue()) {
                    Df.a.C0121a c0121a = new Df.a.C0121a();
                    c0121a.f9921a = entry.getKey();
                    c0121a.f9922b = str;
                    c0121aArr[i11] = c0121a;
                    i11++;
                }
            }
            aVar2.f9917d = c0121aArr;
            aVar2.f9916c = aVar.f10520c;
            aVar2.f9918e = aVar.f10522e;
            List<H1.d> list = aVar.f10523f;
            int[] iArr = new int[list.size()];
            for (int i12 = 0; i12 < list.size(); i12++) {
                iArr[i12] = f11187b.get(list.get(i12)).intValue();
            }
            aVar2.f9919f = iArr;
            aVarArr[i10] = aVar2;
        }
        df2.f9911a = aVarArr;
        return df2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1, types: [int] */
    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Df df2 = (Df) obj;
        ArrayList arrayList = new ArrayList();
        Df.a[] aVarArr = df2.f9911a;
        int length = aVarArr.length;
        boolean z10 = false;
        int i10 = 0;
        while (i10 < length) {
            Df.a aVar = aVarArr[i10];
            String str = aVar.f9914a;
            String str2 = aVar.f9915b;
            String str3 = aVar.f9916c;
            Df.a.C0121a[] c0121aArr = aVar.f9917d;
            C0838rm c0838rm = new C0838rm(z10);
            int length2 = c0121aArr.length;
            for (int i11 = z10; i11 < length2; i11++) {
                Df.a.C0121a c0121a = c0121aArr[i11];
                c0838rm.a(c0121a.f9921a, c0121a.f9922b);
                aVarArr = aVarArr;
            }
            Df.a[] aVarArr2 = aVarArr;
            long j10 = aVar.f9918e;
            int[] iArr = aVar.f9919f;
            ArrayList arrayList2 = new ArrayList(iArr.length);
            int length3 = iArr.length;
            int i12 = 0;
            while (i12 < length3) {
                arrayList2.add(f11186a.get(Integer.valueOf(iArr[i12])));
                i12++;
                iArr = iArr;
                length = length;
            }
            arrayList.add(new Jf.e.a(str, str2, str3, c0838rm, j10, arrayList2));
            i10++;
            aVarArr = aVarArr2;
            z10 = false;
        }
        return new Jf.e(arrayList, Arrays.asList(df2.f9912b));
    }
}
