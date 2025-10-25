package ga;

import android.app.Activity;
import fa.e0;
import fa.o0;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import pa.f;
import pa.g;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private Map f16341a = new HashMap();

    public static d k(b bVar, e0 e0Var, Activity activity, o0 o0Var, g gVar) {
        d dVar = new d();
        dVar.l(bVar.d(e0Var, false));
        dVar.m(bVar.h(e0Var));
        dVar.n(bVar.g(e0Var));
        qa.b a10 = bVar.a(e0Var, activity, o0Var);
        dVar.u(a10);
        dVar.o(bVar.c(e0Var, a10));
        dVar.p(bVar.e(e0Var));
        dVar.q(bVar.f(e0Var, a10));
        dVar.r(bVar.b(e0Var));
        dVar.s(bVar.k(e0Var));
        dVar.t(bVar.j(e0Var, gVar, e0Var.t()));
        dVar.v(bVar.i(e0Var));
        return dVar;
    }

    public Collection a() {
        return this.f16341a.values();
    }

    public ha.a b() {
        return (ha.a) this.f16341a.get("AUTO_FOCUS");
    }

    public ia.a c() {
        return (ia.a) this.f16341a.get("EXPOSURE_LOCK");
    }

    public ja.a d() {
        return (ja.a) this.f16341a.get("EXPOSURE_OFFSET");
    }

    public ka.a e() {
        return (ka.a) this.f16341a.get("EXPOSURE_POINT");
    }

    public la.a f() {
        return (la.a) this.f16341a.get("FLASH");
    }

    public ma.a g() {
        return (ma.a) this.f16341a.get("FOCUS_POINT");
    }

    public f h() {
        return (f) this.f16341a.get("RESOLUTION");
    }

    public qa.b i() {
        return (qa.b) this.f16341a.get("SENSOR_ORIENTATION");
    }

    public ra.b j() {
        return (ra.b) this.f16341a.get("ZOOM_LEVEL");
    }

    public void l(ha.a aVar) {
        this.f16341a.put("AUTO_FOCUS", aVar);
    }

    public void m(ia.a aVar) {
        this.f16341a.put("EXPOSURE_LOCK", aVar);
    }

    public void n(ja.a aVar) {
        this.f16341a.put("EXPOSURE_OFFSET", aVar);
    }

    public void o(ka.a aVar) {
        this.f16341a.put("EXPOSURE_POINT", aVar);
    }

    public void p(la.a aVar) {
        this.f16341a.put("FLASH", aVar);
    }

    public void q(ma.a aVar) {
        this.f16341a.put("FOCUS_POINT", aVar);
    }

    public void r(na.a aVar) {
        this.f16341a.put("FPS_RANGE", aVar);
    }

    public void s(oa.a aVar) {
        this.f16341a.put("NOISE_REDUCTION", aVar);
    }

    public void t(f fVar) {
        this.f16341a.put("RESOLUTION", fVar);
    }

    public void u(qa.b bVar) {
        this.f16341a.put("SENSOR_ORIENTATION", bVar);
    }

    public void v(ra.b bVar) {
        this.f16341a.put("ZOOM_LEVEL", bVar);
    }
}
