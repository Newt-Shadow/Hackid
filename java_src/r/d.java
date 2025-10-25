package r;

import java.util.ConcurrentModificationException;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public abstract class d {
    public static final void a(b bVar, int i10) {
        m.e(bVar, "<this>");
        bVar.r(new int[i10]);
        bVar.p(new Object[i10]);
    }

    public static final int b(b bVar, int i10) {
        m.e(bVar, "<this>");
        try {
            return s.a.a(bVar.l(), bVar.n(), i10);
        } catch (IndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    public static final int c(b bVar, Object obj, int i10) {
        m.e(bVar, "<this>");
        int n10 = bVar.n();
        if (n10 == 0) {
            return -1;
        }
        int b10 = b(bVar, i10);
        if (b10 < 0) {
            return b10;
        }
        if (m.a(obj, bVar.i()[b10])) {
            return b10;
        }
        int i11 = b10 + 1;
        while (i11 < n10 && bVar.l()[i11] == i10) {
            if (m.a(obj, bVar.i()[i11])) {
                return i11;
            }
            i11++;
        }
        for (int i12 = b10 - 1; i12 >= 0 && bVar.l()[i12] == i10; i12--) {
            if (m.a(obj, bVar.i()[i12])) {
                return i12;
            }
        }
        return ~i11;
    }

    public static final int d(b bVar) {
        m.e(bVar, "<this>");
        return c(bVar, null, 0);
    }
}
