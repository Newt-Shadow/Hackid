package n5;

import android.util.Log;
import java.util.ArrayList;
/* loaded from: classes.dex */
public abstract class e1 {

    /* renamed from: a  reason: collision with root package name */
    private Object f26289a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f26290b = false;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ c f26291c;

    public e1(c cVar, Object obj) {
        this.f26291c = cVar;
        this.f26289a = obj;
    }

    protected abstract void a(Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void b();

    public final void c() {
        Object obj;
        synchronized (this) {
            obj = this.f26289a;
            if (this.f26290b) {
                String obj2 = toString();
                Log.w("GmsClient", "Callback proxy " + obj2 + " being reused. This is not safe.");
            }
        }
        if (obj != null) {
            a(obj);
        }
        synchronized (this) {
            this.f26290b = true;
        }
        e();
    }

    public final void d() {
        synchronized (this) {
            this.f26289a = null;
        }
    }

    public final void e() {
        ArrayList arrayList;
        ArrayList arrayList2;
        d();
        arrayList = this.f26291c.f26254r;
        synchronized (arrayList) {
            arrayList2 = this.f26291c.f26254r;
            arrayList2.remove(this);
        }
    }
}
