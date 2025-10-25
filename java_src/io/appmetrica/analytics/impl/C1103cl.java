package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
/* renamed from: io.appmetrica.analytics.impl.cl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1103cl {

    /* renamed from: a  reason: collision with root package name */
    public final Oc f19484a;

    /* renamed from: b  reason: collision with root package name */
    public final Nc f19485b;

    public C1103cl(PublicLogger publicLogger, String str) {
        this(new Oc(str, publicLogger), new Nc(str, publicLogger));
    }

    public final synchronized boolean a(Rc rc2, String str, String str2) {
        int size = rc2.size();
        int i10 = this.f19484a.f18700c.f18074a;
        if (size >= i10 && (i10 != rc2.size() || !rc2.containsKey(str))) {
            Oc oc2 = this.f19484a;
            oc2.f18701d.warning("The %s has reached the limit of %d items. Item with key %s will be ignored", oc2.f18702e, Integer.valueOf(oc2.f18700c.f18074a), str);
            return false;
        }
        this.f19485b.getClass();
        int i11 = rc2.f18885a;
        if (str2 != null) {
            i11 += str2.length();
        }
        if (rc2.containsKey(str)) {
            String str3 = (String) rc2.get(str);
            if (str3 != null) {
                i11 -= str3.length();
            }
        } else {
            i11 += str.length();
        }
        if (i11 > 4500) {
            Nc nc2 = this.f19485b;
            nc2.f18640b.warning("The %s has reached the total size limit that equals %d symbols. Item with key %s will be ignored", nc2.f18639a, 4500, str);
            return false;
        }
        rc2.put(str, str2);
        return true;
    }

    public final boolean b(Rc rc2, String str, String str2) {
        if (rc2 != null) {
            String a10 = this.f19484a.f18698a.a(str);
            String a11 = this.f19484a.f18699b.a(str2);
            if (rc2.containsKey(a10)) {
                String str3 = (String) rc2.get(a10);
                if (a11 == null || !a11.equals(str3)) {
                    return a(rc2, a10, a11);
                }
                return false;
            } else if (a11 != null) {
                return a(rc2, a10, a11);
            } else {
                return false;
            }
        }
        return false;
    }

    public C1103cl(Oc oc2, Nc nc2) {
        this.f19484a = oc2;
        this.f19485b = nc2;
    }
}
