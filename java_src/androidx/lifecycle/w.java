package androidx.lifecycle;

import androidx.lifecycle.b;
import androidx.lifecycle.i;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class w implements k {

    /* renamed from: a  reason: collision with root package name */
    private final Object f3021a;

    /* renamed from: b  reason: collision with root package name */
    private final b.a f3022b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(Object obj) {
        this.f3021a = obj;
        this.f3022b = b.f2937c.c(obj.getClass());
    }

    @Override // androidx.lifecycle.k
    public void a(m mVar, i.a aVar) {
        this.f3022b.a(mVar, aVar, this.f3021a);
    }
}
