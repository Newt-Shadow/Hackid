package vb;

import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class c extends vb.a {

    /* renamed from: a  reason: collision with root package name */
    final Map f31332a;

    /* renamed from: b  reason: collision with root package name */
    final a f31333b = new a();

    /* renamed from: c  reason: collision with root package name */
    final boolean f31334c;

    /* loaded from: classes.dex */
    public class a implements f {

        /* renamed from: a  reason: collision with root package name */
        Object f31335a;

        /* renamed from: b  reason: collision with root package name */
        String f31336b;

        /* renamed from: c  reason: collision with root package name */
        String f31337c;

        /* renamed from: d  reason: collision with root package name */
        Object f31338d;

        public a() {
        }

        @Override // vb.f
        public void error(String str, String str2, Object obj) {
            this.f31336b = str;
            this.f31337c = str2;
            this.f31338d = obj;
        }

        @Override // vb.f
        public void success(Object obj) {
            this.f31335a = obj;
        }
    }

    public c(Map map, boolean z10) {
        this.f31332a = map;
        this.f31334c = z10;
    }

    @Override // vb.e
    public Object a(String str) {
        return this.f31332a.get(str);
    }

    @Override // vb.b, vb.e
    public boolean c() {
        return this.f31334c;
    }

    @Override // vb.e
    public String f() {
        return (String) this.f31332a.get(Constants.METHOD);
    }

    @Override // vb.e
    public boolean g(String str) {
        return this.f31332a.containsKey(str);
    }

    @Override // vb.a
    public f m() {
        return this.f31333b;
    }

    public Map n() {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        hashMap2.put("code", this.f31333b.f31336b);
        hashMap2.put("message", this.f31333b.f31337c);
        hashMap2.put("data", this.f31333b.f31338d);
        hashMap.put("error", hashMap2);
        return hashMap;
    }

    public Map o() {
        HashMap hashMap = new HashMap();
        hashMap.put("result", this.f31333b.f31335a);
        return hashMap;
    }

    public void p(MethodChannel.Result result) {
        a aVar = this.f31333b;
        result.error(aVar.f31336b, aVar.f31337c, aVar.f31338d);
    }

    public void q(List list) {
        if (!c()) {
            list.add(n());
        }
    }

    public void r(List list) {
        if (!c()) {
            list.add(o());
        }
    }
}
