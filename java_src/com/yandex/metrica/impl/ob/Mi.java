package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Tl;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class Mi {

    /* renamed from: a  reason: collision with root package name */
    private final C0632jd f10858a;

    /* loaded from: classes2.dex */
    static final class a extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Tl.a f10859a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Tl.a aVar) {
            super(1);
            this.f10859a = aVar;
        }

        @Override // id.l
        public Object invoke(Object obj) {
            return ((C0583hd) ((Map.Entry) obj).getValue()).parse((JSONObject) this.f10859a);
        }
    }

    public Mi() {
        F0 g10 = F0.g();
        kotlin.jvm.internal.m.d(g10, "GlobalServiceLocator.getInstance()");
        C0632jd j10 = g10.j();
        kotlin.jvm.internal.m.d(j10, "GlobalServiceLocator.get…tance().modulesController");
        this.f10858a = j10;
    }

    public final void a(Ui ui, Tl.a aVar) {
        Map<String, C0583hd> c10 = this.f10858a.c();
        a aVar2 = new a(aVar);
        Map<String, Object> linkedHashMap = new LinkedHashMap<>();
        for (Map.Entry<String, C0583hd> entry : c10.entrySet()) {
            Object invoke = aVar2.invoke(entry);
            if (invoke != null) {
                linkedHashMap.put(entry.getKey(), invoke);
            }
        }
        ui.b(linkedHashMap);
    }
}
