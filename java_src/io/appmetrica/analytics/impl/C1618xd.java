package io.appmetrica.analytics.impl;

import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.xd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1618xd extends kotlin.jvm.internal.n implements id.l {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1466rb f20933a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1618xd(C1466rb c1466rb) {
        super(1);
        this.f20933a = c1466rb;
    }

    @Override // id.l
    public final Object invoke(Object obj) {
        return ((C1294kd) ((Map.Entry) obj).getValue()).f19966b.parse(this.f20933a);
    }
}
