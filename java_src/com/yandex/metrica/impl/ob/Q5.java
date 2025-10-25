package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.google.protobuf.nano.ym.MessageNano;
/* loaded from: classes2.dex */
public class Q5 {

    /* renamed from: a  reason: collision with root package name */
    private final O5 f11144a;

    /* renamed from: b  reason: collision with root package name */
    private final P5 f11145b;

    /* renamed from: c  reason: collision with root package name */
    private final R7 f11146c;

    public Q5(Context context, I3 i32) {
        this(new P5(), new O5(), C0629ja.a(context).a(i32), "event_hashes");
    }

    public N5 a() {
        try {
            byte[] a10 = this.f11146c.a("event_hashes");
            if (A2.a(a10)) {
                O5 o52 = this.f11144a;
                this.f11145b.getClass();
                return o52.toModel(new Af());
            }
            O5 o53 = this.f11144a;
            this.f11145b.getClass();
            return o53.toModel((Af) MessageNano.mergeFrom(new Af(), a10));
        } catch (Throwable unused) {
            O5 o54 = this.f11144a;
            this.f11145b.getClass();
            return o54.toModel(new Af());
        }
    }

    Q5(P5 p52, O5 o52, R7 r72, String str) {
        this.f11145b = p52;
        this.f11144a = o52;
        this.f11146c = r72;
    }

    public void a(N5 n52) {
        R7 r72 = this.f11146c;
        P5 p52 = this.f11145b;
        Af fromModel = this.f11144a.fromModel(n52);
        p52.getClass();
        r72.a("event_hashes", MessageNano.toByteArray(fromModel));
    }
}
