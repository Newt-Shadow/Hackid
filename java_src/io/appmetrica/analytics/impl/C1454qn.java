package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.coreutils.internal.toggle.ConjunctiveCompositeThreadSafeToggle;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.qn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1454qn {

    /* renamed from: a  reason: collision with root package name */
    public final W3 f20458a;

    /* renamed from: b  reason: collision with root package name */
    public final io f20459b;

    /* renamed from: c  reason: collision with root package name */
    public final ConjunctiveCompositeThreadSafeToggle f20460c;

    public C1454qn(Toggle toggle) {
        List k10;
        W3 w32 = new W3(C1665za.j().x());
        this.f20458a = w32;
        io ioVar = new io();
        this.f20459b = ioVar;
        Toggle[] toggleArr = new Toggle[3];
        toggleArr[0] = w32;
        toggleArr[1] = ioVar;
        toggleArr[2] = toggle == null ? new bo() : toggle;
        k10 = yc.o.k(toggleArr);
        this.f20460c = new ConjunctiveCompositeThreadSafeToggle(k10, "loc-def");
    }
}
