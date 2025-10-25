package e;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.jvm.internal.m;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final Set f15185a = new CopyOnWriteArraySet();

    /* renamed from: b  reason: collision with root package name */
    private volatile Context f15186b;

    public final void a(b listener) {
        m.e(listener, "listener");
        Context context = this.f15186b;
        if (context != null) {
            listener.a(context);
        }
        this.f15185a.add(listener);
    }

    public final void b() {
        this.f15186b = null;
    }

    public final void c(Context context) {
        m.e(context, "context");
        this.f15186b = context;
        for (b bVar : this.f15185a) {
            bVar.a(context);
        }
    }

    public final Context d() {
        return this.f15186b;
    }

    public final void e(b listener) {
        m.e(listener, "listener");
        this.f15185a.remove(listener);
    }
}
