package io.appmetrica.analytics.networktasks.internal;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.network.internal.Response;
import io.appmetrica.analytics.networktasks.impl.a;
import java.util.List;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2.dex */
public class CacheControlHttpsConnectionPerformer {

    /* renamed from: a  reason: collision with root package name */
    private final a f21264a;

    /* renamed from: b  reason: collision with root package name */
    private final SSLSocketFactory f21265b;

    /* loaded from: classes2.dex */
    public interface Client {
        String getOldETag();

        void onError();

        void onNotModified();

        void onResponse(String str, byte[] bArr);
    }

    public CacheControlHttpsConnectionPerformer(SSLSocketFactory sSLSocketFactory) {
        this(new a(), sSLSocketFactory);
    }

    public void performConnection(String str, Client client) {
        Response a10;
        int code;
        try {
            a aVar = this.f21264a;
            String oldETag = client.getOldETag();
            SSLSocketFactory sSLSocketFactory = this.f21265b;
            aVar.getClass();
            a10 = a.a(oldETag, str, sSLSocketFactory);
            code = a10.getCode();
        } catch (Throwable unused) {
        }
        if (code != 200) {
            if (code == 304) {
                client.onNotModified();
                return;
            } else {
                client.onError();
                return;
            }
        }
        List list = (List) CollectionUtils.getFromMapIgnoreCase(a10.getHeaders(), "ETag");
        client.onResponse((list == null || list.size() <= 0 || (r0 = (String) list.get(0)) == null) ? "" : "", a10.getResponseData());
    }

    CacheControlHttpsConnectionPerformer(a aVar, SSLSocketFactory sSLSocketFactory) {
        this.f21264a = aVar;
        this.f21265b = sSLSocketFactory;
    }
}
