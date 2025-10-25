package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.firebase.messaging.k0;
import java.util.concurrent.ExecutionException;
import k5.a;
import k5.b;
import m6.n;
/* loaded from: classes.dex */
public final class FirebaseInstanceIdReceiver extends b {
    private static Intent f(Context context, String str, Bundle bundle) {
        return new Intent(str).putExtras(bundle);
    }

    @Override // k5.b
    protected int b(Context context, a aVar) {
        try {
            return ((Integer) n.a(new com.google.firebase.messaging.n(context).k(aVar.g()))).intValue();
        } catch (InterruptedException | ExecutionException e10) {
            Log.e("FirebaseMessaging", "Failed to send message to service.", e10);
            return 500;
        }
    }

    @Override // k5.b
    protected void c(Context context, Bundle bundle) {
        Intent f10 = f(context, "com.google.firebase.messaging.NOTIFICATION_DISMISS", bundle);
        if (k0.E(f10)) {
            k0.v(f10);
        }
    }
}
