package m5;

import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
final class u1 {

    /* renamed from: a  reason: collision with root package name */
    private final Map f25894a = Collections.synchronizedMap(new r.a());

    /* renamed from: b  reason: collision with root package name */
    private int f25895b = 0;

    /* renamed from: c  reason: collision with root package name */
    private Bundle f25896c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final h c(String str, Class cls) {
        return (h) cls.cast(this.f25894a.get(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d(String str, h hVar) {
        if (!this.f25894a.containsKey(str)) {
            this.f25894a.put(str, hVar);
            if (this.f25895b > 0) {
                new c6.f(Looper.getMainLooper()).post(new t1(this, hVar, str));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("LifecycleCallback with tag " + str + " already added to this fragment.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (h hVar : this.f25894a.values()) {
            hVar.a(str, fileDescriptor, printWriter, strArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f(int i10, int i11, Intent intent) {
        for (h hVar : this.f25894a.values()) {
            hVar.e(i10, i11, intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void g(Bundle bundle) {
        Bundle bundle2;
        this.f25895b = 1;
        this.f25896c = bundle;
        for (Map.Entry entry : this.f25894a.entrySet()) {
            h hVar = (h) entry.getValue();
            if (bundle != null) {
                bundle2 = bundle.getBundle((String) entry.getKey());
            } else {
                bundle2 = null;
            }
            hVar.f(bundle2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void h() {
        this.f25895b = 5;
        for (h hVar : this.f25894a.values()) {
            hVar.g();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i() {
        this.f25895b = 3;
        for (h hVar : this.f25894a.values()) {
            hVar.h();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void j(Bundle bundle) {
        if (bundle != null) {
            for (Map.Entry entry : this.f25894a.entrySet()) {
                Bundle bundle2 = new Bundle();
                ((h) entry.getValue()).i(bundle2);
                bundle.putBundle((String) entry.getKey(), bundle2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k() {
        this.f25895b = 2;
        for (h hVar : this.f25894a.values()) {
            hVar.j();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l() {
        this.f25895b = 4;
        for (h hVar : this.f25894a.values()) {
            hVar.k();
        }
    }
}
