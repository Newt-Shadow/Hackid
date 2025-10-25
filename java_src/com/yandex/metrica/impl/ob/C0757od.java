package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.H1;
import com.yandex.metrica.networktasks.api.IExecutionPolicy;
import java.util.EnumSet;
/* renamed from: com.yandex.metrica.impl.ob.od  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0757od implements IExecutionPolicy {

    /* renamed from: c  reason: collision with root package name */
    private static final EnumSet<H1.d> f13072c = EnumSet.of(H1.d.OFFLINE);

    /* renamed from: a  reason: collision with root package name */
    private Rl f13073a = new Ml();

    /* renamed from: b  reason: collision with root package name */
    private final Context f13074b;

    public C0757od(Context context) {
        this.f13074b = context;
    }

    @Override // com.yandex.metrica.networktasks.api.IExecutionPolicy
    public boolean canBeExecuted() {
        Rl rl = this.f13073a;
        Context context = this.f13074b;
        ((Ml) rl).getClass();
        return !f13072c.contains(H1.a(context));
    }
}
