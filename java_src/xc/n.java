package xc;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
final class n implements d, Serializable {

    /* renamed from: d  reason: collision with root package name */
    public static final a f32721d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private static final AtomicReferenceFieldUpdater f32722e = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "b");

    /* renamed from: a  reason: collision with root package name */
    private volatile id.a f32723a;

    /* renamed from: b  reason: collision with root package name */
    private volatile Object f32724b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f32725c;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public n(id.a initializer) {
        kotlin.jvm.internal.m.e(initializer, "initializer");
        this.f32723a = initializer;
        r rVar = r.f32732a;
        this.f32724b = rVar;
        this.f32725c = rVar;
    }

    @Override // xc.d
    public boolean a() {
        if (this.f32724b != r.f32732a) {
            return true;
        }
        return false;
    }

    @Override // xc.d
    public Object getValue() {
        Object obj = this.f32724b;
        r rVar = r.f32732a;
        if (obj != rVar) {
            return obj;
        }
        id.a aVar = this.f32723a;
        if (aVar != null) {
            Object invoke = aVar.invoke();
            if (androidx.concurrent.futures.b.a(f32722e, this, rVar, invoke)) {
                this.f32723a = null;
                return invoke;
            }
        }
        return this.f32724b;
    }

    public String toString() {
        if (a()) {
            return String.valueOf(getValue());
        }
        return "Lazy value not initialized yet.";
    }
}
