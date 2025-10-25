package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;
import java.util.Objects;
/* loaded from: classes.dex */
final class r8 extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ u8 f6738a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r8(u8 u8Var, Handler handler) {
        super(null);
        Objects.requireNonNull(u8Var);
        this.f6738a = u8Var;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        this.f6738a.e();
    }
}
