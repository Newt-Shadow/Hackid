package rb;

import io.flutter.embedding.engine.FlutterEngine;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class p implements ob.a {

    /* renamed from: a  reason: collision with root package name */
    private List f29079a = new ArrayList();

    @Override // ob.a
    public void a(ob.c starter) {
        kotlin.jvm.internal.m.e(starter, "starter");
        for (ob.a aVar : this.f29079a) {
            aVar.a(starter);
        }
    }

    @Override // ob.a
    public void b() {
        for (ob.a aVar : this.f29079a) {
            aVar.b();
        }
    }

    @Override // ob.a
    public void c(FlutterEngine flutterEngine) {
        for (ob.a aVar : this.f29079a) {
            aVar.c(flutterEngine);
        }
    }

    @Override // ob.a
    public void d() {
        for (ob.a aVar : this.f29079a) {
            aVar.d();
        }
    }

    @Override // ob.a
    public void onEngineWillDestroy() {
        for (ob.a aVar : this.f29079a) {
            aVar.onEngineWillDestroy();
        }
    }
}
