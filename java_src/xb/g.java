package xb;

import android.content.Context;
import com.yandex.metrica.impl.ob.C0594i;
import com.yandex.metrica.impl.ob.InterfaceC0618j;
import com.yandex.metrica.impl.ob.InterfaceC0643k;
import com.yandex.metrica.impl.ob.InterfaceC0668l;
import com.yandex.metrica.impl.ob.InterfaceC0693m;
import com.yandex.metrica.impl.ob.InterfaceC0743o;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public class g implements InterfaceC0643k, InterfaceC0618j {

    /* renamed from: a  reason: collision with root package name */
    private final Context f32701a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f32702b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f32703c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC0668l f32704d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC0743o f32705e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC0693m f32706f;

    /* renamed from: g  reason: collision with root package name */
    private C0594i f32707g;

    /* loaded from: classes.dex */
    class a extends zb.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0594i f32708a;

        a(C0594i c0594i) {
            this.f32708a = c0594i;
        }

        @Override // zb.f
        public void a() {
            com.android.billingclient.api.d a10 = com.android.billingclient.api.d.j(g.this.f32701a).e(new c()).c().a();
            a10.r(new xb.a(this.f32708a, g.this.f32702b, g.this.f32703c, a10, g.this, new f(a10)));
        }
    }

    public g(Context context, Executor executor, Executor executor2, InterfaceC0668l interfaceC0668l, InterfaceC0743o interfaceC0743o, InterfaceC0693m interfaceC0693m) {
        this.f32701a = context;
        this.f32702b = executor;
        this.f32703c = executor2;
        this.f32704d = interfaceC0668l;
        this.f32705e = interfaceC0743o;
        this.f32706f = interfaceC0693m;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0618j
    public Executor c() {
        return this.f32703c;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0618j
    public InterfaceC0668l e() {
        return this.f32704d;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0618j
    public InterfaceC0743o f() {
        return this.f32705e;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0643k
    public synchronized void a(C0594i c0594i) {
        this.f32707g = c0594i;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0643k
    public void b() {
        C0594i c0594i = this.f32707g;
        if (c0594i != null) {
            this.f32703c.execute(new a(c0594i));
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0618j
    public InterfaceC0693m d() {
        return this.f32706f;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0618j
    public Executor a() {
        return this.f32702b;
    }
}
