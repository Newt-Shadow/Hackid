package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.h0;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
class k0 implements j0 {
    private static int i(int i10, Object obj, Object obj2) {
        i0 i0Var = (i0) obj;
        android.support.v4.media.session.b.a(obj2);
        if (i0Var.isEmpty()) {
            return 0;
        }
        Iterator it = i0Var.entrySet().iterator();
        if (!it.hasNext()) {
            return 0;
        }
        Map.Entry entry = (Map.Entry) it.next();
        entry.getKey();
        entry.getValue();
        throw null;
    }

    private static i0 j(Object obj, Object obj2) {
        i0 i0Var = (i0) obj;
        i0 i0Var2 = (i0) obj2;
        if (!i0Var2.isEmpty()) {
            if (!i0Var.k()) {
                i0Var = i0Var.n();
            }
            i0Var.m(i0Var2);
        }
        return i0Var;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j0
    public Object a(Object obj, Object obj2) {
        return j(obj, obj2);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j0
    public Object b(Object obj) {
        ((i0) obj).l();
        return obj;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j0
    public h0.a c(Object obj) {
        android.support.v4.media.session.b.a(obj);
        throw null;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j0
    public Map d(Object obj) {
        return (i0) obj;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j0
    public Object e(Object obj) {
        return i0.e().n();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j0
    public int f(int i10, Object obj, Object obj2) {
        return i(i10, obj, obj2);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j0
    public boolean g(Object obj) {
        return !((i0) obj).k();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j0
    public Map h(Object obj) {
        return (i0) obj;
    }
}
