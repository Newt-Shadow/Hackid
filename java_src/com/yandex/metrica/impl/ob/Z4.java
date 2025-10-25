package com.yandex.metrica.impl.ob;

import android.content.pm.FeatureInfo;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.yandex.metrica.impl.ob.AbstractC0827rb;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Z4 extends X4 {

    /* renamed from: b  reason: collision with root package name */
    private final C0717mn f11857b;

    public Z4(L3 l32) {
        this(l32, new C0717mn());
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C0445c0 c0445c0) {
        L3 a10 = a();
        if (a10.x().k() && a10.C()) {
            C0454c9 f10 = a10.f();
            String g10 = a().f().g();
            HashSet hashSet = null;
            if (!TextUtils.isEmpty(g10)) {
                try {
                    HashSet hashSet2 = new HashSet();
                    JSONArray jSONArray = new JSONArray(g10);
                    for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                        hashSet2.add(new C0851sb(jSONArray.getJSONObject(i10)));
                    }
                    hashSet = hashSet2;
                } catch (Throwable unused) {
                }
            }
            ArrayList<C0851sb> b10 = b();
            if (C0419b.a(hashSet, b10)) {
                a10.y();
            } else {
                JSONArray jSONArray2 = new JSONArray();
                Iterator<C0851sb> it = b10.iterator();
                while (it.hasNext()) {
                    jSONArray2.put(it.next().a());
                }
                a10.r().c(C0445c0.a(c0445c0, new JSONObject().put("features", jSONArray2).toString()));
                f10.h(jSONArray2.toString());
            }
        }
        return false;
    }

    ArrayList<C0851sb> b() {
        AbstractC0827rb bVar;
        FeatureInfo[] featureInfoArr;
        try {
            L3 a10 = a();
            PackageInfo b10 = this.f11857b.b(a10.g(), a10.g().getPackageName(), 16384);
            ArrayList<C0851sb> arrayList = new ArrayList<>();
            if (A2.a(24)) {
                bVar = new AbstractC0827rb.a();
            } else {
                bVar = new AbstractC0827rb.b();
            }
            if (b10 != null && (featureInfoArr = b10.reqFeatures) != null) {
                for (FeatureInfo featureInfo : featureInfoArr) {
                    arrayList.add(bVar.a(featureInfo));
                }
            }
            return arrayList;
        } catch (Throwable unused) {
            return null;
        }
    }

    public Z4(L3 l32, C0717mn c0717mn) {
        super(l32);
        this.f11857b = c0717mn;
    }
}
