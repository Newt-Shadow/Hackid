package com.yandex.metrica.impl.ob;

import com.arthenica.ffmpegkit.Chapter;
import com.yandex.metrica.impl.ob.Jf;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.kh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0661kh {

    /* renamed from: a  reason: collision with root package name */
    private final C0686lh f12750a;

    /* renamed from: b  reason: collision with root package name */
    private final com.yandex.metrica.e f12751b;

    public C0661kh() {
        this(new C0686lh(), C0761oh.a());
    }

    public void a(Jf.e.b bVar) {
        this.f12751b.b("provided_request_result", this.f12750a.a(bVar));
    }

    public void b(Jf.e.a aVar) {
        String th;
        com.yandex.metrica.e eVar = this.f12751b;
        this.f12750a.getClass();
        try {
            th = new JSONObject().put(Chapter.KEY_ID, aVar.f10518a).toString();
        } catch (Throwable th2) {
            th = th2.toString();
        }
        eVar.b("provided_request_send", th);
    }

    C0661kh(C0686lh c0686lh, com.yandex.metrica.e eVar) {
        this.f12750a = c0686lh;
        this.f12751b = eVar;
    }

    public void a(Jf.e.a aVar) {
        String th;
        com.yandex.metrica.e eVar = this.f12751b;
        this.f12750a.getClass();
        try {
            th = new JSONObject().put(Chapter.KEY_ID, aVar.f10518a).toString();
        } catch (Throwable th2) {
            th = th2.toString();
        }
        eVar.b("provided_request_schedule", th);
    }
}
