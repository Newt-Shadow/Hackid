package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C0811qi;
import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class X9 implements ProtobufConverter {

    /* renamed from: a  reason: collision with root package name */
    private L9 f11755a = new L9();

    /* renamed from: b  reason: collision with root package name */
    private W9 f11756b = new W9();

    /* renamed from: c  reason: collision with root package name */
    private Q9 f11757c = new Q9();

    /* renamed from: d  reason: collision with root package name */
    private S9 f11758d = new S9();

    /* renamed from: e  reason: collision with root package name */
    private E9 f11759e = new E9();

    /* renamed from: f  reason: collision with root package name */
    private O9 f11760f = new O9();

    /* renamed from: g  reason: collision with root package name */
    private Z9 f11761g = new Z9();

    /* renamed from: h  reason: collision with root package name */
    private U9 f11762h = new U9();

    /* renamed from: i  reason: collision with root package name */
    private J9 f11763i = new J9();

    /* renamed from: j  reason: collision with root package name */
    private C0480da f11764j = new C0480da();

    /* renamed from: k  reason: collision with root package name */
    private C0455ca f11765k = new C0455ca();

    /* renamed from: l  reason: collision with root package name */
    private C0873t9 f11766l = new C0873t9();

    /* renamed from: m  reason: collision with root package name */
    private C0405aa f11767m = new C0405aa();

    /* renamed from: n  reason: collision with root package name */
    private C0945w9 f11768n = new C0945w9();

    /* renamed from: o  reason: collision with root package name */
    private A9 f11769o = new A9();

    /* renamed from: p  reason: collision with root package name */
    private C0849s9 f11770p = new C0849s9();

    /* renamed from: q  reason: collision with root package name */
    private B9 f11771q = new B9();

    /* renamed from: r  reason: collision with root package name */
    private C9 f11772r = new C9();

    /* renamed from: s  reason: collision with root package name */
    private C0993y9 f11773s = new C0993y9();

    /* renamed from: t  reason: collision with root package name */
    private Y9 f11774t = new Y9();

    /* renamed from: u  reason: collision with root package name */
    private N9 f11775u = new N9();

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        C0811qi c0811qi = (C0811qi) obj;
        If r02 = new If();
        r02.C = c0811qi.G;
        r02.D = c0811qi.H;
        r02.f10241l = new If.k[c0811qi.f13407s.size()];
        int i10 = 0;
        int i11 = 0;
        for (C0756oc c0756oc : c0811qi.f13407s) {
            r02.f10241l[i11] = this.f11755a.fromModel(c0756oc);
            i11++;
        }
        String str = c0811qi.f13389a;
        if (str != null) {
            r02.f10230a = str;
        }
        String str2 = c0811qi.f13390b;
        if (str2 != null) {
            r02.f10254y = str2;
        }
        String str3 = c0811qi.f13391c;
        if (str3 != null) {
            r02.f10255z = str3;
        }
        List<String> list = c0811qi.f13398j;
        if (list != null) {
            r02.f10236g = (String[]) list.toArray(new String[list.size()]);
        }
        List<String> list2 = c0811qi.f13399k;
        if (list2 != null) {
            r02.f10237h = (String[]) list2.toArray(new String[list2.size()]);
        }
        List<String> list3 = c0811qi.f13392d;
        if (list3 != null) {
            r02.f10232c = (String[]) list3.toArray(new String[list3.size()]);
        }
        List<String> list4 = c0811qi.f13397i;
        if (list4 != null) {
            r02.f10235f = (String[]) list4.toArray(new String[list4.size()]);
        }
        List<String> list5 = c0811qi.f13400l;
        if (list5 != null) {
            r02.f10249t = (String[]) list5.toArray(new String[list5.size()]);
        }
        List<String> list6 = c0811qi.f13401m;
        if (list6 != null) {
            r02.f10238i = (String[]) list6.toArray(new String[list6.size()]);
        }
        Map<String, List<String>> map = c0811qi.f13402n;
        if (map != null) {
            r02.f10239j = this.f11773s.fromModel(map);
        }
        C0488di c0488di = c0811qi.f13408t;
        if (c0488di != null) {
            r02.f10242m = this.f11756b.fromModel(c0488di);
        }
        C0413ai c0413ai = c0811qi.A;
        if (c0413ai != null) {
            this.f11757c.getClass();
            If.n nVar = new If.n();
            nVar.f10345a = c0413ai.f11982a;
            nVar.f10346b = c0413ai.f11983b;
            r02.F = nVar;
        }
        String str4 = c0811qi.f13403o;
        if (str4 != null) {
            r02.f10244o = str4;
        }
        String str5 = c0811qi.f13393e;
        if (str5 != null) {
            r02.f10233d = str5;
        }
        String str6 = c0811qi.f13394f;
        if (str6 != null) {
            r02.f10234e = str6;
        }
        String str7 = c0811qi.f13395g;
        if (str7 != null) {
            r02.A = str7;
        }
        String str8 = c0811qi.f13396h;
        if (str8 != null) {
            r02.B = str8;
        }
        r02.f10240k = this.f11759e.fromModel(c0811qi.f13406r);
        String str9 = c0811qi.f13404p;
        if (str9 != null) {
            r02.f10245p = str9;
        }
        String str10 = c0811qi.f13405q;
        if (str10 != null) {
            r02.f10246q = str10;
        }
        r02.f10247r = c0811qi.f13411w;
        r02.f10231b = c0811qi.f13409u;
        r02.f10251v = c0811qi.f13410v;
        RetryPolicyConfig retryPolicyConfig = c0811qi.E;
        r02.H = retryPolicyConfig.f14205a;
        r02.I = retryPolicyConfig.f14206b;
        List<C0438bi> list7 = c0811qi.f13412x;
        if (list7 != null) {
            If.o[] oVarArr = new If.o[list7.size()];
            for (C0438bi c0438bi : list7) {
                oVarArr[i10] = this.f11758d.fromModel(c0438bi);
                i10++;
            }
            r02.f10243n = oVarArr;
        }
        String str11 = c0811qi.f13413y;
        if (str11 != null) {
            r02.f10248s = str11;
        }
        List<String> list8 = c0811qi.Q;
        r02.Q = (String[]) list8.toArray(new String[list8.size()]);
        List<Bd> list9 = c0811qi.B;
        if (list9 != null) {
            r02.f10252w = this.f11760f.fromModel(list9);
        }
        C0463ci c0463ci = c0811qi.C;
        if (c0463ci != null) {
            r02.f10253x = this.f11762h.fromModel(c0463ci);
        }
        C0882ti c0882ti = c0811qi.f13414z;
        if (c0882ti != null) {
            this.f11761g.getClass();
            If.s sVar = new If.s();
            sVar.f10372a = c0882ti.f13651a;
            r02.f10250u = sVar;
        }
        r02.E = c0811qi.I;
        Zh zh = c0811qi.D;
        if (zh != null) {
            this.f11763i.getClass();
            If.j jVar = new If.j();
            jVar.f10305a = zh.f11890a;
            r02.G = jVar;
        }
        C0957wl c0957wl = c0811qi.J;
        if (c0957wl != null) {
            r02.J = this.f11764j.fromModel(c0957wl);
        }
        C0591hl c0591hl = c0811qi.K;
        if (c0591hl != null) {
            r02.L = this.f11765k.fromModel(c0591hl);
        }
        C0591hl c0591hl2 = c0811qi.L;
        if (c0591hl2 != null) {
            r02.M = this.f11765k.fromModel(c0591hl2);
        }
        C0591hl c0591hl3 = c0811qi.M;
        if (c0591hl3 != null) {
            r02.K = this.f11765k.fromModel(c0591hl3);
        }
        C0594i c0594i = c0811qi.N;
        if (c0594i != null) {
            this.f11766l.getClass();
            If.b bVar = new If.b();
            bVar.f10261a = c0594i.f12575a;
            bVar.f10262b = c0594i.f12576b;
            r02.R = bVar;
        }
        C0906ui c0906ui = c0811qi.F;
        if (c0906ui != null) {
            r02.N = this.f11767m.fromModel(c0906ui);
        }
        Ph ph = c0811qi.O;
        if (ph != null) {
            r02.O = this.f11768n.fromModel(ph);
        }
        r02.P = this.f11769o.fromModel(c0811qi.P);
        Oh oh = c0811qi.R;
        if (oh != null) {
            r02.S = this.f11770p.fromModel(oh);
        }
        C0936w0 c0936w0 = c0811qi.S;
        if (c0936w0 != null) {
            this.f11771q.getClass();
            If.g gVar = new If.g();
            gVar.f10275a = c0936w0.a();
            r02.U = gVar;
        }
        Uh uh = c0811qi.T;
        if (uh != null) {
            r02.T = this.f11772r.fromModel(uh);
        }
        Y9 y92 = this.f11774t;
        C0858si c0858si = c0811qi.U;
        y92.getClass();
        If.r rVar = new If.r();
        rVar.f10371a = c0858si.a();
        r02.V = rVar;
        r02.W = this.f11775u.fromModel(c0811qi.V);
        return r02;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        If r92 = (If) obj;
        C0811qi.b a10 = new C0811qi.b(this.f11759e.toModel(r92.f10240k)).k(r92.f10230a).c(r92.f10254y).d(r92.f10255z).e(r92.f10244o).f(r92.f10233d).i(Arrays.asList(r92.f10232c)).e(Arrays.asList(r92.f10235f)).b(Arrays.asList(r92.f10237h)).c(Arrays.asList(r92.f10236g)).i(r92.f10234e).j(r92.A).a(r92.B).a(Arrays.asList(r92.f10249t)).g(Arrays.asList(r92.f10238i)).h(r92.f10245p).g(r92.f10246q).c(r92.f10247r).c(r92.f10231b).a(r92.f10251v);
        If.o[] oVarArr = r92.f10243n;
        ArrayList arrayList = new ArrayList(oVarArr.length);
        int i10 = 0;
        for (If.o oVar : oVarArr) {
            arrayList.add(this.f11758d.toModel(oVar));
        }
        C0811qi.b a11 = a10.j(arrayList).b(r92.C).a(r92.D).b(r92.f10248s).b(r92.E).a(new RetryPolicyConfig(r92.H, r92.I)).f(Arrays.asList(r92.Q)).a(this.f11773s.toModel(r92.f10239j));
        if (r92.f10241l != null) {
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                If.k[] kVarArr = r92.f10241l;
                if (i10 >= kVarArr.length) {
                    break;
                }
                arrayList2.add(this.f11755a.toModel(kVarArr[i10]));
                i10++;
            }
            a11.d(arrayList2);
        }
        If.q qVar = r92.f10242m;
        if (qVar != null) {
            a11.a(this.f11756b.toModel(qVar));
        }
        If.n nVar = r92.F;
        if (nVar != null) {
            this.f11757c.getClass();
            a11.a(new C0413ai(nVar.f10345a, nVar.f10346b));
        }
        If.m[] mVarArr = r92.f10252w;
        if (mVarArr != null) {
            a11.h(this.f11760f.toModel(mVarArr));
        }
        If.p pVar = r92.f10253x;
        if (pVar != null) {
            a11.a(this.f11762h.toModel(pVar));
        }
        If.s sVar = r92.f10250u;
        if (sVar != null) {
            a11.a(this.f11761g.toModel(sVar));
        }
        If.j jVar = r92.G;
        if (jVar != null) {
            a11.a(this.f11763i.toModel(jVar));
        }
        If.w wVar = r92.J;
        if (wVar != null) {
            a11.a(this.f11764j.toModel(wVar));
        }
        If.v vVar = r92.L;
        if (vVar != null) {
            a11.b(this.f11765k.toModel(vVar));
        }
        If.v vVar2 = r92.M;
        if (vVar2 != null) {
            a11.c(this.f11765k.toModel(vVar2));
        }
        If.v vVar3 = r92.K;
        if (vVar3 != null) {
            a11.a(this.f11765k.toModel(vVar3));
        }
        If.b bVar = r92.R;
        if (bVar != null) {
            a11.a(this.f11766l.toModel(bVar));
        }
        If.t tVar = r92.N;
        if (tVar != null) {
            a11.a(this.f11767m.toModel(tVar));
        }
        If.c cVar = r92.O;
        if (cVar != null) {
            a11.a(this.f11768n.toModel(cVar));
        }
        If.f fVar = r92.P;
        if (fVar != null) {
            a11.a(this.f11769o.a(fVar));
        }
        If.a aVar = r92.S;
        if (aVar != null) {
            a11.a(this.f11770p.toModel(aVar));
        }
        If.h hVar = r92.T;
        if (hVar != null) {
            a11.a(this.f11772r.toModel(hVar));
        }
        If.g gVar = r92.U;
        if (gVar != null) {
            a11.a(this.f11771q.toModel(gVar));
        }
        If.r rVar = r92.V;
        if (rVar != null) {
            a11.a(this.f11774t.toModel(rVar));
        }
        a11.b(this.f11775u.toModel(r92.W));
        return a11.a();
    }
}
