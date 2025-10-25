package o0;

import af.s0;
import gd.k;
import j0.j0;
import java.io.File;
import java.util.List;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.n;
import td.l0;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final e f26913a = new e();

    /* loaded from: classes.dex */
    static final class a extends n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ id.a f26914e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(id.a aVar) {
            super(0);
            this.f26914e = aVar;
        }

        @Override // id.a
        /* renamed from: b */
        public final s0 invoke() {
            String m10;
            File file = (File) this.f26914e.invoke();
            m10 = k.m(file);
            if (m.a(m10, "preferences_pb")) {
                s0.a aVar = s0.f443b;
                File absoluteFile = file.getAbsoluteFile();
                m.d(absoluteFile, "file.absoluteFile");
                return s0.a.d(aVar, absoluteFile, false, 1, null);
            }
            throw new IllegalStateException(("File extension for file: " + file + " does not match required extension for Preferences file: preferences_pb").toString());
        }
    }

    private e() {
    }

    public final j0.i a(j0 storage, k0.b bVar, List migrations, l0 scope) {
        m.e(storage, "storage");
        m.e(migrations, "migrations");
        m.e(scope, "scope");
        return new d(j0.j.f24037a.b(storage, bVar, migrations, scope));
    }

    public final j0.i b(k0.b bVar, List migrations, l0 scope, id.a produceFile) {
        m.e(migrations, "migrations");
        m.e(scope, "scope");
        m.e(produceFile, "produceFile");
        return new d(a(new l0.d(af.k.f414b, j.f26919a, null, new a(produceFile), 4, null), bVar, migrations, scope));
    }
}
