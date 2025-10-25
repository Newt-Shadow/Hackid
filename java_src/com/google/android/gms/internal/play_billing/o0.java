package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class o0 implements f3 {
    protected int zza = 0;

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public static void c(Iterable iterable, List list) {
        byte[] bArr = j2.f7023d;
        iterable.getClass();
        if (iterable instanceof o2) {
            List a10 = ((o2) iterable).a();
            o2 o2Var = (o2) list;
            int size = list.size();
            for (Object obj : a10) {
                if (obj == null) {
                    String str = "Element at index " + (o2Var.size() - size) + " is null.";
                    int size2 = o2Var.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            break;
                        }
                        o2Var.remove(size2);
                    }
                    throw new NullPointerException(str);
                } else if (obj instanceof e1) {
                    o2Var.k0((e1) obj);
                } else {
                    o2Var.add((String) obj);
                }
            }
        } else if (!(iterable instanceof m3)) {
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + iterable.size());
            }
            int size3 = list.size();
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    String str2 = "Element at index " + (list.size() - size3) + " is null.";
                    int size4 = list.size();
                    while (true) {
                        size4--;
                        if (size4 < size3) {
                            break;
                        }
                        list.remove(size4);
                    }
                    throw new NullPointerException(str2);
                }
                list.add(obj2);
            }
        } else {
            list.addAll(iterable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int b(q3 q3Var);

    public final byte[] d() {
        try {
            int k10 = k();
            byte[] bArr = new byte[k10];
            m1 y10 = m1.y(bArr, 0, k10);
            a(y10);
            y10.z();
            return bArr;
        } catch (IOException e10) {
            String name = getClass().getName();
            throw new RuntimeException("Serializing " + name + " to a byte array threw an IOException (should never happen).", e10);
        }
    }
}
