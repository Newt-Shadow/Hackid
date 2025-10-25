package v1;

import android.content.Context;
import androidx.window.extensions.core.util.function.Consumer;
import androidx.window.extensions.layout.WindowLayoutInfo;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.m;
import t1.j;
import xc.t;
/* loaded from: classes.dex */
public final class g implements c0.a, Consumer {

    /* renamed from: a  reason: collision with root package name */
    private final Context f31168a;

    /* renamed from: b  reason: collision with root package name */
    private final ReentrantLock f31169b;

    /* renamed from: c  reason: collision with root package name */
    private j f31170c;

    /* renamed from: d  reason: collision with root package name */
    private final Set f31171d;

    public g(Context context) {
        m.e(context, "context");
        this.f31168a = context;
        this.f31169b = new ReentrantLock();
        this.f31171d = new LinkedHashSet();
    }

    @Override // c0.a
    /* renamed from: a */
    public void accept(WindowLayoutInfo value) {
        m.e(value, "value");
        ReentrantLock reentrantLock = this.f31169b;
        reentrantLock.lock();
        try {
            this.f31170c = f.f31167a.b(this.f31168a, value);
            for (c0.a aVar : this.f31171d) {
                aVar.accept(this.f31170c);
            }
            t tVar = t.f32733a;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void b(c0.a listener) {
        m.e(listener, "listener");
        ReentrantLock reentrantLock = this.f31169b;
        reentrantLock.lock();
        try {
            j jVar = this.f31170c;
            if (jVar != null) {
                listener.accept(jVar);
            }
            this.f31171d.add(listener);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean c() {
        return this.f31171d.isEmpty();
    }

    public final void d(c0.a listener) {
        m.e(listener, "listener");
        ReentrantLock reentrantLock = this.f31169b;
        reentrantLock.lock();
        try {
            this.f31171d.remove(listener);
        } finally {
            reentrantLock.unlock();
        }
    }
}
