package ke;

import java.lang.annotation.Annotation;
/* loaded from: classes2.dex */
public abstract class w {

    /* loaded from: classes2.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f24929a;

        static {
            int[] iArr = new int[je.a.values().length];
            try {
                iArr[je.a.f24595a.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[je.a.f24597c.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[je.a.f24596b.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f24929a = iArr;
        }
    }

    public static final String a(ge.d dVar, je.b json) {
        kotlin.jvm.internal.m.e(dVar, "<this>");
        kotlin.jvm.internal.m.e(json, "json");
        for (Annotation annotation : dVar.getAnnotations()) {
            if (annotation instanceof je.c) {
                return ((je.c) annotation).discriminator();
            }
        }
        return json.c().e();
    }
}
