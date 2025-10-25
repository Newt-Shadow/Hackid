package com.google.android.gms.internal.measurement;

import java.util.List;
import org.apache.tika.mime.MimeTypesReaderMetKeys;
/* loaded from: classes.dex */
public final class vg extends j {

    /* renamed from: c  reason: collision with root package name */
    private final zg f6856c;

    public vg(zg zgVar) {
        super("internal.registerCallback");
        this.f6856c = zgVar;
    }

    @Override // com.google.android.gms.internal.measurement.j
    public final p a(z4 z4Var, List list) {
        int i10;
        a6.a(this.f6443a, 3, list);
        String f10 = z4Var.a((p) list.get(0)).f();
        p a10 = z4Var.a((p) list.get(1));
        if (a10 instanceof o) {
            p a11 = z4Var.a((p) list.get(2));
            if (a11 instanceof m) {
                m mVar = (m) a11;
                if (mVar.o("type")) {
                    String f11 = mVar.l("type").f();
                    if (mVar.o(MimeTypesReaderMetKeys.MAGIC_PRIORITY_ATTR)) {
                        i10 = a6.g(mVar.l(MimeTypesReaderMetKeys.MAGIC_PRIORITY_ATTR).g().doubleValue());
                    } else {
                        i10 = 1000;
                    }
                    this.f6856c.a(f10, i10, (o) a10, f11);
                    return p.f6622j0;
                }
                throw new IllegalArgumentException("Undefined rule type");
            }
            throw new IllegalArgumentException("Invalid callback params");
        }
        throw new IllegalArgumentException("Invalid callback type");
    }
}
