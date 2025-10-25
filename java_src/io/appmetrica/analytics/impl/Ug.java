package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.backport.Function;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import java.io.File;
/* loaded from: classes2.dex */
public final class Ug {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19062a;

    /* renamed from: b  reason: collision with root package name */
    public final ICommonExecutor f19063b;

    /* renamed from: c  reason: collision with root package name */
    public final C1484s4 f19064c;

    /* renamed from: d  reason: collision with root package name */
    public final C1341ma f19065d;

    public Ug(Context context, C1484s4 c1484s4, IHandlerExecutor iHandlerExecutor, C1341ma c1341ma) {
        this.f19062a = context;
        this.f19063b = iHandlerExecutor;
        this.f19064c = c1484s4;
        this.f19065d = c1341ma;
    }

    public final void a(C1580w0 c1580w0, Consumer consumer, Function function) {
        ICommonExecutor iCommonExecutor = this.f19063b;
        C1341ma c1341ma = this.f19065d;
        String str = c1580w0.f20842d;
        c1341ma.getClass();
        iCommonExecutor.execute(new Pf(new File(str), new Kd(new Ld(c1580w0.f20839a, c1580w0.f20840b), new Jd()), consumer, new Tg(this, c1580w0.f20844f, function)));
    }
}
