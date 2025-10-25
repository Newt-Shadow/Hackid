package xd;

import id.Function2;
import java.util.ArrayList;
import td.l0;
import td.m0;
import td.n0;
import td.p0;
import vd.v;
import vd.w;
/* loaded from: classes2.dex */
public abstract class e implements k {

    /* renamed from: a  reason: collision with root package name */
    public final ad.i f32741a;

    /* renamed from: b  reason: collision with root package name */
    public final int f32742b;

    /* renamed from: c  reason: collision with root package name */
    public final vd.a f32743c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f32744a;

        /* renamed from: b  reason: collision with root package name */
        private /* synthetic */ Object f32745b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ wd.e f32746c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ e f32747d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(wd.e eVar, e eVar2, ad.e eVar3) {
            super(2, eVar3);
            this.f32746c = eVar;
            this.f32747d = eVar2;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            a aVar = new a(this.f32746c, this.f32747d, eVar);
            aVar.f32745b = obj;
            return aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f32744a;
            if (i10 != 0) {
                if (i10 == 1) {
                    xc.m.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                xc.m.b(obj);
                wd.e eVar = this.f32746c;
                w i11 = this.f32747d.i((l0) this.f32745b);
                this.f32744a = 1;
                if (wd.f.j(eVar, i11, this) == e10) {
                    return e10;
                }
            }
            return xc.t.f32733a;
        }

        @Override // id.Function2
        public final Object invoke(l0 l0Var, ad.e eVar) {
            return ((a) create(l0Var, eVar)).invokeSuspend(xc.t.f32733a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class b extends kotlin.coroutines.jvm.internal.k implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f32748a;

        /* renamed from: b  reason: collision with root package name */
        /* synthetic */ Object f32749b;

        b(ad.e eVar) {
            super(2, eVar);
        }

        @Override // id.Function2
        /* renamed from: a */
        public final Object invoke(v vVar, ad.e eVar) {
            return ((b) create(vVar, eVar)).invokeSuspend(xc.t.f32733a);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final ad.e create(Object obj, ad.e eVar) {
            b bVar = new b(eVar);
            bVar.f32749b = obj;
            return bVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        public final Object invokeSuspend(Object obj) {
            Object e10;
            e10 = bd.d.e();
            int i10 = this.f32748a;
            if (i10 != 0) {
                if (i10 == 1) {
                    xc.m.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                xc.m.b(obj);
                e eVar = e.this;
                this.f32748a = 1;
                if (eVar.e((v) this.f32749b, this) == e10) {
                    return e10;
                }
            }
            return xc.t.f32733a;
        }
    }

    public e(ad.i iVar, int i10, vd.a aVar) {
        this.f32741a = iVar;
        this.f32742b = i10;
        this.f32743c = aVar;
    }

    static /* synthetic */ Object d(e eVar, wd.e eVar2, ad.e eVar3) {
        Object e10;
        Object d10 = m0.d(new a(eVar2, eVar, null), eVar3);
        e10 = bd.d.e();
        if (d10 == e10) {
            return d10;
        }
        return xc.t.f32733a;
    }

    @Override // xd.k
    public wd.d a(ad.i iVar, int i10, vd.a aVar) {
        ad.i e10 = iVar.e(this.f32741a);
        if (aVar == vd.a.f31354a) {
            int i11 = this.f32742b;
            if (i11 != -3) {
                if (i10 != -3) {
                    if (i11 != -2) {
                        if (i10 != -2 && (i11 = i11 + i10) < 0) {
                            i10 = Integer.MAX_VALUE;
                        }
                    }
                }
                i10 = i11;
            }
            aVar = this.f32743c;
        }
        if (kotlin.jvm.internal.m.a(e10, this.f32741a) && i10 == this.f32742b && aVar == this.f32743c) {
            return this;
        }
        return f(e10, i10, aVar);
    }

    protected String c() {
        return null;
    }

    @Override // wd.d
    public Object collect(wd.e eVar, ad.e eVar2) {
        return d(this, eVar, eVar2);
    }

    protected abstract Object e(v vVar, ad.e eVar);

    protected abstract e f(ad.i iVar, int i10, vd.a aVar);

    public final Function2 g() {
        return new b(null);
    }

    public final int h() {
        int i10 = this.f32742b;
        if (i10 == -3) {
            return -2;
        }
        return i10;
    }

    public w i(l0 l0Var) {
        return vd.t.c(l0Var, this.f32741a, h(), this.f32743c, n0.f30671c, null, g(), 16, null);
    }

    public String toString() {
        String X;
        ArrayList arrayList = new ArrayList(4);
        String c10 = c();
        if (c10 != null) {
            arrayList.add(c10);
        }
        if (this.f32741a != ad.j.f295a) {
            arrayList.add("context=" + this.f32741a);
        }
        if (this.f32742b != -3) {
            arrayList.add("capacity=" + this.f32742b);
        }
        if (this.f32743c != vd.a.f31354a) {
            arrayList.add("onBufferOverflow=" + this.f32743c);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append(p0.a(this));
        sb2.append('[');
        X = yc.w.X(arrayList, ", ", null, null, 0, null, null, 62, null);
        sb2.append(X);
        sb2.append(']');
        return sb2.toString();
    }
}
