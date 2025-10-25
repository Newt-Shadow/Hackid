package io.appmetrica.analytics.coreapi.internal.data;

import xc.l;
import xc.m;
/* loaded from: classes2.dex */
public interface Parser<IN, OUT> {

    /* loaded from: classes2.dex */
    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static <IN, OUT> OUT parseOrNull(Parser<? super IN, ? extends OUT> parser, IN in) {
            OUT out;
            try {
                l.a aVar = l.f32718b;
                out = (OUT) l.b(parser.parse(in));
            } catch (Throwable th) {
                l.a aVar2 = l.f32718b;
                out = (OUT) l.b(m.a(th));
            }
            if (l.f(out)) {
                return null;
            }
            return out;
        }
    }

    OUT parse(IN in);

    OUT parseOrNull(IN in);
}
