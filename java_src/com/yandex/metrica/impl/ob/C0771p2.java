package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Ui;
import com.yandex.metrica.networktasks.api.NetworkResponseHandler;
import com.yandex.metrica.networktasks.api.ResponseDataHolder;
import java.util.List;
import java.util.Map;
import org.apache.tika.metadata.HttpHeaders;
/* renamed from: com.yandex.metrica.impl.ob.p2  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0771p2 implements NetworkResponseHandler {

    /* renamed from: a  reason: collision with root package name */
    private final Ti f13101a;

    /* renamed from: b  reason: collision with root package name */
    private final C0921v9 f13102b;

    public C0771p2() {
        this(new Ti(), new C0921v9());
    }

    @Override // com.yandex.metrica.networktasks.api.NetworkResponseHandler
    public Object handle(ResponseDataHolder responseDataHolder) {
        List list;
        if (200 != responseDataHolder.a()) {
            return null;
        }
        byte[] b10 = responseDataHolder.b();
        Map c10 = responseDataHolder.c();
        if (c10 != null) {
            list = (List) c10.get(HttpHeaders.CONTENT_ENCODING);
        } else {
            list = null;
        }
        if (!A2.b(list) && "encrypted".equals(list.get(0))) {
            b10 = this.f13102b.a(responseDataHolder.b(), "hBnBQbZrmjPXEWVJ");
        }
        if (b10 == null) {
            return null;
        }
        Ui a10 = this.f13101a.a(b10);
        if (Ui.a.OK != a10.A()) {
            return null;
        }
        return a10;
    }

    C0771p2(Ti ti, C0921v9 c0921v9) {
        this.f13101a = ti;
        this.f13102b = c0921v9;
    }
}
