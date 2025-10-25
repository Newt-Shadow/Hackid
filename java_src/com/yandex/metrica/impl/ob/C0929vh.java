package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Fh;
import java.io.File;
import java.io.FileInputStream;
import java.net.ServerSocket;
import java.security.KeyStore;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
/* renamed from: com.yandex.metrica.impl.ob.vh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0929vh implements Fh {

    /* renamed from: a  reason: collision with root package name */
    private final File f13837a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0929vh(File file) {
        this.f13837a = file;
    }

    @Override // com.yandex.metrica.impl.ob.Fh
    public ServerSocket a(int i10) {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
            KeyStore keyStore = KeyStore.getInstance("PKCS12");
            keyStore.load(new FileInputStream(this.f13837a), "`0l}%01ny{jl~;|&".toCharArray());
            keyManagerFactory.init(keyStore, "`0l}%01ny{jl~;|&".toCharArray());
            sSLContext.init(keyManagerFactory.getKeyManagers(), null, null);
            return sSLContext.getServerSocketFactory().createServerSocket(i10);
        } catch (Exception e10) {
            throw new Fh.a("https_open_error", e10);
        }
    }
}
