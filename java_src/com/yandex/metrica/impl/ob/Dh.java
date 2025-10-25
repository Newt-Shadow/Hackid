package com.yandex.metrica.impl.ob;

import android.net.Uri;
import java.net.Socket;
import java.util.HashMap;
import java.util.Set;
/* loaded from: classes2.dex */
public class Dh extends Ah {
    /* JADX INFO: Access modifiers changed from: package-private */
    public Dh(Socket socket, Uri uri, Gh gh, C0488di c0488di, Hh hh) {
        super(socket, uri, gh, c0488di, hh);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.yandex.metrica.impl.ob.Ah
    public void a() {
        Set<String> queryParameterNames = this.f9720d.getQueryParameterNames();
        HashMap hashMap = new HashMap();
        for (String str : queryParameterNames) {
            hashMap.put(str, this.f9720d.getQueryParameter(str));
        }
        hashMap.remove("t");
        a("HTTP/1.1 200 OK", new HashMap(), new byte[0]);
        ((Jh) this.f9718b).a(hashMap, this.f9717a.getLocalPort(), this.f9721e);
    }
}
