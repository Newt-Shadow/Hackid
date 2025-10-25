package gd;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import rd.b0;
import yc.o;
import yc.p;
/* loaded from: classes2.dex */
abstract class h {
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001c, code lost:
        r0 = rd.b0.Y(r8, r3, 2, false, 4, null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final int a(java.lang.String r8) {
        /*
            char r1 = java.io.File.separatorChar
            r2 = 0
            r3 = 0
            r4 = 4
            r5 = 0
            r0 = r8
            int r0 = rd.n.Y(r0, r1, r2, r3, r4, r5)
            r1 = 1
            if (r0 != 0) goto L3d
            int r0 = r8.length()
            if (r0 <= r1) goto L3c
            char r0 = r8.charAt(r1)
            char r3 = java.io.File.separatorChar
            if (r0 != r3) goto L3c
            r4 = 2
            r5 = 0
            r6 = 4
            r7 = 0
            r2 = r8
            int r0 = rd.n.Y(r2, r3, r4, r5, r6, r7)
            if (r0 < 0) goto L3c
            char r3 = java.io.File.separatorChar
            int r4 = r0 + 1
            r5 = 0
            r6 = 4
            r7 = 0
            r2 = r8
            int r0 = rd.n.Y(r2, r3, r4, r5, r6, r7)
            if (r0 < 0) goto L37
            int r0 = r0 + r1
            return r0
        L37:
            int r8 = r8.length()
            return r8
        L3c:
            return r1
        L3d:
            r2 = 58
            if (r0 <= 0) goto L4b
            int r3 = r0 + (-1)
            char r3 = r8.charAt(r3)
            if (r3 != r2) goto L4b
            int r0 = r0 + r1
            return r0
        L4b:
            r1 = -1
            r3 = 0
            if (r0 != r1) goto L5c
            r0 = 2
            r1 = 0
            boolean r0 = rd.n.Q(r8, r2, r3, r0, r1)
            if (r0 == 0) goto L5c
            int r8 = r8.length()
            return r8
        L5c:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: gd.h.a(java.lang.String):int");
    }

    public static final boolean b(File file) {
        kotlin.jvm.internal.m.e(file, "<this>");
        String path = file.getPath();
        kotlin.jvm.internal.m.d(path, "getPath(...)");
        if (a(path) > 0) {
            return true;
        }
        return false;
    }

    public static final e c(File file) {
        boolean z10;
        List y02;
        int r10;
        List list;
        kotlin.jvm.internal.m.e(file, "<this>");
        String path = file.getPath();
        kotlin.jvm.internal.m.b(path);
        int a10 = a(path);
        String substring = path.substring(0, a10);
        kotlin.jvm.internal.m.d(substring, "substring(...)");
        String substring2 = path.substring(a10);
        kotlin.jvm.internal.m.d(substring2, "substring(...)");
        if (substring2.length() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            list = o.h();
        } else {
            y02 = b0.y0(substring2, new char[]{File.separatorChar}, false, 0, 6, null);
            List<String> list2 = y02;
            r10 = p.r(list2, 10);
            ArrayList arrayList = new ArrayList(r10);
            for (String str : list2) {
                arrayList.add(new File(str));
            }
            list = arrayList;
        }
        return new e(new File(substring), list);
    }
}
