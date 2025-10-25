package kotlin.jvm.internal;

import java.io.Serializable;
import java.lang.annotation.Annotation;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public abstract class d implements pd.b, Serializable {
    public static final Object NO_RECEIVER = a.f24972a;
    private final boolean isTopLevel;
    private final String name;
    private final Class owner;
    protected final Object receiver;
    private transient pd.b reflected;
    private final String signature;

    /* loaded from: classes2.dex */
    private static class a implements Serializable {

        /* renamed from: a  reason: collision with root package name */
        private static final a f24972a = new a();

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public d(Object obj, Class cls, String str, String str2, boolean z10) {
        this.receiver = obj;
        this.owner = cls;
        this.name = str;
        this.signature = str2;
        this.isTopLevel = z10;
    }

    @Override // pd.b
    public Object call(Object... objArr) {
        return getReflected().call(objArr);
    }

    @Override // pd.b
    public Object callBy(Map map) {
        return getReflected().callBy(map);
    }

    public pd.b compute() {
        pd.b bVar = this.reflected;
        if (bVar == null) {
            pd.b computeReflected = computeReflected();
            this.reflected = computeReflected;
            return computeReflected;
        }
        return bVar;
    }

    protected abstract pd.b computeReflected();

    @Override // pd.a
    public List<Annotation> getAnnotations() {
        return getReflected().getAnnotations();
    }

    public Object getBoundReceiver() {
        return this.receiver;
    }

    @Override // pd.b
    public String getName() {
        return this.name;
    }

    public pd.e getOwner() {
        Class cls = this.owner;
        if (cls == null) {
            return null;
        }
        if (this.isTopLevel) {
            return d0.c(cls);
        }
        return d0.b(cls);
    }

    @Override // pd.b
    public List<Object> getParameters() {
        return getReflected().getParameters();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public pd.b getReflected() {
        pd.b compute = compute();
        if (compute != this) {
            return compute;
        }
        throw new hd.b();
    }

    @Override // pd.b
    public pd.l getReturnType() {
        getReflected().getReturnType();
        return null;
    }

    public String getSignature() {
        return this.signature;
    }

    @Override // pd.b
    public List<Object> getTypeParameters() {
        return getReflected().getTypeParameters();
    }

    @Override // pd.b
    public pd.m getVisibility() {
        return getReflected().getVisibility();
    }

    @Override // pd.b
    public boolean isAbstract() {
        return getReflected().isAbstract();
    }

    @Override // pd.b
    public boolean isFinal() {
        return getReflected().isFinal();
    }

    @Override // pd.b
    public boolean isOpen() {
        return getReflected().isOpen();
    }
}
