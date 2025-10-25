package a8;

import kotlin.jvm.internal.m;
import o0.f;
/* loaded from: classes.dex */
public abstract class c {
    public static final Object a(f fVar, f.a key, Object obj) {
        m.e(fVar, "<this>");
        m.e(key, "key");
        Object b10 = fVar.b(key);
        if (b10 != null) {
            return b10;
        }
        return obj;
    }
}
