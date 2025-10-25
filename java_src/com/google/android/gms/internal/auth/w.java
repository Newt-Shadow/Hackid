package com.google.android.gms.internal.auth;

import android.database.ContentObserver;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class w extends ContentObserver {
    /* JADX INFO: Access modifiers changed from: package-private */
    public w(x xVar, Handler handler) {
        super(null);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        m0.c();
    }
}
