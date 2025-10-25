package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufStateStorage;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.gh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0562gh {

    /* renamed from: a  reason: collision with root package name */
    private final ProtobufStateStorage f12477a;

    /* renamed from: b  reason: collision with root package name */
    private final C0537fh f12478b;

    /* renamed from: c  reason: collision with root package name */
    private final M0 f12479c;

    public C0562gh(ProtobufStateStorage protobufStateStorage) {
        this(protobufStateStorage, new C0537fh(), C0761oh.a());
    }

    public void a() {
        M0 m02 = this.f12479c;
        C0537fh c0537fh = this.f12478b;
        List<C0587hh> list = ((C0512eh) this.f12477a.read()).f12333a;
        c0537fh.getClass();
        ArrayList arrayList = new ArrayList();
        for (C0587hh c0587hh : list) {
            ArrayList arrayList2 = new ArrayList(c0587hh.f12544b.size());
            for (String str : c0587hh.f12544b) {
                if (C0572h2.a(str)) {
                    arrayList2.add(str);
                }
            }
            if (!arrayList2.isEmpty()) {
                arrayList.add(new C0587hh(c0587hh.f12543a, arrayList2));
            }
        }
        JSONObject jSONObject = new JSONObject();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            C0587hh c0587hh2 = (C0587hh) it.next();
            try {
                jSONObject.put(c0587hh2.f12543a, new JSONObject().put("classes", new JSONArray((Collection) c0587hh2.f12544b)));
            } catch (Throwable unused) {
            }
        }
        m02.reportEvent("sdk_list", jSONObject.toString());
    }

    public C0562gh(ProtobufStateStorage protobufStateStorage, C0537fh c0537fh, M0 m02) {
        this.f12477a = protobufStateStorage;
        this.f12478b = c0537fh;
        this.f12479c = m02;
    }
}
