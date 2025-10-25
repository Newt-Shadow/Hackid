package kotlin.jvm.internal;
/* loaded from: classes2.dex */
public class e0 {
    public pd.f a(j jVar) {
        return jVar;
    }

    public pd.c b(Class cls) {
        return new f(cls);
    }

    public pd.e c(Class cls, String str) {
        return new r(cls, str);
    }

    public pd.g d(o oVar) {
        return oVar;
    }

    public pd.h e(s sVar) {
        return sVar;
    }

    public pd.i f(u uVar) {
        return uVar;
    }

    public pd.j g(w wVar) {
        return wVar;
    }

    public String h(i iVar) {
        String obj = iVar.getClass().getGenericInterfaces()[0].toString();
        if (obj.startsWith("kotlin.jvm.functions.")) {
            return obj.substring(21);
        }
        return obj;
    }

    public String i(n nVar) {
        return h(nVar);
    }
}
