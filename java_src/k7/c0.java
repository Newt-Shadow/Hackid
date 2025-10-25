package k7;

import k8.a;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c0 implements k8.b, k8.a {

    /* renamed from: c  reason: collision with root package name */
    private static final a.InterfaceC0232a f24799c = new a.InterfaceC0232a() { // from class: k7.z
        @Override // k8.a.InterfaceC0232a
        public final void a(k8.b bVar) {
            c0.f(bVar);
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private static final k8.b f24800d = new k8.b() { // from class: k7.a0
        @Override // k8.b
        public final Object get() {
            Object g10;
            g10 = c0.g();
            return g10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private a.InterfaceC0232a f24801a;

    /* renamed from: b  reason: collision with root package name */
    private volatile k8.b f24802b;

    private c0(a.InterfaceC0232a interfaceC0232a, k8.b bVar) {
        this.f24801a = interfaceC0232a;
        this.f24802b = bVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c0 e() {
        return new c0(f24799c, f24800d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(k8.b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object g() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(a.InterfaceC0232a interfaceC0232a, a.InterfaceC0232a interfaceC0232a2, k8.b bVar) {
        interfaceC0232a.a(bVar);
        interfaceC0232a2.a(bVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static c0 i(k8.b bVar) {
        return new c0(null, bVar);
    }

    @Override // k8.a
    public void a(final a.InterfaceC0232a interfaceC0232a) {
        k8.b bVar;
        k8.b bVar2;
        k8.b bVar3 = this.f24802b;
        k8.b bVar4 = f24800d;
        if (bVar3 != bVar4) {
            interfaceC0232a.a(bVar3);
            return;
        }
        synchronized (this) {
            bVar = this.f24802b;
            if (bVar != bVar4) {
                bVar2 = bVar;
            } else {
                final a.InterfaceC0232a interfaceC0232a2 = this.f24801a;
                this.f24801a = new a.InterfaceC0232a() { // from class: k7.b0
                    @Override // k8.a.InterfaceC0232a
                    public final void a(k8.b bVar5) {
                        c0.h(a.InterfaceC0232a.this, interfaceC0232a, bVar5);
                    }
                };
                bVar2 = null;
            }
        }
        if (bVar2 != null) {
            interfaceC0232a.a(bVar);
        }
    }

    @Override // k8.b
    public Object get() {
        return this.f24802b.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(k8.b bVar) {
        a.InterfaceC0232a interfaceC0232a;
        if (this.f24802b == f24800d) {
            synchronized (this) {
                interfaceC0232a = this.f24801a;
                this.f24801a = null;
                this.f24802b = bVar;
            }
            interfaceC0232a.a(bVar);
            return;
        }
        throw new IllegalStateException("provide() can be called only once.");
    }
}
