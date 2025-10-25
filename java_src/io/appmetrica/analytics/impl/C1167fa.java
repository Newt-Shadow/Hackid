package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.internal.IdentifiersResult;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.fa  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1167fa {

    /* renamed from: a  reason: collision with root package name */
    public final El f19637a = new El();

    /* renamed from: b  reason: collision with root package name */
    public C1217ha f19638b = new C1217ha();

    public final synchronized void a(C1217ha c1217ha) {
        this.f19638b = c1217ha;
    }

    public final synchronized void a(List list, HashMap hashMap) {
        Boolean bool;
        String str;
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (kotlin.jvm.internal.m.a((String) it.next(), "appmetrica_lib_ssl_enabled") && (bool = this.f19638b.f19730a) != null) {
                boolean booleanValue = bool.booleanValue();
                C1217ha c1217ha = this.f19638b;
                IdentifierStatus identifierStatus = c1217ha.f19731b;
                String str2 = c1217ha.f19732c;
                if (booleanValue) {
                    str = "true";
                } else if (booleanValue) {
                    throw new xc.i();
                } else {
                    str = "false";
                }
                hashMap.put("appmetrica_lib_ssl_enabled", this.f19637a.a(new IdentifiersResult(str, identifierStatus, str2)));
            }
        }
    }
}
