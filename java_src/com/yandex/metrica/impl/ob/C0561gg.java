package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.database.Cursor;
import com.yandex.metrica.impl.ob.C0735ng;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.gg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0561gg {

    /* renamed from: a  reason: collision with root package name */
    private final Context f12475a;

    /* renamed from: b  reason: collision with root package name */
    private Cursor f12476b;

    public C0561gg(Context context) {
        this.f12475a = context;
    }

    public void a(InterfaceC0928vg interfaceC0928vg) {
        try {
            try {
                FutureTask futureTask = new FutureTask(new CallableC0536fg(this));
                F0.g().q().a(futureTask).start();
                C0486dg c0486dg = (C0486dg) futureTask.get(5L, TimeUnit.SECONDS);
                A2.a(this.f12476b);
                ((C0735ng.a) interfaceC0928vg).a(c0486dg);
            } finally {
                A2.a(this.f12476b);
            }
        } catch (Throwable unused) {
            C0710mg c0710mg = C0710mg.this;
            C0710mg.a(c0710mg, null, C0710mg.c(c0710mg));
        }
    }
}
