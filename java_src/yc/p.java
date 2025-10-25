package yc;

import java.util.Collection;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class p extends o {
    public static int r(Iterable iterable, int i10) {
        kotlin.jvm.internal.m.e(iterable, "<this>");
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return i10;
    }
}
