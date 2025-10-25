package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrash;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashHandler;
import io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashSource;
import java.io.File;
import java.util.List;
/* loaded from: classes2.dex */
public final class Nd implements NativeCrashHandler {

    /* renamed from: a  reason: collision with root package name */
    public final Ug f18641a;

    /* renamed from: b  reason: collision with root package name */
    public final id.l f18642b;

    public Nd(Ug ug, id.l lVar) {
        this.f18641a = ug;
        this.f18642b = lVar;
    }

    public static final void a(Nd nd2, NativeCrash nativeCrash, File file) {
        nd2.f18642b.invoke(nativeCrash.getUuid());
    }

    public static final void b(Nd nd2, NativeCrash nativeCrash, File file) {
        nd2.f18642b.invoke(nativeCrash.getUuid());
    }

    @Override // io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashHandler
    public final void newCrash(final NativeCrash nativeCrash) {
        C1580w0 c1580w0;
        try {
            NativeCrashSource source = nativeCrash.getSource();
            String handlerVersion = nativeCrash.getHandlerVersion();
            String uuid = nativeCrash.getUuid();
            String dumpFile = nativeCrash.getDumpFile();
            long creationTime = nativeCrash.getCreationTime();
            C1605x0 a10 = C1630y0.a(nativeCrash.getMetadata());
            kotlin.jvm.internal.m.b(a10);
            c1580w0 = new C1580w0(source, handlerVersion, uuid, dumpFile, creationTime, a10);
        } catch (Throwable unused) {
            c1580w0 = null;
        }
        if (c1580w0 != null) {
            Ug ug = this.f18641a;
            Consumer consumer = new Consumer() { // from class: io.appmetrica.analytics.impl.cp
                @Override // io.appmetrica.analytics.coreapi.internal.backport.Consumer
                public final void consume(Object obj) {
                    Nd.a(Nd.this, nativeCrash, (File) obj);
                }
            };
            ug.getClass();
            ug.a(c1580w0, consumer, new Rg(c1580w0));
            return;
        }
        this.f18642b.invoke(nativeCrash.getUuid());
    }

    public final void a(List<NativeCrash> list) {
        C1580w0 c1580w0;
        for (final NativeCrash nativeCrash : list) {
            try {
                NativeCrashSource source = nativeCrash.getSource();
                String handlerVersion = nativeCrash.getHandlerVersion();
                String uuid = nativeCrash.getUuid();
                String dumpFile = nativeCrash.getDumpFile();
                long creationTime = nativeCrash.getCreationTime();
                C1605x0 a10 = C1630y0.a(nativeCrash.getMetadata());
                kotlin.jvm.internal.m.b(a10);
                c1580w0 = new C1580w0(source, handlerVersion, uuid, dumpFile, creationTime, a10);
            } catch (Throwable unused) {
                c1580w0 = null;
            }
            if (c1580w0 != null) {
                Ug ug = this.f18641a;
                Consumer consumer = new Consumer() { // from class: io.appmetrica.analytics.impl.bp
                    @Override // io.appmetrica.analytics.coreapi.internal.backport.Consumer
                    public final void consume(Object obj) {
                        Nd.b(Nd.this, nativeCrash, (File) obj);
                    }
                };
                ug.getClass();
                ug.a(c1580w0, consumer, new Sg(c1580w0));
            } else {
                this.f18642b.invoke(nativeCrash.getUuid());
            }
        }
    }
}
