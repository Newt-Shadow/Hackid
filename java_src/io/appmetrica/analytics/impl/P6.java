package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.control.DataSendingRestrictionController;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
import java.util.HashSet;
/* loaded from: classes2.dex */
public final class P6 implements DataSendingRestrictionController {

    /* renamed from: a  reason: collision with root package name */
    public final N6 f18761a;

    /* renamed from: b  reason: collision with root package name */
    public Boolean f18762b;

    /* renamed from: c  reason: collision with root package name */
    public final HashSet f18763c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    public final HashSet f18764d = new HashSet();

    public P6(N6 n62) {
        this.f18761a = n62;
        this.f18762b = ((O6) n62).a();
    }

    public final synchronized void a(Boolean bool) {
        if (Rn.a(bool) || this.f18762b == null) {
            Boolean valueOf = Boolean.valueOf(Boolean.FALSE.equals(bool));
            this.f18762b = valueOf;
            N6 n62 = this.f18761a;
            ((O6) n62).f18695a.c(valueOf.booleanValue()).b();
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.control.DataSendingRestrictionController
    public final boolean isRestrictedForBackgroundDataCollection() {
        Boolean bool = this.f18762b;
        if (bool == null) {
            if (this.f18763c.isEmpty() && !this.f18764d.isEmpty()) {
                return false;
            }
            return true;
        }
        return bool.booleanValue();
    }

    @Override // io.appmetrica.analytics.coreapi.internal.control.DataSendingRestrictionController
    public final synchronized boolean isRestrictedForReporter() {
        boolean booleanValue;
        Boolean bool = this.f18762b;
        if (bool == null) {
            if (this.f18764d.isEmpty() && this.f18763c.isEmpty()) {
                booleanValue = true;
            } else {
                booleanValue = false;
            }
        } else {
            booleanValue = bool.booleanValue();
        }
        return booleanValue;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.control.DataSendingRestrictionController
    public final synchronized boolean isRestrictedForSdk() {
        boolean booleanValue;
        Boolean bool = this.f18762b;
        if (bool == null) {
            booleanValue = this.f18764d.isEmpty();
        } else {
            booleanValue = bool.booleanValue();
        }
        return booleanValue;
    }

    public final synchronized void a(String str, Boolean bool) {
        if (Rn.a(bool) || (!this.f18764d.contains(str) && !this.f18763c.contains(str))) {
            if (((Boolean) WrapUtils.getOrDefault(bool, Boolean.TRUE)).booleanValue()) {
                this.f18764d.add(str);
                this.f18763c.remove(str);
            } else {
                this.f18763c.add(str);
                this.f18764d.remove(str);
            }
        }
    }
}
