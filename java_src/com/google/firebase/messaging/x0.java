package com.google.firebase.messaging;

import android.util.Log;
import java.util.Map;
import java.util.concurrent.Executor;
import m6.Task;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class x0 {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f9013a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f9014b = new r.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface a {
        Task start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x0(Executor executor) {
        this.f9013a = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Task c(String str, Task task) {
        synchronized (this) {
            this.f9014b.remove(str);
        }
        return task;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Task b(final String str, a aVar) {
        Task task = (Task) this.f9014b.get(str);
        if (task != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Joining ongoing request for: " + str);
            }
            return task;
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Making new request for: " + str);
        }
        Task i10 = aVar.start().i(this.f9013a, new m6.c() { // from class: com.google.firebase.messaging.w0
            @Override // m6.c
            public final Object a(Task task2) {
                Task c10;
                c10 = x0.this.c(str, task2);
                return c10;
            }
        });
        this.f9014b.put(str, i10);
        return i10;
    }
}
