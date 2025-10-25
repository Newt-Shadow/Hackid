package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public abstract class w {

    /* renamed from: a  reason: collision with root package name */
    final List f6857a = new ArrayList();

    public abstract p a(String str, z4 z4Var, List list);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final p b(String str) {
        if (this.f6857a.contains(a6.e(str))) {
            throw new UnsupportedOperationException("Command not implemented: ".concat(String.valueOf(str)));
        }
        throw new IllegalArgumentException("Command not supported");
    }
}
