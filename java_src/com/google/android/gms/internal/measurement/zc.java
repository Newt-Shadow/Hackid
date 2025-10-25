package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes.dex */
final class zc implements Iterator {

    /* renamed from: a  reason: collision with root package name */
    private int f6924a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f6925b;

    /* renamed from: c  reason: collision with root package name */
    private Iterator f6926c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ bd f6927d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zc(bd bdVar, byte[] bArr) {
        Objects.requireNonNull(bdVar);
        this.f6927d = bdVar;
        this.f6924a = -1;
    }

    private final Iterator b() {
        if (this.f6926c == null) {
            this.f6926c = this.f6927d.l().entrySet().iterator();
        }
        return this.f6926c;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i10 = this.f6924a + 1;
        bd bdVar = this.f6927d;
        if (i10 < bdVar.k()) {
            return true;
        }
        if (!bdVar.l().isEmpty() && b().hasNext()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        this.f6925b = true;
        int i10 = this.f6924a + 1;
        this.f6924a = i10;
        bd bdVar = this.f6927d;
        if (i10 < bdVar.k()) {
            return (yc) bdVar.j()[i10];
        }
        return (Map.Entry) b().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.f6925b) {
            this.f6925b = false;
            bd bdVar = this.f6927d;
            bdVar.i();
            int i10 = this.f6924a;
            if (i10 < bdVar.k()) {
                this.f6924a = i10 - 1;
                bdVar.h(i10);
                return;
            }
            b().remove();
            return;
        }
        throw new IllegalStateException("remove() was called before next()");
    }
}
