package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes.dex */
public abstract class u9 implements hc {
    private static void e(List list, int i10) {
        int size = list.size() - i10;
        StringBuilder sb2 = new StringBuilder(String.valueOf(size).length() + 26);
        sb2.append("Element at index ");
        sb2.append(size);
        sb2.append(" is null.");
        String sb3 = sb2.toString();
        int size2 = list.size();
        while (true) {
            size2--;
            if (size2 >= i10) {
                list.remove(size2);
            } else {
                throw new NullPointerException(sb3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void j(Iterable iterable, List list) {
        byte[] bArr = ob.f6616b;
        iterable.getClass();
        if (iterable instanceof sb) {
            List zza = ((sb) iterable).zza();
            sb sbVar = (sb) list;
            int size = list.size();
            for (Object obj : zza) {
                if (obj == null) {
                    int size2 = sbVar.size() - size;
                    StringBuilder sb2 = new StringBuilder(String.valueOf(size2).length() + 26);
                    sb2.append("Element at index ");
                    sb2.append(size2);
                    sb2.append(" is null.");
                    String sb3 = sb2.toString();
                    int size3 = sbVar.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            break;
                        }
                        sbVar.remove(size3);
                    }
                    throw new NullPointerException(sb3);
                } else if (obj instanceof ka) {
                    ka kaVar = (ka) obj;
                    sbVar.e();
                } else if (obj instanceof byte[]) {
                    byte[] bArr2 = (byte[]) obj;
                    ka.o(bArr2, 0, bArr2.length);
                    sbVar.e();
                } else {
                    sbVar.add((String) obj);
                }
            }
        } else if (!(iterable instanceof pc)) {
            if (iterable instanceof Collection) {
                int size4 = ((Collection) iterable).size();
                if (list instanceof ArrayList) {
                    ((ArrayList) list).ensureCapacity(list.size() + size4);
                } else if (list instanceof rc) {
                    ((rc) list).i(list.size() + size4);
                }
            }
            int size5 = list.size();
            if ((iterable instanceof List) && (iterable instanceof RandomAccess)) {
                List list2 = (List) iterable;
                int size6 = list2.size();
                for (int i10 = 0; i10 < size6; i10++) {
                    Object obj2 = list2.get(i10);
                    if (obj2 == null) {
                        e(list, size5);
                    }
                    list.add(obj2);
                }
                return;
            }
            for (Object obj3 : iterable) {
                if (obj3 == null) {
                    e(list, size5);
                }
                list.add(obj3);
            }
        } else {
            list.addAll((Collection) iterable);
        }
    }

    public abstract u9 f(byte[] bArr, int i10, int i11);

    public abstract u9 i(byte[] bArr, int i10, int i11, ua uaVar);

    @Override // com.google.android.gms.internal.measurement.hc
    public final /* synthetic */ hc o0(byte[] bArr, ua uaVar) {
        return i(bArr, 0, bArr.length, uaVar);
    }

    @Override // com.google.android.gms.internal.measurement.hc
    public final /* synthetic */ hc t0(byte[] bArr) {
        return f(bArr, 0, bArr.length);
    }
}
