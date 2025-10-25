package com.yandex.metrica.impl.ob;

import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.ln  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0692ln extends AbstractC0593hn {

    /* renamed from: b  reason: collision with root package name */
    private final C0667kn f12814b;

    /* renamed from: c  reason: collision with root package name */
    private final C0667kn f12815c;

    /* renamed from: d  reason: collision with root package name */
    private Comparator<Map.Entry<String, String>> f12816d;

    /* renamed from: com.yandex.metrica.impl.ob.ln$a */
    /* loaded from: classes2.dex */
    class a implements Comparator<Map.Entry<String, String>> {
        a(C0692ln c0692ln) {
        }

        @Override // java.util.Comparator
        public int compare(Map.Entry<String, String> entry, Map.Entry<String, String> entry2) {
            int length = C0419b.b(entry.getValue()).length;
            int length2 = C0419b.b(entry2.getValue()).length;
            if (length < length2) {
                return -1;
            }
            if (length == length2) {
                return 0;
            }
            return 1;
        }
    }

    public C0692ln(int i10, int i11, int i12) {
        this(i10, new C0667kn(i11), new C0667kn(i12));
    }

    public C0692ln(int i10, C0667kn c0667kn, C0667kn c0667kn2) {
        super(i10);
        this.f12816d = new a(this);
        this.f12814b = c0667kn;
        this.f12815c = c0667kn2;
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC0593hn
    public C0568gn<Map<String, String>, Xm> a(Map<String, String> map) {
        HashMap hashMap;
        int i10;
        int i11 = 0;
        if (map != null) {
            hashMap = new HashMap();
            Set<Map.Entry<String, String>> entrySet = map.entrySet();
            Map.Entry[] entryArr = (Map.Entry[]) entrySet.toArray(new Map.Entry[entrySet.size()]);
            Arrays.sort(entryArr, this.f12816d);
            int length = entryArr.length;
            i10 = 0;
            int i12 = 0;
            boolean z10 = false;
            int i13 = 0;
            while (i11 < length) {
                Map.Entry entry = entryArr[i11];
                C0568gn<String, Vm> a10 = this.f12814b.a((String) entry.getKey());
                C0568gn<String, Vm> a11 = this.f12815c.a((String) entry.getValue());
                int length2 = C0419b.b((String) entry.getKey()).length + C0419b.b((String) entry.getValue()).length;
                int length3 = C0419b.b(a10.f12493a).length + C0419b.b(a11.f12493a).length;
                if (z10 || length3 + i13 > a()) {
                    i12++;
                    i10 += length2;
                    z10 = true;
                } else {
                    i10 = i10 + a10.f12494b.a() + a11.f12494b.a();
                    i13 += C0419b.b(a10.f12493a).length + C0419b.b(a11.f12493a).length;
                    hashMap.put(a10.f12493a, a11.f12493a);
                }
                i11++;
            }
            i11 = i12;
        } else {
            hashMap = null;
            i10 = 0;
        }
        return new C0568gn<>(hashMap, new Xm(i11, i10));
    }
}
