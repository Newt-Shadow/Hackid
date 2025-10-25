package com.google.firebase.messaging;

import android.content.Intent;
import android.os.Binder;
import android.os.Process;
import android.util.Log;
import com.google.firebase.messaging.p1;
import m6.Task;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m1 extends Binder {

    /* renamed from: a  reason: collision with root package name */
    private final a f8945a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface a {
        Task a(Intent intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m1(a aVar) {
        this.f8945a = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(final p1.a aVar) {
        if (Binder.getCallingUid() == Process.myUid()) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "service received new intent via bind strategy");
            }
            this.f8945a.a(aVar.f8961a).b(new androidx.privacysandbox.ads.adservices.measurement.j(), new m6.f() { // from class: com.google.firebase.messaging.l1
                @Override // m6.f
                public final void onComplete(Task task) {
                    p1.a.this.d();
                }
            });
            return;
        }
        throw new SecurityException("Binding only allowed within app");
    }
}
