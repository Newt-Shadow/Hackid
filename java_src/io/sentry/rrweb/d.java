package io.sentry.rrweb;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import io.sentry.util.q;
import org.apache.tika.metadata.ClimateForcast;
/* loaded from: classes2.dex */
public abstract class d extends io.sentry.rrweb.b {

    /* renamed from: c  reason: collision with root package name */
    private b f23580c;

    /* loaded from: classes2.dex */
    public static final class a {
        public boolean a(d dVar, String str, l2 l2Var, ILogger iLogger) {
            if (str.equals(ClimateForcast.SOURCE)) {
                dVar.f23580c = (b) q.c((b) l2Var.u0(iLogger, new b.a()), "");
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    public enum b implements q1 {
        Mutation,
        MouseMove,
        MouseInteraction,
        Scroll,
        ViewportResize,
        Input,
        TouchMove,
        MediaInteraction,
        StyleSheetRule,
        CanvasMutation,
        Font,
        Log,
        Drag,
        StyleDeclaration,
        Selection,
        AdoptedStyleSheet,
        CustomElement;

        /* loaded from: classes2.dex */
        public static final class a implements g1 {
            @Override // io.sentry.g1
            /* renamed from: b */
            public b a(l2 l2Var, ILogger iLogger) {
                return b.values()[l2Var.j0()];
            }
        }

        @Override // io.sentry.q1
        public void serialize(m2 m2Var, ILogger iLogger) {
            m2Var.a(ordinal());
        }
    }

    /* loaded from: classes2.dex */
    public static final class c {
        public void a(d dVar, m2 m2Var, ILogger iLogger) {
            m2Var.k(ClimateForcast.SOURCE).g(iLogger, dVar.f23580c);
        }
    }

    public d(b bVar) {
        super(io.sentry.rrweb.c.IncrementalSnapshot);
        this.f23580c = bVar;
    }
}
