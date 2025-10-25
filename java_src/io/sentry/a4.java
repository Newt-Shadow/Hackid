package io.sentry;

import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class a4 {

    /* renamed from: a  reason: collision with root package name */
    private final b4 f22004a;

    /* renamed from: b  reason: collision with root package name */
    private final Iterable f22005b;

    public a4(b4 b4Var, Iterable iterable) {
        this.f22004a = (b4) io.sentry.util.q.c(b4Var, "SentryEnvelopeHeader is required.");
        this.f22005b = (Iterable) io.sentry.util.q.c(iterable, "SentryEnvelope items are required.");
    }

    public static a4 a(y0 y0Var, f6 f6Var, io.sentry.protocol.p pVar) {
        io.sentry.util.q.c(y0Var, "Serializer is required.");
        io.sentry.util.q.c(f6Var, "session is required.");
        return new a4(null, pVar, x4.C(y0Var, f6Var));
    }

    public b4 b() {
        return this.f22004a;
    }

    public Iterable c() {
        return this.f22005b;
    }

    public a4(io.sentry.protocol.r rVar, io.sentry.protocol.p pVar, x4 x4Var) {
        io.sentry.util.q.c(x4Var, "SentryEnvelopeItem is required.");
        this.f22004a = new b4(rVar, pVar);
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(x4Var);
        this.f22005b = arrayList;
    }
}
