package xc;

import java.io.Serializable;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
final class o implements d, Serializable {

    /* renamed from: a  reason: collision with root package name */
    private id.a f32726a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f32727b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f32728c;

    public o(id.a initializer, Object obj) {
        kotlin.jvm.internal.m.e(initializer, "initializer");
        this.f32726a = initializer;
        this.f32727b = r.f32732a;
        this.f32728c = obj == null ? this : obj;
    }

    @Override // xc.d
    public boolean a() {
        if (this.f32727b != r.f32732a) {
            return true;
        }
        return false;
    }

    @Override // xc.d
    public Object getValue() {
        Object obj;
        Object obj2 = this.f32727b;
        r rVar = r.f32732a;
        if (obj2 != rVar) {
            return obj2;
        }
        synchronized (this.f32728c) {
            obj = this.f32727b;
            if (obj == rVar) {
                id.a aVar = this.f32726a;
                kotlin.jvm.internal.m.b(aVar);
                obj = aVar.invoke();
                this.f32727b = obj;
                this.f32726a = null;
            }
        }
        return obj;
    }

    public String toString() {
        if (a()) {
            return String.valueOf(getValue());
        }
        return "Lazy value not initialized yet.";
    }

    public /* synthetic */ o(id.a aVar, Object obj, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, (i10 & 2) != 0 ? null : obj);
    }
}
