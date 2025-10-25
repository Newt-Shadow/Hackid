package m7;

import android.os.Bundle;
import i7.a;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import k8.a;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final k8.a f25977a;

    /* renamed from: b  reason: collision with root package name */
    private volatile o7.a f25978b;

    /* renamed from: c  reason: collision with root package name */
    private volatile p7.b f25979c;

    /* renamed from: d  reason: collision with root package name */
    private final List f25980d;

    public d(k8.a aVar) {
        this(aVar, new p7.c(), new o7.f());
    }

    private void f() {
        this.f25977a.a(new a.InterfaceC0232a() { // from class: m7.c
            @Override // k8.a.InterfaceC0232a
            public final void a(k8.b bVar) {
                d.this.i(bVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(String str, Bundle bundle) {
        this.f25978b.a(str, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void h(p7.a aVar) {
        synchronized (this) {
            if (this.f25979c instanceof p7.c) {
                this.f25980d.add(aVar);
            }
            this.f25979c.a(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void i(k8.b bVar) {
        n7.g.f().b("AnalyticsConnector now available.");
        i7.a aVar = (i7.a) bVar.get();
        o7.e eVar = new o7.e(aVar);
        e eVar2 = new e();
        if (j(aVar, eVar2) != null) {
            n7.g.f().b("Registered Firebase Analytics listener.");
            o7.d dVar = new o7.d();
            o7.c cVar = new o7.c(eVar, 500, TimeUnit.MILLISECONDS);
            synchronized (this) {
                for (p7.a aVar2 : this.f25980d) {
                    dVar.a(aVar2);
                }
                eVar2.d(dVar);
                eVar2.e(cVar);
                this.f25979c = dVar;
                this.f25978b = cVar;
            }
            return;
        }
        n7.g.f().k("Could not register Firebase Analytics listener; a listener is already registered.");
    }

    private static a.InterfaceC0188a j(i7.a aVar, e eVar) {
        a.InterfaceC0188a a10 = aVar.a("clx", eVar);
        if (a10 == null) {
            n7.g.f().b("Could not register AnalyticsConnectorListener with Crashlytics origin.");
            a10 = aVar.a("crash", eVar);
            if (a10 != null) {
                n7.g.f().k("A new version of the Google Analytics for Firebase SDK is now available. For improved performance and compatibility with Crashlytics, please update to the latest version.");
            }
        }
        return a10;
    }

    public o7.a d() {
        return new o7.a() { // from class: m7.b
            @Override // o7.a
            public final void a(String str, Bundle bundle) {
                d.this.g(str, bundle);
            }
        };
    }

    public p7.b e() {
        return new p7.b() { // from class: m7.a
            @Override // p7.b
            public final void a(p7.a aVar) {
                d.this.h(aVar);
            }
        };
    }

    public d(k8.a aVar, p7.b bVar, o7.a aVar2) {
        this.f25977a = aVar;
        this.f25979c = bVar;
        this.f25980d = new ArrayList();
        this.f25978b = aVar2;
        f();
    }
}
