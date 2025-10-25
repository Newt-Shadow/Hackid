package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class qc {

    /* renamed from: c  reason: collision with root package name */
    private static final qc f6713c = new qc();

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f6714d = 0;

    /* renamed from: b  reason: collision with root package name */
    private final ConcurrentMap f6716b = new ConcurrentHashMap();

    /* renamed from: a  reason: collision with root package name */
    private final uc f6715a = new zb();

    private qc() {
    }

    public static qc a() {
        return f6713c;
    }

    public final tc b(Class cls) {
        ob.a(cls, "messageType");
        ConcurrentMap concurrentMap = this.f6716b;
        tc tcVar = (tc) concurrentMap.get(cls);
        if (tcVar == null) {
            tcVar = this.f6715a.a(cls);
            ob.a(cls, "messageType");
            tc tcVar2 = (tc) concurrentMap.putIfAbsent(cls, tcVar);
            if (tcVar2 != null) {
                return tcVar2;
            }
        }
        return tcVar;
    }
}
