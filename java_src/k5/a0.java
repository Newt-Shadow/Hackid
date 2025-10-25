package k5;

import android.os.Bundle;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class a0 {

    /* renamed from: a  reason: collision with root package name */
    final int f24708a;

    /* renamed from: b  reason: collision with root package name */
    final m6.l f24709b = new m6.l();

    /* renamed from: c  reason: collision with root package name */
    final int f24710c;

    /* renamed from: d  reason: collision with root package name */
    final Bundle f24711d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a0(int i10, int i11, Bundle bundle) {
        this.f24708a = i10;
        this.f24710c = i11;
        this.f24711d = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(Bundle bundle);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean b();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(b0 b0Var) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String obj = toString();
            String obj2 = b0Var.toString();
            Log.d("MessengerIpcClient", "Failing " + obj + " with " + obj2);
        }
        this.f24709b.b(b0Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(Object obj) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            String obj2 = toString();
            String valueOf = String.valueOf(obj);
            Log.d("MessengerIpcClient", "Finishing " + obj2 + " with " + valueOf);
        }
        this.f24709b.c(obj);
    }

    public final String toString() {
        return "Request { what=" + this.f24710c + " id=" + this.f24708a + " oneWay=" + b() + "}";
    }
}
