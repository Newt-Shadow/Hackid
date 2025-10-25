package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.Objects;
/* loaded from: classes.dex */
final class m8 extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ o8 f6558a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m8(o8 o8Var, Handler handler) {
        super(null);
        Objects.requireNonNull(o8Var);
        this.f6558a = o8Var;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        this.f6558a.b().set(true);
    }
}
