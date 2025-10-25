package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.google.protobuf.nano.ym.MessageNano;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.j6  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0625j6 {

    /* renamed from: a  reason: collision with root package name */
    private final String f12660a;

    /* renamed from: b  reason: collision with root package name */
    private final C0551g6 f12661b;

    /* renamed from: c  reason: collision with root package name */
    private final C0601i6 f12662c;

    /* renamed from: d  reason: collision with root package name */
    private final R7 f12663d;

    public C0625j6(Context context, I3 i32) {
        i32.a();
        this.f12660a = "session_extras";
        this.f12661b = new C0551g6();
        this.f12662c = new C0601i6();
        R7 a10 = C0629ja.a(context).a(i32);
        kotlin.jvm.internal.m.d(a10, "DatabaseStorageFactory.g…Id\") !no-logs*/\n        }");
        this.f12663d = a10;
    }

    public final Map<String, byte[]> a() {
        try {
            byte[] a10 = this.f12663d.a(this.f12660a);
            if (a10 != null) {
                if (!(a10.length == 0)) {
                    C0551g6 c0551g6 = this.f12661b;
                    this.f12662c.getClass();
                    Gf gf2 = (Gf) MessageNano.mergeFrom(new Gf(), a10);
                    kotlin.jvm.internal.m.d(gf2, "SessionExtrasProtobuf.Se…ionExtras.parseFrom(data)");
                    return c0551g6.toModel(gf2);
                }
            }
        } catch (Throwable unused) {
        }
        C0551g6 c0551g62 = this.f12661b;
        this.f12662c.getClass();
        return c0551g62.toModel(new Gf());
    }

    public final void a(Map<String, byte[]> map) {
        R7 r72 = this.f12663d;
        String str = this.f12660a;
        C0601i6 c0601i6 = this.f12662c;
        Gf fromModel = this.f12661b.fromModel(map);
        c0601i6.getClass();
        r72.a(str, MessageNano.toByteArray(fromModel));
    }
}
