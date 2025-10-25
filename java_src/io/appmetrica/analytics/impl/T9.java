package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.parsing.JsonUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class T9 extends Pg {

    /* renamed from: b  reason: collision with root package name */
    public final U9 f18966b;

    public T9(C1386o5 c1386o5, TimeProvider timeProvider) {
        super(c1386o5);
        this.f18966b = new U9(c1386o5, timeProvider);
    }

    @Override // io.appmetrica.analytics.impl.Pg
    public final boolean a(C1138e6 c1138e6) {
        Long l10;
        long optLong;
        U9 u92 = this.f18966b;
        N9 n92 = u92.f19041a.s().C;
        if (n92 != null) {
            l10 = Long.valueOf(n92.f18638a);
        } else {
            l10 = null;
        }
        if (l10 != null) {
            Cdo cdo = u92.f19041a.f20272t;
            synchronized (cdo) {
                optLong = cdo.f19546a.a().optLong("external_attribution_window_start", -1L);
            }
            if (optLong < 0) {
                optLong = u92.f19042b.currentTimeMillis();
                u92.f19041a.f20272t.a(optLong);
            }
            if (u92.f19042b.currentTimeMillis() - optLong <= l10.longValue()) {
                M9 m92 = (M9) MessageNano.mergeFrom(new M9(), c1138e6.getValueBytes());
                int i10 = m92.f18587a;
                String str = new String(m92.f18588b, rd.d.f29089b);
                String str2 = this.f18966b.f19041a.f20255c.j().get(Integer.valueOf(i10));
                if (str2 != null) {
                    try {
                        if (!(!JsonUtils.isEqualTo(new JSONObject(str), new JSONObject(str2)))) {
                            PublicLogger publicLogger = this.f18787a.f20265m;
                            publicLogger.info("Ignoring attribution of type `" + W9.a(i10) + "` with value `" + str + "` since it is not new", new Object[0]);
                            return true;
                        }
                    } catch (Throwable unused) {
                    }
                }
                U9 u93 = this.f18966b;
                Map<Integer, String> j10 = u93.f19041a.f20255c.j();
                j10.put(Integer.valueOf(i10), str);
                u93.f19041a.f20255c.a(j10);
                PublicLogger publicLogger2 = this.f18787a.f20265m;
                publicLogger2.info("Handling attribution of type `" + W9.a(i10) + '`', new Object[0]);
                return false;
            }
        }
        this.f18787a.f20265m.info("Ignoring attribution since out of collecting interval", new Object[0]);
        return true;
    }
}
