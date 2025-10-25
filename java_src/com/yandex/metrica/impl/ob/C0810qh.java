package com.yandex.metrica.impl.ob;

import android.net.Uri;
import android.util.Base64;
import java.net.Socket;
import java.util.HashMap;
import org.apache.tika.metadata.HttpHeaders;
/* renamed from: com.yandex.metrica.impl.ob.qh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0810qh extends Ah {

    /* renamed from: f  reason: collision with root package name */
    private final String f13387f;

    /* renamed from: com.yandex.metrica.impl.ob.qh$a */
    /* loaded from: classes2.dex */
    class a extends HashMap<String, String> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ byte[] f13388a;

        a(C0810qh c0810qh, byte[] bArr) {
            this.f13388a = bArr;
            put(HttpHeaders.CONTENT_TYPE, "text/plain; charset=utf-8");
            put("Access-Control-Allow-Origin", "*");
            put("Access-Control-Allow-Methods", "GET");
            put(HttpHeaders.CONTENT_LENGTH, String.valueOf(bArr.length));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0810qh(Socket socket, Uri uri, Gh gh, C0488di c0488di, String str, Hh hh) {
        super(socket, uri, gh, c0488di, hh);
        this.f13387f = str;
    }

    @Override // com.yandex.metrica.impl.ob.Ah
    public void a() {
        try {
            byte[] encode = Base64.encode(new C1006ym().a(this.f13387f.getBytes()), 0);
            a("HTTP/1.1 200 OK", new a(this, encode), encode);
        } catch (Throwable unused) {
        }
    }
}
