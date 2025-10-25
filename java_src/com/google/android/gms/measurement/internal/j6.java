package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
final class j6 implements com.google.android.gms.internal.measurement.wc {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ String f7656a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ o6 f7657b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j6(o6 o6Var, String str) {
        this.f7656a = str;
        Objects.requireNonNull(o6Var);
        this.f7657b = o6Var;
    }

    @Override // com.google.android.gms.internal.measurement.wc
    public final String a(String str) {
        Map map = (Map) this.f7657b.p().get(this.f7656a);
        if (map != null && map.containsKey(str)) {
            return (String) map.get(str);
        }
        return null;
    }
}
