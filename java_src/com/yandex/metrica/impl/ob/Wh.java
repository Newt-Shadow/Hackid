package com.yandex.metrica.impl.ob;

import com.yandex.metrica.IParamsCallback;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Wh {

    /* renamed from: a  reason: collision with root package name */
    private Xh f11697a = new Xh();

    public final synchronized Xh a() {
        return this.f11697a;
    }

    public final synchronized void a(Xh xh) {
        this.f11697a = xh;
    }

    public final W0 a(String str) {
        Boolean b10;
        String str2;
        Xh xh = this.f11697a;
        if (str.hashCode() == 949037879 && str.equals(IParamsCallback.YANDEX_MOBILE_METRICA_FEATURE_LIB_SSL_ENABLED) && (b10 = xh.b()) != null) {
            boolean booleanValue = b10.booleanValue();
            U0 c10 = xh.c();
            String a10 = xh.a();
            if (booleanValue) {
                str2 = "true";
            } else if (booleanValue) {
                throw new xc.i();
            } else {
                str2 = "false";
            }
            return new W0(str2, c10, a10);
        }
        return null;
    }

    public final synchronized void a(List<String> list, Map<String, W0> map) {
        Boolean b10;
        String str;
        for (String str2 : list) {
            if (str2.hashCode() == 949037879 && str2.equals(IParamsCallback.YANDEX_MOBILE_METRICA_FEATURE_LIB_SSL_ENABLED) && (b10 = this.f11697a.b()) != null) {
                boolean booleanValue = b10.booleanValue();
                U0 c10 = this.f11697a.c();
                String a10 = this.f11697a.a();
                if (booleanValue) {
                    str = "true";
                } else if (booleanValue) {
                    throw new xc.i();
                } else {
                    str = "false";
                }
                map.put(IParamsCallback.YANDEX_MOBILE_METRICA_FEATURE_LIB_SSL_ENABLED, new W0(str, c10, a10));
            }
        }
    }
}
