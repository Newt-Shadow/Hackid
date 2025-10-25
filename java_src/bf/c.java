package bf;

import af.k;
import af.s0;
import java.io.IOException;
import java.util.Iterator;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public abstract class c {
    public static final void a(k kVar, s0 dir, boolean z10) {
        m.e(kVar, "<this>");
        m.e(dir, "dir");
        yc.f fVar = new yc.f();
        for (s0 s0Var = dir; s0Var != null && !kVar.g(s0Var); s0Var = s0Var.o()) {
            fVar.addFirst(s0Var);
        }
        if (z10 && fVar.isEmpty()) {
            throw new IOException(dir + " already exist.");
        }
        Iterator<E> it = fVar.iterator();
        while (it.hasNext()) {
            kVar.c((s0) it.next());
        }
    }

    public static final boolean b(k kVar, s0 path) {
        m.e(kVar, "<this>");
        m.e(path, "path");
        if (kVar.h(path) != null) {
            return true;
        }
        return false;
    }
}
