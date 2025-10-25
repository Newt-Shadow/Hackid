package xb;

import com.android.billingclient.api.h;
import com.yandex.metrica.impl.ob.C0594i;
import com.yandex.metrica.impl.ob.InterfaceC0618j;
import java.util.Arrays;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
class a implements c2.g {

    /* renamed from: a  reason: collision with root package name */
    private final C0594i f32657a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f32658b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f32659c;

    /* renamed from: d  reason: collision with root package name */
    private final com.android.billingclient.api.d f32660d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC0618j f32661e;

    /* renamed from: f  reason: collision with root package name */
    private final f f32662f;

    /* renamed from: xb.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0370a extends zb.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ h f32663a;

        C0370a(h hVar) {
            this.f32663a = hVar;
        }

        @Override // zb.f
        public void a() {
            a.this.b(this.f32663a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b extends zb.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f32665a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ xb.b f32666b;

        /* renamed from: xb.a$b$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0371a extends zb.f {
            C0371a() {
            }

            @Override // zb.f
            public void a() {
                a.this.f32662f.c(b.this.f32666b);
            }
        }

        b(String str, xb.b bVar) {
            this.f32665a = str;
            this.f32666b = bVar;
        }

        @Override // zb.f
        public void a() {
            if (a.this.f32660d.h()) {
                a.this.f32660d.m(this.f32665a, this.f32666b);
            } else {
                a.this.f32658b.execute(new C0371a());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(C0594i c0594i, Executor executor, Executor executor2, com.android.billingclient.api.d dVar, InterfaceC0618j interfaceC0618j, f fVar) {
        this.f32657a = c0594i;
        this.f32658b = executor;
        this.f32659c = executor2;
        this.f32660d = dVar;
        this.f32661e = interfaceC0618j;
        this.f32662f = fVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(h hVar) {
        if (hVar.b() == 0) {
            for (String str : Arrays.asList("inapp", "subs")) {
                C0594i c0594i = this.f32657a;
                Executor executor = this.f32658b;
                Executor executor2 = this.f32659c;
                com.android.billingclient.api.d dVar = this.f32660d;
                InterfaceC0618j interfaceC0618j = this.f32661e;
                f fVar = this.f32662f;
                xb.b bVar = new xb.b(c0594i, executor, executor2, dVar, interfaceC0618j, str, fVar, new zb.g());
                fVar.b(bVar);
                this.f32659c.execute(new b(str, bVar));
            }
        }
    }

    @Override // c2.g
    public void onBillingServiceDisconnected() {
    }

    @Override // c2.g
    public void onBillingSetupFinished(h hVar) {
        this.f32658b.execute(new C0370a(hVar));
    }
}
