package u9;

import org.apache.tika.pipes.PipesConfigBase;
/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    private final j9.a f31055a;

    /* renamed from: b  reason: collision with root package name */
    private final s f31056b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(j9.a aVar) {
        this.f31055a = aVar;
        this.f31056b = new s(aVar);
    }

    public static j a(j9.a aVar) {
        if (aVar.c(1)) {
            return new g(aVar);
        }
        if (!aVar.c(2)) {
            return new k(aVar);
        }
        int g10 = s.g(aVar, 1, 4);
        if (g10 != 4) {
            if (g10 != 5) {
                int g11 = s.g(aVar, 1, 5);
                if (g11 != 12) {
                    if (g11 != 13) {
                        switch (s.g(aVar, 1, 7)) {
                            case 56:
                                return new e(aVar, "310", "11");
                            case 57:
                                return new e(aVar, "320", "11");
                            case 58:
                                return new e(aVar, "310", "13");
                            case 59:
                                return new e(aVar, "320", "13");
                            case PipesConfigBase.DEFAULT_STALE_FETCHER_DELAY_SECONDS /* 60 */:
                                return new e(aVar, "310", "15");
                            case 61:
                                return new e(aVar, "320", "15");
                            case 62:
                                return new e(aVar, "310", "17");
                            case 63:
                                return new e(aVar, "320", "17");
                            default:
                                throw new IllegalStateException("unknown decoder: " + aVar);
                        }
                    }
                    return new d(aVar);
                }
                return new c(aVar);
            }
            return new b(aVar);
        }
        return new a(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final s b() {
        return this.f31056b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final j9.a c() {
        return this.f31055a;
    }

    public abstract String d();
}
