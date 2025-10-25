package le;

import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class a extends b {

    /* renamed from: a  reason: collision with root package name */
    private final Map f25537a;

    /* renamed from: b  reason: collision with root package name */
    public final Map f25538b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f25539c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f25540d;

    /* renamed from: e  reason: collision with root package name */
    private final Map f25541e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f25542f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Map class2ContextualFactory, Map polyBase2Serializers, Map polyBase2DefaultSerializerProvider, Map polyBase2NamedSerializers, Map polyBase2DefaultDeserializerProvider, boolean z10) {
        super(null);
        m.e(class2ContextualFactory, "class2ContextualFactory");
        m.e(polyBase2Serializers, "polyBase2Serializers");
        m.e(polyBase2DefaultSerializerProvider, "polyBase2DefaultSerializerProvider");
        m.e(polyBase2NamedSerializers, "polyBase2NamedSerializers");
        m.e(polyBase2DefaultDeserializerProvider, "polyBase2DefaultDeserializerProvider");
        this.f25537a = class2ContextualFactory;
        this.f25538b = polyBase2Serializers;
        this.f25539c = polyBase2DefaultSerializerProvider;
        this.f25540d = polyBase2NamedSerializers;
        this.f25541e = polyBase2DefaultDeserializerProvider;
        this.f25542f = z10;
    }

    @Override // le.b
    public ee.b a(pd.c kClass, List typeArgumentsSerializers) {
        m.e(kClass, "kClass");
        m.e(typeArgumentsSerializers, "typeArgumentsSerializers");
        android.support.v4.media.session.b.a(this.f25537a.get(kClass));
        Object obj = null;
        boolean z10 = obj instanceof ee.b;
        return null;
    }
}
