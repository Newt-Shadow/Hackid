package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class Ha extends K2 {

    /* renamed from: b  reason: collision with root package name */
    public final Ea f18300b;

    /* renamed from: c  reason: collision with root package name */
    public final Ea f18301c;

    /* renamed from: d  reason: collision with root package name */
    public final Ga f18302d;

    public Ha(int i10, int i11, int i12) {
        this(i10, new Ea(i11), new Ea(i12));
    }

    public Ha(int i10, Ea ea2, Ea ea3) {
        super(i10);
        this.f18302d = new Ga();
        this.f18300b = ea2;
        this.f18301c = ea3;
    }

    @Override // io.appmetrica.analytics.impl.K2, io.appmetrica.analytics.impl.Fa
    public final C1503sn a(Map<String, String> map) {
        HashMap hashMap;
        int i10;
        int i11 = 0;
        if (map != null) {
            hashMap = new HashMap();
            Set<Map.Entry<String, String>> entrySet = map.entrySet();
            Map.Entry[] entryArr = (Map.Entry[]) entrySet.toArray(new Map.Entry[entrySet.size()]);
            Arrays.sort(entryArr, this.f18302d);
            int length = entryArr.length;
            i10 = 0;
            int i12 = 0;
            boolean z10 = false;
            int i13 = 0;
            while (i11 < length) {
                Map.Entry entry = entryArr[i11];
                C1503sn a10 = this.f18300b.a((String) entry.getKey());
                C1503sn a11 = this.f18301c.a((String) entry.getValue());
                int utf8BytesLength = StringUtils.getUtf8BytesLength((String) entry.getValue()) + StringUtils.getUtf8BytesLength((String) entry.getKey());
                int utf8BytesLength2 = StringUtils.getUtf8BytesLength((String) a11.f20611a) + StringUtils.getUtf8BytesLength((String) a10.f20611a);
                if (z10 || utf8BytesLength2 + i13 > this.f18473a) {
                    i12++;
                    i10 += utf8BytesLength;
                    z10 = true;
                } else {
                    i10 = a11.f20612b.getBytesTruncated() + a10.f20612b.getBytesTruncated() + i10;
                    int utf8BytesLength3 = StringUtils.getUtf8BytesLength((String) a11.f20611a) + StringUtils.getUtf8BytesLength((String) a10.f20611a) + i13;
                    hashMap.put((String) a10.f20611a, (String) a11.f20611a);
                    i13 = utf8BytesLength3;
                }
                i11++;
            }
            i11 = i12;
        } else {
            hashMap = null;
            i10 = 0;
        }
        return new C1503sn(hashMap, new E4(i11, i10));
    }
}
